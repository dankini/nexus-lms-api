# Nexus API — Implementation Roadmap

**Version:** 1.0  
**Date:** 31/03/2026  
**Spec baseline:** v0.11.0  
**Purpose:** Personal learning project and PoC — realistic mock through to AI-scaffolded server  

---

## Context and goals

This is a side project running in parallel to the main design work. Two goals, equal weight:

1. **Personal capability building** — hands-on experience with modern API implementation practices: spec-driven development, contract validation, AI-assisted scaffolding
2. **PoC artefact** — a running, validatable implementation that demonstrates the v0.11.0 spec is coherent and buildable, useful for stakeholder confidence and engineering handover

The target is a realistic mock that validates the contract — not a production system, not connected to Busuu's backend. Hardcoded-but-realistic data is fine. The spec is the source of truth throughout.

---

## Spec baseline: v0.11.0 summary

**14 endpoints across 5 domains:**

| Domain | Endpoints |
|---|---|
| Auth | `POST /auth/token` |
| Users | `GET /users`, `GET /users/{institutionUserId}` |
| Courses | `GET /courses`, `GET /courses/{id}` |
| Progress | `GET /progress`, `GET /users/{institutionUserId}/progress` |
| Live Lessons | `GET /live-lessons`, `GET /users/{institutionUserId}/live-lessons`, `GET /live-lessons-detailed`, `GET /users/{institutionUserId}/live-lessons-detailed` |
| Certificates | `GET /certificates`, `GET /users/{institutionUserId}/certificates` |
| Utilities | `GET /utilities/health` |

**27 schemas:** User, Course, Provider, Localisation, LocalisedCourse, Progress, ProgressWithoutInstitutionUserId, LiveLessonLean, LiveLessonLeanWithoutInstitutionUserId, LiveLesson, LiveLessonWithoutInstitutionUserId, LiveLessonSummary, Certificate, CertificateWithoutInstitutionUserId, CertificateSummary, UserContext, plus response wrappers and parameter schemas.

**Key v0.11.0 design decision:** Live lessons split into lean and detailed paths. Lean endpoints (`/live-lessons`, `/users/{id}/live-lessons`) return minimal rows + pagination only. Detailed endpoints (`/live-lessons-detailed`, `/users/{id}/live-lessons-detailed`) add `type`, `level`, and aggregated `summary` stats. This duality needs to be reflected in both mock data and any server implementation.

---

## Toolchain

| Tool | Role | Why |
|---|---|---|
| **Spectral** | Spec linter | Validates the spec itself against OpenAPI rules before anything else runs; first gate on any spec change |
| **Prism CLI** | Spec-driven mock server + validation proxy | Reads YAML directly, enforces contract strictly, surfaces spec inconsistencies |
| **Postman** | Test harness, collection runner, scenario building | Already in use; integrates well with both Prism and FastAPI |
| **Newman** | CLI test runner | Runs Postman collections from terminal, enables repeatable test suites |
| **Cursor** | AI-assisted code scaffolding | Generates FastAPI server from spec; readable output without needing to write from scratch |
| **FastAPI (Python)** | Lightweight real server | Spec-native, generates OpenAPI automatically, Python is readable at "can follow but not write" level |
| **Uvicorn** | ASGI server | Runs FastAPI locally; one-line startup |

All free. All Mac-compatible. All terminal-driven after initial setup.

**Toolchain order for any spec change:** Spectral (lint the spec) → Prism (validate behaviour) → Postman/Newman (validate business scenarios).

---

## Phase 1 — Prism mock from v0.11.0 spec

**Goal:** A locally running mock server that returns spec-compliant responses for all 14 endpoints.  
**Estimated time:** 1 session (~1–2 hours including verification)  
**Output:** Prism running, all endpoints responding, first exposure to spec gaps

### What Prism does

Prism reads the OpenAPI YAML and generates a mock server from it. It uses the `example` values defined in the spec to construct responses. Crucially, it validates incoming requests against the spec too — wrong query parameters, missing headers, malformed auth all get rejected with spec-correct error responses.

This is stricter than Postman Mock, which just returns whatever example you give it without checking the request. That strictness is the point — it surfaces issues that a human reviewer might miss.

### Setup steps

```bash
# Install Node.js if not present (check first)
node --version

# Install Prism globally
npm install -g @stoplight/prism-cli

# Verify
prism --version

# Navigate to your YAML directory (wherever you keep the spec)
cd /path/to/your/yaml

# Start mock server
prism mock Nexus_Core_API_v0_11_0.yml

# Prism starts on http://localhost:4010 by default
```

### Verification sequence

Once running, test each domain in order:

```bash
# Health check (no auth required — confirms server is alive)
curl http://localhost:4010/utilities/health

# Auth token (POST)
curl -X POST http://localhost:4010/auth/token \
  -H "Content-Type: application/json" \
  -d '{"client_id":"test","client_secret":"test","grant_type":"client_credentials"}'

# Users list (with Bearer token — use any string, Prism validates format not value)
curl http://localhost:4010/users \
  -H "Authorization: Bearer test-token"

# User detail
curl http://localhost:4010/users/u-001 \
  -H "Authorization: Bearer test-token"

# Courses
curl http://localhost:4010/courses \
  -H "Authorization: Bearer test-token"

# Progress
curl http://localhost:4010/progress \
  -H "Authorization: Bearer test-token"

# Live lessons — lean
curl http://localhost:4010/live-lessons \
  -H "Authorization: Bearer test-token"

# Live lessons — detailed
curl http://localhost:4010/live-lessons-detailed \
  -H "Authorization: Bearer test-token"

# Certificates
curl http://localhost:4010/certificates \
  -H "Authorization: Bearer test-token"
```

### What to watch for

Prism will flag issues in the terminal output:
- Missing examples on responses → Prism returns a generated response but warns
- Example values that don't match schema type constraints → Prism rejects or warns
- Required fields absent from examples → Prism warns or returns incomplete response

Log every warning. These are spec gaps, not Prism bugs. They inform Phase 2 and any v0.12.0 spec work.

---

## Phase 2 — Postman test suite against the mock

**Goal:** A Postman collection that validates real business scenarios against the Prism mock — not just status codes, but shape, types, required fields, and business logic.  
**Estimated time:** 1–2 sessions  
**Output:** Reusable test suite; Newman-runnable from terminal; spec gap log

### Why this phase matters

Calling an endpoint and getting a 200 is not validation. Validation means asserting:
- Response envelope matches expected structure (`data`, `pagination` keys present)
- Required schema fields are present and non-null
- Field types are correct (string is a string, not a number)
- Enum values are within the defined set
- Pagination metadata is mathematically coherent
- Filter parameters actually affect the response
- Lean vs detailed endpoint responses are structurally distinct

This is where SDD thinking becomes practical: the test suite is the contract enforcement layer.

### Postman collection structure

Build the collection in this order — each group adds complexity:

**Group 1: Smoke tests**
- Health check returns `{"status":"healthy"}`
- Auth token returns `access_token` field
- All list endpoints return 200 with auth header

**Group 2: Schema validation**
For each endpoint, assert required fields present and correctly typed. Example for `/users`:
```javascript
// Postman Tests tab
pm.test("Response has data array", () => {
    const json = pm.response.json();
    pm.expect(json).to.have.property('data');
    pm.expect(json.data).to.be.an('array');
});

pm.test("User has required fields", () => {
    const user = pm.response.json().data[0];
    pm.expect(user).to.have.property('institutionUserId');
    pm.expect(user).to.have.property('email');
    pm.expect(user).to.have.property('status');
    pm.expect(user.status).to.be.oneOf(['active', 'inactive', 'removed']);
});
```

**Group 3: Filter validation**
- `GET /progress?institutionUserId=u-001` → response contains only that user's records
- `GET /live-lessons?status=scheduled` → response contains only scheduled lessons
- `GET /courses?language=French` → response filtered correctly

**Group 4: Lean vs detailed distinction**
- `GET /live-lessons` response does NOT contain `type`, `level`, or `summary`
- `GET /live-lessons-detailed` response DOES contain `summary` with status totals
- User-scoped versions add `user` context object

**Group 5: Error scenarios**
- Missing auth header → 401
- Non-existent resource ID → 404
- Invalid query parameter value → 400 (if spec defines validation)

### Running via Newman (CLI)

```bash
# Install Newman
npm install -g newman

# Export collection from Postman as JSON
# Then run:
newman run Nexus_API_Tests.json \
  --env-var "base_url=http://localhost:4010" \
  --env-var "token=test-token"
```

This gives you a repeatable, scriptable test run. The output tells you exactly which assertions pass and fail.

---

## Phase 3 — AI-scaffolded FastAPI server

**Goal:** A real running Python server with route handlers for all 14 endpoints, returning hardcoded-but-realistic data. No Busuu backend, no database. The spec drives structure; Cursor generates the code.  
**Estimated time:** 2–3 sessions  
**Output:** Working local server; real HTTP responses; basis for Phase 4

### Why FastAPI

- **Spec-native:** FastAPI generates an OpenAPI spec from your code automatically. You end up with two specs — the hand-designed one (v0.11.0 YAML) and the server-generated one — and you can diff them. Gaps become visible.
- **Pydantic models:** FastAPI uses Pydantic for data validation, which maps cleanly to OpenAPI schemas. The schema definitions in your YAML translate almost directly to Pydantic model classes.
- **Readable Python:** Even without writing Python yourself, FastAPI code is readable. Route handlers look like this:

```python
@app.get("/users", response_model=UserListResponse)
def list_users(status: Optional[str] = None, page: int = 1, limit: int = 20):
    # returns hardcoded data filtered by params
    ...
```

You can read that, understand it, and ask Cursor to modify it.

### Cursor workflow

The approach is prompt-driven scaffolding, not writing code:

1. Open Cursor with the v0.11.0 YAML in the project folder
2. Use Composer (Agent mode) with prompts like:

> "Read the OpenAPI spec in `Nexus_Core_API_v0_11_0.yml`. Generate a FastAPI application with route handlers for all endpoints. Use Pydantic models derived from the schema definitions. Return hardcoded example data that matches the spec examples. Include proper HTTP status codes and error responses."

3. Review what Cursor generates — read it, don't just run it
4. Iterate: "The `/live-lessons-detailed` endpoint is missing the `summary` object in the response. Fix it to include status totals across the dataset."
5. Run the server, hit it with your Postman collection

### Local server setup

```bash
# Create project folder
mkdir nexus-api-poc
cd nexus-api-poc

# Python virtual environment (keeps dependencies isolated)
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install fastapi uvicorn pydantic

# Run server (once Cursor has generated main.py)
uvicorn main:app --reload --port 8000

# Server available at http://localhost:8000
# Auto-generated docs at http://localhost:8000/docs
```

The `--reload` flag means the server restarts automatically when you save changes — important for iterative work with Cursor.

### What realistic hardcoded data looks like

The goal is data that a connector developer would find believable — not `"name": "Test User"` but something that exercises the schema properly:

```python
USERS = [
    {
        "institutionUserId": "emp-001",
        "email": "anna.schmidt@acme-corp.com",
        "firstName": "Anna",
        "lastName": "Schmidt",
        "status": "active",
        "registeredAt": "2024-03-15T09:00:00Z",
        "expiresAt": "2025-03-15T09:00:00Z",
        "department": "Engineering",
        "country": "DE"
    },
    ...
]
```

Cursor can generate this bulk data from the spec examples. Ask it to: "Generate 10 realistic User records matching the User schema in the spec. Use plausible enterprise user data — real-looking names, corporate email domains, varied departments and countries."

---

## Phase 4 — Prism as validation proxy (optional)

**Goal:** Prism sits in front of the FastAPI server, validating every request and response against the spec. The spec becomes a hard enforced contract.  
**Estimated time:** 1 session  
**Prerequisite:** Phase 3 complete and stable  
**Output:** True SDD environment — spec violations surface as errors, not silent drift

### How proxy mode works

Instead of Prism generating mock responses, it forwards requests to a real server and validates the responses against the spec before returning them to the caller.

```bash
# FastAPI running on port 8000
# Prism proxy on port 4010, forwarding to FastAPI

prism proxy Nexus_Core_API_v0_11_0.yml http://localhost:8000 --port 4010
```

Any response from FastAPI that doesn't match the spec — wrong field names, missing required fields, incorrect types — gets flagged. Prism can be configured to warn or to hard-fail.

This is what spec-as-contract means in practice. The YAML is no longer documentation; it's the test runner.

### Value for the PoC

Running your Phase 2 Newman test suite against the Phase 4 proxy gives you a complete validation loop:
- Postman collection tests business scenarios
- Prism proxy validates contract compliance
- FastAPI serves real (hardcoded) responses
- Any gap between spec and implementation surfaces immediately

That's a demonstrable SDD environment — useful both as a learning outcome and as an engineering handover artefact.

---

## Session structure

Each phase maps to a session (or two for Phase 3). Suggested approach:

| Session | Phase | Deliverable |
|---|---|---|
| 1 | Phase 1 | Prism running; all 14 endpoints responding; gap log |
| 2 | Phase 2 | Postman collection; smoke tests + schema validation passing |
| 3 | Phase 2 cont. | Filter validation + lean vs detailed distinction tests |
| 4 | Phase 3 | Cursor-scaffolded FastAPI server running; Postman collection passing against it |
| 5 | Phase 3 cont. | Realistic data refinement; spec diff review |
| 6 | Phase 4 (optional) | Prism proxy running; Newman suite passing end-to-end |

Sessions can be taken in order or paused — each phase produces a usable artefact independently.

---

## Risks and mitigations

| Risk | Likelihood | Mitigation |
|---|---|---|
| Spec has gaps that Prism surfaces in Phase 1 | High — expected | Log gaps; fix in spec (v0.12.0 candidates); don't block on them |
| Cursor generates code that doesn't run | Medium | Iterative prompting; read error output back to Cursor; ask it to fix |
| FastAPI auto-generated spec diverges from hand-designed spec | High — expected | Use divergence as learning signal; document differences |
| Phase 3 scope creeps into "real" implementation | Medium | Stay disciplined: hardcoded data only, no database, no auth logic |

---

## Reference

**Spec location:** SwaggerHub + project files (`Nexus_Core_API_v0_11_0.yml`)  
**Prior mocking work:** API Mocking Strategy Guide (v0.4.0, November 2025) — covers Postman Mock vs Prism comparison; superseded for this project by the Prism-first approach above  
**Tools:**
- Prism: https://stoplight.io/open-source/prism
- FastAPI: https://fastapi.tiangolo.com
- Newman: https://github.com/postmanlabs/newman
- Cursor: https://cursor.com
