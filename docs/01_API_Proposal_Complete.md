# API Proposal - Complete Documentation

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7371259906/API+Proposal

**Export Date:** January 2026

---

## Table of Contents

### Main Documentation Pages

- [📁 API Proposal](#api-proposal)
  - [Executive Summary](#executive-summary)
  - [Document Structure](#document-structure)
  - [Contents Summary](#contents-summary)
  - [Key Strengths](#key-strengths)
  - [Critical Areas for Improvement](#critical-areas-for-improvement)
  - [Recommendations by Priority](#recommendations-by-priority)
  - [Positive Observations](#positive-observations)
  - [Next Steps](#next-steps)
  - [Conclusion](#conclusion)
- [🚩 Consumers & Use Cases](#consumers--use-cases)
- [📐 LMS Platform Analysis & Inspiration](#lms-platform-analysis--inspiration)
  - [📚 Core Coverage Analysis: Course Asset Management](#core-coverage-analysis-course-asset-management)
  - [🏁 Core Coverage Analysis: Progress & Completion Management](#core-coverage-analysis-progress--completion-management)
  - [⚙️ Core API Structure Recommendation](#core-api-structure-recommendation)
  - [🏅 Certificates](#certificates)
  - [🚀 Beyond the LMS Connector Usecase](#beyond-the-lms-connector-usecase)
- [📋 Integrations Request Log](#integration-request-log)
- [🏁 Status & 2026 Planning](#status--2026-planning)
- [🔌 Third-Party Solutions - StackOne](#third-party-solutions---stackone)

---

<a id="api-proposal"></a>
# 📁 API Proposal

<a id="executive-summary"></a>
## Executive Summary

This comprehensive API proposal makes a compelling case for replacing Busuu's underperforming LMS API with a new public-facing solution. The document demonstrates strong strategic thinking, thorough competitive analysis, and appropriate scope discipline. However, it requires additional technical planning before implementation can begin.

**Overall Assessment: 8/10** ⭐⭐⭐⭐

**Readiness: 70%** - Strong foundation, needs technical architecture and implementation planning.

---

<a id="document-structure"></a>
## Document Structure

### Main Components:

* **Parent Page:** Vision, business case, and objectives
* **13 Child Pages** including:

    * Consumers & Use Cases
    * LMS Platform Analysis (with 8 competitor deep-dives)
    * Course Asset Management
    * Progress & Completion Management
    * Certificates
    * API Planning: MVP (with Cursor AI)
    * Supporting files and presentations
    
---

<a id="contents-summary"></a>
## Contents Summary

### The Business Case

**Problem:** Current API has low adoption due to:

* Limited functionality
* Restricted data scope (only self-paced learning)
* Inconsistent progress measurement
* Data discrepancies across endpoints
* Insufficient documentation
* Lack of industry standards alignment

**Solution:** New API serving three strategic purposes:

1. Foundation for LMS connector development
2. Standalone API for direct client access
3. Reseller user management capabilities

### User-Centric Approach

**Four Consumer Types Identified:**

* **Client-users:** Admins, LMS systems, analysts
* **Resellers:** Partners managing multiple client organisations
* **Partnerships:** Mobile telco collaborations, marketplaces
* **Busuu-maintainers:** Internal integrations team

**Prioritized Use Cases:**

* 🟢 High Priority: Authentication, user data, hierarchy, learning progress (6 sub-categories), course content
* 🟡 Medium Priority: Licensing, engagement, user management, registration

### Competitive Intelligence

Detailed analysis of 5 major LMS platforms:

* 360 Learning
* Degreed
* Cornerstone
* SAP SuccessFactors
* Workday Learning

Includes mapping tables for course management, completions, progress, and certificates across all platforms.

### MVP Scope (Defined)

**~25 Endpoints:**

* ~20 read operations (primary focus)
* ~5 write operations (user/subscription management)

**Core Functionality:**

* Authentication (OAuth 2.0)
* User profile retrieval
* Hierarchy structure access
* Learning progress tracking (placement tests, ongoing/completed progress, certificates, live lessons, learning hours)
* Course content metadata

**Explicitly Excluded from MVP:**

* Full course management CRUD
* License/credit usage tracking
* Engagement analytics
* User registration flows

---

<a id="key-strengths"></a>
## Key Strengths

### 1. Clear Strategic Vision ✅

The business case is compelling and well-articulated. The connection to enterprise sales enablement provides strong justification for investment.

### 2. Rigorous User Research ✅

Excellent consumer identification and use case mapping. The priority matrix (High/Medium with current state indicators) is particularly effective.

### 3. Thorough Competitive Analysis ✅

The LMS platform benchmarking with detailed mapping tables demonstrates professional market research. The "finding overlaps" approach to maximize compatibility is strategically sound.

### 4. Disciplined Scoping ✅

The MVP planning session (with Cursor AI) shows excellent scope management, reducing a comprehensive vision to a focused, deliverable first release.

### 5. Technical Specificity ✅

Detailed metadata specifications with data schemas, format examples, and gap analysis show strong technical thinking.

### 6. Honest Gap Analysis ✅

Transparent about current limitations (🔴 No, 🟡 Partial indicators) and areas requiring further investigation.

---

<a id="critical-areas-for-improvement"></a>
## Critical Areas for Improvement

### 1. Architecture & Technical Foundation ⚠️

**Missing:**

* System architecture diagrams
* Data flow specifications
* Database schema design
* Detailed authentication implementation (OAuth 2.0 mentioned but not specified)
* API versioning strategy
* Comprehensive error handling taxonomy
* Rate limiting specifications

**Impact:** High - Cannot begin implementation without these.

**Recommendation:** Create separate technical design document with architecture diagrams and OpenAPI 3.1 specification.

### 2. Data Consistency Strategy ⚠️

**Issue:** Inconsistencies acknowledged but not resolved:

* Course naming: `pack_level_en_a1` vs `70646b78-e70c-4314-85c0-c5d96e250917` vs `pack_level_en_fashionretail`
* User identification: `userId` vs `id` vs `userEmail` confusion
* Progress measurement across learning modes

**Impact:** High - Will cause integration problems and technical debt.

**Recommendation:** Establish data governance plan with standardisation roadmap before MVP begins.

### 3. Success Metrics & Validation ⚠️

**Missing:**

* Measurable success criteria (e.g., X% reduction in integration time, Y% increase in adoption)
* Client validation plan
* Testing strategy with actual consumers
* Performance benchmarks

**Impact:** Medium - Risk of building the wrong thing or not knowing when you've succeeded.

**Recommendation:** Define 3-5 KPIs and establish validation checkpoints with pilot clients.

### 4. Implementation Roadmap ⚠️

**Missing:**

* Timeline and milestones
* Resource allocation and team structure
* Dependencies and risks
* Post-MVP evolution plan (V1, V2 features)

**Impact:** Medium - Difficult to manage expectations and allocate resources.

**Recommendation:** Create Gantt chart or roadmap with quarterly milestones through end of 2026.

### 5. Developer Experience Details 📝

**Underdeveloped:**

* Interactive documentation approach (Swagger UI mentioned but not designed)
* SDK strategy and language support
* Onboarding flow for new API consumers
* Actual API call/response examples (only schemas provided)

**Impact:** Medium - Affects adoption and time-to-integration.

**Recommendation:** Create developer portal mockups and example integration guides.

### 6. Course Management Decision 📝

**Issue:** Manual course uploads deemed acceptable for MVP, but downsides listed:

* More manual work and coordination
* Must maintain per-client content lists
* Increased error risk
* May appear "half-baked" to clients

**Impact:** Low for MVP, Medium long-term.

**Recommendation:** Set clear trigger conditions for automating (e.g., "if we exceed 20 active clients" or "if we enter LMS marketplace").

### 7. Standards Compliance 📝

**Gap:** Claims current API lacks standards compliance but doesn't explicitly commit to specific eLearning standards for new API.

**Question:** Will you support SCORM? xAPI (Tin Can)? LTI 1.3?

**Impact:** Low - Can be addressed in detailed design.

**Recommendation:** Explicitly state which standards will be supported in MVP vs future phases.

### 8. API Governance 📝

**Missing:**

* Long-term ownership model
* Process for adding endpoints post-MVP
* Deprecation policy
* Breaking change management

**Impact:** Low for MVP, High long-term.

**Recommendation:** Establish API governance framework document before V1 release.

---

<a id="recommendations-by-priority"></a>
## Recommendations by Priority

### 🔴 Critical (Block MVP Start)

1. **Create Technical Architecture Document**

    * System architecture diagrams
    * Data flow specifications
    * Database schema design
    * OpenAPI 3.1 specification
    
2. **Establish Data Governance Plan**

    * Standardise course identifiers
    * Resolve user identification approach
    * Define data consistency rules
    
3. **Define Success Metrics**

    * 3-5 measurable KPIs
    * Client validation approach
    

### 🟡 High Priority (Needed Before MVP Completion)

4. **Develop Implementation Roadmap**

    * Timeline with milestones
    * Resource allocation
    * Risk register
    
5. **Specify Authentication Details**

    * OAuth 2.0 flows and scopes
    * API key fallback mechanism
    * Rate limiting rules
    
6. **Create Error Handling Standards**

    * HTTP status code mapping
    * Error response format
    * Error code taxonomy
    

### 🟢 Medium Priority (Can Be Parallel or Post-MVP)

7. **Design Developer Experience**

    * Interactive documentation
    * SDK roadmap
    * Integration examples
    
8. **Document API Governance**

    * Ownership and decision-making
    * Change management process
    * Deprecation policy
    
9. **Establish Standards Compliance**

    * Explicitly commit to eLearning standards
    * Certification roadmap if applicable
    

---

<a id="positive-observations"></a>
## Positive Observations

### MVP Planning Session Quality

The "API Planning: MVP (with Cursor AI)" page demonstrates excellent collaborative analysis. The AI-assisted approach helped:

* Systematically identify gaps
* Prioritize ruthlessly
* Avoid feature creep
* Focus on implementable scope

**Recommendation:** Continue this systematic, AI-assisted approach for detailed design phase.

### User Type Segmentation

The clear separation between read operations (client-users) and write operations (partner-resellers) will help with:

* Permission modeling
* Rate limiting strategies
* Feature sequencing

### Transparency on Complexity

The document doesn't shy away from complexity, particularly around:

* Language support (learning language vs interface language)
* Difficulty ratings (different scales for different LMSs)
* SSO requirements and templating

This honesty will serve the team well in implementation.

---

<a id="next-steps"></a>
## Next Steps

### Immediate Actions (Week 1-2)

1. **Create Architecture Team** - Assign technical architects to design system
2. **Start OpenAPI Specification** - Begin detailed endpoint definitions
3. **Establish Data Standards** - Resolve naming and identification inconsistencies
4. **Define Success Metrics** - Work with sales/partnerships to set KPIs

### Short-Term Actions (Week 3-8)

5. **Build Technical Design Document** - Complete architecture, data flows, schemas
6. **Develop MVP Roadmap** - Timeline, resources, milestones through Q2 2026
7. **Create Developer Portal Plan** - UX design for documentation and onboarding
8. **Identify Pilot Clients** - 2-3 clients for validation testing

### Medium-Term Actions (Months 3-6)

9. **Implement MVP** - Build and test core functionality
10. **Establish Governance** - API ownership, change management, deprecation policy
11. **Prepare V1 Roadmap** - Plan post-MVP features based on pilot feedback

---

<a id="conclusion"></a>
## Conclusion

This is a **well-researched, strategically sound proposal** that successfully makes the case for a new API. The user-centric approach, competitive analysis, and scope discipline are particularly impressive.

The document provides an excellent **strategic foundation** but requires **technical planning depth** before implementation can begin. The identified gaps are typical for a proposal document and can be addressed through focused architecture and design work.

**Key Success Factor:** Maintain the systematic, user-focused approach demonstrated in this proposal through the technical design and implementation phases. The Cursor AI collaboration model shows promise for maintaining rigor and focus.

**Risk Management:** The main risk is attempting to start implementation without resolving data consistency issues and architecture design. Addressing the critical recommendations above will significantly increase probability of successful delivery.

**Timeline Estimate:** With proper planning, MVP could be delivered in 4-6 months after addressing critical gaps (estimated 4-6 weeks of design work before development starts).

---

**Document Value Score: 8/10**

* Strategic Vision: 9/10
* User Research: 9/10
* Competitive Analysis: 9/10
* Technical Specificity: 7/10
* Implementation Readiness: 6/10

**Overall Recommendation:** ✅ **APPROVE with conditions** - Proceed to detailed technical design phase, addressing critical gaps before MVP implementation begins.

---

<a id="consumers--use-cases"></a>
# 🚩 Consumers & Use Cases

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292813313/Consumers+Use+Cases

---

## ↗️ Approach

We will employ API design principles in order to:

* Prioritise the API consumer's perspective above other considerations or viewpoints, including our own.
* Focus on our users and their goals in order to identify a comprehensive list of essential requirements.

By identifying the API's target users and their desired outcomes we will establish the API's purpose and build a solid foundation for the ensuing design and development process.

---

## 👨‍💼 Identifying our API consumers

There are several consumer types that may interact with the API, they can be categorized into four main user types:

* **client-users**: These include client-side Busuu Admins, LMS systems and their APIs, I&A Analysts and auxiliary tech teams. They need to retrieve user profile data, learning data and course content data from our platform.
* **resellers**: These partners are reselling access to Busuu to their own network of clients. They also need to retrieve data but across their entire network of client organisations. They may also need additional functionality beyond data retrieval e.g. to manage users via the API.
* **partnerships**: The partnerships team targets mobile telco collaborations, leveraging marketplaces and loyalty programs to expand our market reach. The team provides clients with a dedicated partnerships API, though it is currently ad hoc and not well documented. We have an opportunity to improve it, expand it and consolidate it into an overall API offering.  
* **busuu-maintainers**: These are users from Busuu, typically from the intergrations team and affiliates, who need to maintain course content for clients or who need to provide clients with API support.

---

## 🎯 Identifying their goals and use cases

We identify use cases for the API by first outlining what our users are looking to achieve. The table below is very high level and serves simply as a starting point for an ongoing process involving key stakeholders.

While most use cases focus on data retrieval, we've also identified some that require additional admin functionality.

At the same time we have attempted to prioritise these use cases.

| **User** | **Use case** | **Exists** | **Priority** |
| --- | --- | --- | --- |
| **all consumers types** | connect/authenticate to API data | 🟡 Partial | 🟢 High |
|  | retrieve user profile data | 🟡 Partial | 🟢 High |
|  | retrieve hierarchy structure data | 🔴 No | 🟢 High |
|  | retrieve licence/credit usage data | 🔴 No | 🟡 Medium |
|  | retrieve engagement data | 🔴 No | 🟡 Medium |
|  | retrieve learning progress data |  |  |
|  | -- retrieve placement tests | 🟡 Partial | 🟢 High |
|  | -- retrieve ongoing progress | 🟡 Partial | 🟢 High |
|  | -- retrieve completed progress | 🟡 Partial | 🟢 High |
|  | -- retrieve certificates | 🟡 Partial | 🟢 High |
|  | -- retrieve live lesson history | 🟡 Partial | 🟢 High |
|  | -- retrieve learning hours | 🟡 Partial | 🟢 High |
|  | retrieve course content metadata | 🟡 Partial | 🟢 High |
| **partner-resellers & partner-alliances** | manage user profiles | 🔴 No | 🟡 Medium |
| **partner-alliances** | user registration | 🟡 Partial | 🟡 Medium |
| **busuu-maintainers** | manage course content metadata | 🟡 Partial | 🟢 High |

Retrieve = GET

Manage = POST PUT PATCH DELETE

---

<a id="lms-platform-analysis--inspiration"></a>
# 📐 LMS Platform Analysis & Inspiration

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292518492/LMS+Platform+Analysis+Inspiration

---

## 💡 Using third-party LMS systems for design inspiration

Our API methods should be shaped by well-defined, common use cases. While the table above provides a foundation, we can also draw inspiration from other players in this space.

Third-party LMS APIs serve as a key reference point, as they heavily influence our clients' expectations and integration goals. These systems typically address the following core use cases:

* Retrieving and managing course content.
* Retrieving and managing learner progress data.
* Retrieving and managing user data.

Where LMS API documentation is available, we have gathered information on how they manage external content within the LMS using course metadata. We also reviewed each provider's implementation approach for 

synchronising learner progress and completion data.

The links below summarise eaxh LMS's capabilities, along with links to the original source material.

#### 360Learning: [360 Learning v2](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7615512577)

#### Degreed: [Degreed](https://busuucom.atlassian.net/wiki/spaces/BP/pages/6865911832)

#### Cornerstone: [Cornerstone](https://busuucom.atlassian.net/wiki/spaces/BP/pages/6870695937)

#### SAP SuccessFactors: [SAP SuccessFactors](https://busuucom.atlassian.net/wiki/spaces/BP/pages/6867124274)

#### Workday Learning: [Workday Learning](https://busuucom.atlassian.net/wiki/spaces/BP/pages/6870794241)

---

## 🔀 Finding overlaps to maximise the coverage of the API design - Scope definition

Despite differences between LMS platforms, significant overlaps exist that can guide our API design for maximum compatibility.

The process involves:

1. Collecting specifications from target LMS platforms
2. Aligning similar properties side-by-side for comparison
3. Mapping common features to identify overlapping areas
4. Using these overlaps to prioritise development focus and help us cover as much ground as possible

---

## 📋 Missing Child Pages from LMS Platform Analysis & Inspiration

The following child pages from the [LMS Platform Analysis & Inspiration](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292518492/LMS+Platform+Analysis+Inspiration) folder are not yet included in this document:

| Title | Source | Brief Description |
| --- | --- | --- |
| LMS Mapping Table: Course Management v2 | [LMS Mapping Table: Course Management v2](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7617216531) | Detailed field-by-field mapping table for course management across 5 LMS platforms (360Learning v2, Degreed, Cornerstone, SAP SuccessFactors, Workday). Updated December 2025 to reflect 360Learning v2 API specification changes. |
| LMS Mapping Table: Completions & Progress v2 | [LMS Mapping Table: Completions & Progress v2](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7619969025) | Detailed field-by-field mapping table for progress and completion tracking across 5 LMS platforms. Updated December 2025 to reflect 360Learning v2 API specification changes including nested identifier objects and renamed fields. |
| LMS Mapping Table: Certificates | [LMS Mapping Table: Certificates](https://busuucom.atlassian.net/wiki/spaces/BP/pages/6994952193) | Detailed field-by-field mapping table for certificate/digital credentialing functionality. Currently only Degreed supports certificate uploads via API. |
| Degreed | [Degreed](https://busuucom.atlassian.net/wiki/spaces/BP/pages/6865911832) | Platform-specific API documentation and field mappings for Degreed LMS. See Confluence page for full details. |
| 360 Learning v1 [DEPRECATED] | [360 Learning v1 [DEPRECATED]](https://busuucom.atlassian.net/wiki/spaces/BP/pages/6866141197) | Historical reference for 360Learning API v1 specification. Deprecated in favor of v2 API. Contains original Course Content API and Completions Metrics API documentation. |
| 360 Learning v2 | [360 Learning v2](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7615512577) | Platform-specific API documentation and field mappings for 360Learning v2 API. See Confluence page for full details. |
| Cornerstone | [Cornerstone](https://busuucom.atlassian.net/wiki/spaces/BP/pages/6870695937) | Platform-specific API documentation and field mappings for Cornerstone LMS. See Confluence page for full details. |
| SAP SuccessFactors | [SAP SuccessFactors](https://busuucom.atlassian.net/wiki/spaces/BP/pages/6867124274) | Platform-specific API documentation and field mappings for SAP SuccessFactors LMS. See Confluence page for full details. |
| Workday | [Workday](https://busuucom.atlassian.net/wiki/spaces/BP/pages/6870794241) | Platform-specific API documentation and field mappings for Workday Learning LMS. See Confluence page for full details. |
| Rise Up | [Rise Up](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7647625217) | Integration summary for Rise Up LMS platform. Documents customer enquiries (OECD, Martin Braun-Gruppe), integration approaches (manual CSV import, dedicated connector, API querying), and completion tracking limitations. |

---

<a id="core-coverage-analysis-course-asset-management"></a>
## 📚 Core Coverage Analysis: Course Asset Management

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292813404

Based on functional analysis of 5 LMS platforms (360Learning, Degreed, Cornerstone, SuccessFactors, Workday), we identified **universal business concepts** regardless of what platforms call them or how they format data.

---

### Coverage Categories

| Coverage | Count | Meaning | Nexus Core Decision |
| --- | --- | --- | --- |
| **5/5 platforms** | 4 fields | Universal business concept | ✅ **Must include** |
| **4/5 platforms** | 4 fields | High-value, broad coverage | ✅ **Should include**  **(valuable metric)** |
| **3/5 platforms** | 2 fields | Moderate coverage | **🤔 Optional based on business decision** |
| **2/5 platforms** | 7 fields | Low coverage | ❌ **Probably connector-specific** |
| **1/5 platforms** | 20+ fields | Platform quirk | ❌ **Definitely connector-specific** |
| **0/5 platforms** | 1 fields | Not included in any LMS but fundamental to Busuu | ✅ **Must include** |

The following summary outlines the recommended Nexus Core API fields based on platform coverage and business requirements. _Note: Detailed field-by-field analysis is provided in the table at the bottom of the page._

### Summary: Nexus Core API: Recommended Fields

#### MUST INCLUDE (Universal 5/5 coverage)

| Field | Data Type | Coverage | Rationale | Mandatory |
| --- | --- | --- | --- | --- |
| `courseId` | string | 5/5 ✅ Include | Unique course identifier - universal across all platforms | Yes |
| `title` | string | 5/5 ✅ Include | Course name - universal across all platforms | Yes |
| `description` | string | 5/5 ✅ Include | Course description - universal across all platforms | No |
| `launchUrl` | string (URL) | 5/5 ✅ Include | Course launch URL - universal across all platforms | Yes |

#### SHOULD INCLUDE (High-value 4/5 coverage)

| Field | Data Type | Coverage | Rationale | Mandatory |
| --- | --- | --- | --- | --- |
| `imageUrl` | string (URL) | 4/5 ✅ Include missing: Workday | Course thumbnail image () | No |
| `languageSupport` \[language, additionaLanguages, translations, localisations\] | object | 4/5 ✅ Include missing: Workday | Learning & interface languages Also needs to account for **localisation** needs aka **translations**. Most likely not supported by one field attribute but an by a more complex object instead. | Yes |
| `duration` | ISO 8601 | 4/5 ✅ Include missing: Workday | Expected completion time | No |

#### BUSINESS-CRITICAL (Strategic value)

| Field | Data Type | Coverage | Rationale | Mandatory |
| --- | --- | --- | --- | --- |
| `level` (CEFR) | enum | 0/5 ✅ Include | CEFR alignment - fundamental to language learning. Strategic partners (360L, Degreed) support. | No |
| `difficultyRating` | object | 2/5 ✅ Include **Override decision:** Despite appearing in only 2/5 LMS platforms (see detailed ranking below), included due to strategic value for Nexus Core API. | CEFR alignment - fundamental to language learning. Strategic partners (360L, Degreed) support. | No |
| `status` | enum | 3/5 ✅ Include **Override decision:** Despite appearing in only 3/5 LMS platforms (see detailed ranking below), included due to strategic value for Nexus Core API. | Future-proofs content lifecycle management, enables regulatory compliance. Default 'active' for existing courses. | No |

#### OPTIONAL (Business decision)

| Field | Data Type | Coverage | Rationale | Mandatory |
| --- | --- | --- | --- | --- |
| `providerId` | string | 3/5 ✅ Include **Override decision:** Despite appearing in only 3/5 LMS platforms (see detailed ranking below), included due to strategic value for Nexus Core API. | Fixed value "Busuu" - architectural variations across platforms | Varies |

---

### Detailed field-by-field analysis

| **Use Case** | **Description / Expected output**  | **Format** | **Coverage** | **Transformation** | **Notes (General)** |
| --- | --- | --- | --- | --- | --- |
| **Identifiers** |
| Course Identifier | Unique ID of the course. Our own Level IDs. | string `"levelId": "pack_level_en_b1"` | **5/5 ✅ Universal** 360L, Degreed, Cornerstone, SF, Workday | **Simple** Name only mapping **Platform Mappings:** 360L v2: `externalId` (nested in `courseIdentifier.value`) Degreed: `external-id` Cornerstone: `ID` SuccessFactors: `courseID` Workday: `Course Number` | As you can see below, we have inconsistent course naming conventions. e.g. `pack_level_en_a1` `pack_level_en_complete_c1` `70646b78-e70c-4314-85c0-c5d96e250917` `pack_level_en_fashionretail` |
| Provider Identifier | Unique ID of the external provider. | string `"providerID": "Busuu Premium Language Learning"` | **3/5 🤔 Optional** **Decision:** ✅ **SHOULD include** 360L, SuccessFactors, Workday | **Architectural** Implementation varies **Platform Mappings:** • 360L v2: `integrationId` (from setup, architectural) Degreed: Inferred from OAuth (not explicit) Cornerstone: Not needed SuccessFactors: `providerID` Workday: `vendor_topic` | Fixed value in all transactions with LMSs who use it. We are free to choose the value. |
| Provider Logo | The URL of the external platform's logo. | string (URL) `"externalPlatformLogoUrl": "https://path/to/logoImage.jpg"` | **1/5 ❌** 360L only _(Deprecated in v2)_ | N/A | **Exclude** Platform-specific quirk. Only 360Learning v1 used this, deprecated in v2 anyway. |
| Group Identifier | Used to support internal hierarchies in 360 Learning. Also used to define ownership of course assets. | string `"externalGroup": "6516fb782166f3c6b67a54ea"` | **1/5 ❌** 360L only | N/A | **Exclude** Platform-specific. Useful 360L feature for hierarchies but only one platform. Handle in 360L connector. |
| Asset Owner Identifier(s) | The identity of users, groups or orgnisations that own the content. | object (illustrative only) | **3/5 ⚠️** 360L, Degreed, Cornerstone | **Complex** Highly variable structures | **Exclude** Despite 3/5 coverage, implementations too different: • 360L: Single `authorId` string • Degreed: `owner-id` + `owner-type` • Cornerstone: Array of owner objects • SuccessFactors: Not available • Workday: Not available **Recommendation:** Handle in connectors where needed |
| **Course Metadata - Core** |
| Level Title | Title of the external course. | string `"levelTitle": "Dutch - Upper Intermediate B2"` `"levelTitle": "English for Intercultural Communication - Intermediate B1"` | **5/5 ✅ Universal** 360L, Degreed, Cornerstone, SF, Workday | **Medium** Format extraction for SF. **Platform Mappings:** 360L v2: `name` (renamed from `title`) Degreed: `title` Cornerstone: `Title` SuccessFactors: `title[0].value` (extract from locale array) Workday: `Course Title` | |
| Level Description | Description of the external course. | string `"levelDescription": "Understanding clear speech and producing simple organised texts about familiar topics. Describing your experiences, opinions, wishes and aspirations. Managing situations whilst travelling."` | **5/5 ✅ Universal** 360L, Degreed, Cornerstone, SF, Workday | **Medium** Format extraction for SF. **Platform Mappings:** 360L: `description` Degreed: `summary` Cornerstone: `Description` SuccessFactors: `description[0].value` (extract from locale array) Workday: `Description` | |
| Level Content Asset Type | Classification of the course content. | string `"contentAssetType": "course"` | **2/5 ❌** 360L, Degreed only | N/A | **Exclude** Low coverage. Fixed value ("course") for Busuu anyway. Handle in connectors. |
| Level Launch URL | URL to launch and play the external course. | string (URL) `"launchUrl": "https://sso.busuu.com/saml/{{busuuInstitutionId}}/login?course=course_pack_zh_complete&lang=zh&level=b1"` | **5/5 ✅ Universal** 360L, Degreed, Cornerstone, SF, Workday | **Simple** Name only mapping **Platform Mappings:** 360L: `launchUrl` Degreed: `url` Cornerstone: `URL` SuccessFactors: `content.launchURL` Workday: `launchUrl` | Prerequisites: SSO integration required. URLs individualized with `busuuInstitutionId` |
| Mobile Compatible | Indicates whether the app is mobile compatible. | boolean `"mobileCompatible": true \| false` | **2/5 ❌** Cornerstone, SF only | N/A | **Exclude** Low coverage. Not mandatory. Handle in connectors. |
| Level Launch URL for Mobile | URL to launch and play the external course from a mobile. | string (URL) `"mobileLaunchUrl": "https://sso.busuu.com/saml/{{busuuInstitutionId}}/login?course=course_pack_zh_complete&lang=zh&level=b1"` | **2/5 ❌** 360L, SF only | N/A | **Exclude** Low coverage. Not mandatory. It should just default to the value `launchUrl` above. Handle in connectors. |
| Level Thumbnail Image | URL of the cover image for the external course. | string (URL) `"imageUrl": "https://path/to/tumbnailImage.jpg"` | **4/5 ✅** 360L, Degreed, Cornerstone, SF | **Simple** Name only mapping **Platform Mappings:** 360L v2: `imageUrl` (renamed from `thumbnailUrl`) Degreed: `image-url` Cornerstone: `Thumbnail` SuccessFactors: `thumbnailURI` Workday: Not available | |
| Level Language(s) | Languages supported. | object (illustrative only) | **4/5 ✅** 360L, Degreed, Cornerstone, SF | **Complex** Major format differences **Platform Transformations:** 360L: `defaultLang` (enum 72 values) + `translations[]` array Degreed: `language` string Cornerstone: `Languages[]` array of locale codes SuccessFactors: Implicit in `title[].locale` objects Workday: Not available | Sometimes mandatory, so hard to ignore. Obviously this is more nuanced and more tricky for us since we deal with languages. we need to account for learning language v interface language. But it seems possible to handle this using something like the example schema opposite. **v0.7.0 Update:** Localisation support being implemented in Core API. Design separates `course.language` (language being taught) from `localization.defaultLocale` and `localization.translations[]` (UI metadata). Uses array-based structure compatible with 360L v2, Cornerstone, and SuccessFactors patterns. Connectors will transform canonical format to platform-specific structures. |
| Level Duration / Units | Advertised learning duration to complete the level. | object (illustrative only) | **4/5 ✅** 360L, Degreed, Cornerstone, SF | **Complex** Major unit conversion **Platform Transformations:** 360L: `duration` integer (minutes) → ISO 8601 Degreed: `duration` (double) + `duration-type` (enum) → ISO 8601 Cornerstone: `Duration` string (`hh:mm:ss`) → ISO 8601 SuccessFactors: `duration` string / `totalHours` number → ISO 8601 Workday: Not available **Example:** 1200 minutes → `"PT20H"` | Mandatory for all LMS. Our published level hours, which are estimated, fixed values. We "hardcode" the level duration in the course content upload. |
| Level Difficulty Rating | Indicator of level difficulty. | object (illustrative only) | **2/5 ❌** **Decision:** ✅ **SHOULD include** 360L, Degreed | **Medium** Value mapping + graceful degradation **Platform Transformations:** 360L: Map to 3-level scale (beginner/intermediate/advanced) Degreed: Use 5-level scale (direct mapping) Cornerstone: Omit (not supported) SuccessFactors: Omit (not supported) Workday: Omit (not supported) | **INCLUDED despite 2/5 coverage** Business-critical for language learning. **Business Justification:** CEFR levels fundamental to language education. Learners need difficulty info for enrollment decisions. Strategic partners (360L, Degreed) both support it. Clean graceful degradation for platforms without support. **Platform variations:** Different LMS have different rating scales which we need to acccount for. 360 Learning: 3 point scale: beginner, intermediate, advanced Degreed: 5 point scale: beginner, elementary, intermediate, upper intermediate, advanced **CEFR Mapping:** A1 → beginner (order: 1) A2 → elementary (order: 2) B1 → intermediate (order: 3) B2 → upper_intermediate (order: 4) C1 → advanced (order: 5) |
| Level Subject Matter | At Busuu this is mostly fixed at something like "Languages" but LMSs have their own categorisation. | string `"levelSubjectMatter": "Language"` `"Language Learning"` `"Spanish"` `"Personal Development"` | **2/5 ❌** 360L, Cornerstone | N/A | **Exclude** Low coverage. Fixed value ("Languages") for Busuu anyway. Handle in connectors. |
| ~~Level Skills~~ | ~~List of IDs of skills the external course refers to. These skills must exist in the LMS platform.~~ | ~~N/A~~ | **2/5 ❌** 360L (deprecated v2), SF only | N/A | **Exclude** Not mandatory. Limited value. 360L deprecated in v2. Handle in connectors. |
| **Course Metadata - Relating to course status, timestamps & versioning** |
| Level Status | Indicator of course status in LMS. | Design choice: enum `"levelStatus": "Active" "Archived" "Deleted"` boolean `"levelIsActive": true \| false` | **3/5 🤔** **Decision:** ✅ **SHOULD include** Degreed, Cornerstone, SF | **Medium** Boolean/enum conversion **Platform Transformations:** 360L: Not available (always "active") Degreed: `obsolete` boolean → enum Cornerstone: `IsActive` boolean → enum SuccessFactors: `status` enum → normalise Workday: Not available | **INCLUDED despite 3/5 coverage** While Busuu doesn't currently track course status publicly, we do retire courses from time-tom-time on our platform. We should therefore anticipate the need to do so publicly. Including this field enables: Content lifecycle management (draft/active/archived) Temporary content suspension without deletion Regulatory compliance for content expiration Default value 'active' for all current courses" |
| Level Publish Date | Date course was published. | dateTime `"levelPublishDate": "2023-12-14 09:41:39"` | **2/5 ❌** Degreed, Cornerstone | N/A | **Exclude** Low coverage. Busuu doesn't track publish dates. Could use upload date. Handle in connectors. |
| ~~Level Version~~ | ~~Current verison of course~~ | ~~string, integer~~ | **2/5 ❌** Cornerstone, SF | N/A | **Exclude** Low coverage. Busuu doesn't version content. Could use upload date. |
| Level Last Modified | Date course was last modified. | dateTime `"levelPublishDate": "2023-12-14 09:41:39"` | **1/5 ❌** Cornerstone | N/A | **Exclude** Platform-specific. Could use upload date. Handle in connectors. |

---

<a id="core-coverage-analysis-progress--completion-management"></a>
## 🏁 Core Coverage Analysis: Progress & Completion Management

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292518583

Based on functional analysis of 5 LMS platforms (360Learning, Degreed, Cornerstone, SuccessFactors, Workday), we identified **universal business concepts** for progress and completion tracking.

### Coverage Categories

| Coverage | Count | Meaning | Nexus Core Decision |
| --- | --- | --- | --- |
| **5/5 platforms** | 5 fields | Universal business concept | ✅ **Must include** |
| **4/5 platforms** | 0 fields | High-value, broad coverage | ✅ **Should include** **(valuable metric)** |
| **3/5 platforms** | 2 fields | Moderate coverage | **🤔 Optional based on business decision** |
| **2/5 platforms** | 7 fields | Low coverage | ❌ **Probably connector-specific** |
| **1/5 platforms** | 20+ fields | Platform quirk | ❌ **Definitely connector-specific** |
| **0/5 platforms** | 1 fields | Not included in any LMS but fundamental to Busuu | ✅ **Must include** |

The following summary outlines the recommended Nexus Core API fields based on platform coverage and business requirements. _Note: Detailed field-by-field analysis is provided in the table at the bottom of the page._

### Summary: Nexus Core API: Recommended Fields

#### MUST INCLUDE (Universal 5/5 coverage)

| Field | Data Type | Coverage | Rationale | Mandatory |
| --- | --- | --- | --- | --- |
| `userId` | string (email) | 5/5 ✅ Include | Unique learner identifier | Yes |
| `courseId` | string | 5/5 ✅ Include | Unique identifier of course being tracked - universal across all platforms | Yes |
| `completionStatus` | string | 5/5 ✅ Include | Pass/fail/completed indicator | yes |
| `completionScore` | object | 5/5 ✅ Include | Test score (%, grade, status) | No |
| `completionDate` | dateTime | 5/5 ✅ Include | Date course completed | Yes |

#### SHOULD INCLUDE (High-value 4/5 coverage)

_No fields in this category for Progress & Completion Management._

#### BUSINESS-CRITICAL (Strategic value)

| Field | Data Type | Coverage | Rationale | Mandatory |
| --- | --- | --- | --- | --- |
| `progress` | integer (0-100) | 2/5 ✅ Include **Override decision:** Despite appearing in only 2/5 LMS platforms (see detailed ranking below), included due to strategic value for Nexus Core API. | Core Busuu feature - real-time progress | No |
| `timeSpent` | ISO 8601 duration | 3/5 ✅ Include **Override decision:** Despite appearing in only 3/5 LMS platforms (see detailed ranking below), included due to strategic value for Nexus Core API. | Vital learning KPI | No |
| `learningStatus` | enum | 2/5 ✅ Include **Override decision:** Despite appearing in only 2/5 LMS platforms (see detailed ranking below), included due to strategic value for Nexus Core API. | Key progress indicator | No |

#### OPTIONAL (Business decision)

| Field | Data Type | Coverage | Rationale | Mandatory |
| --- | --- | --- | --- | --- |
| `providerId` | string | 3/5 ✅ Include **Override decision:** Despite appearing in only 3/5 LMS platforms (see detailed ranking below), included due to strategic value for Nexus Core API. | Fixed value "Busuu" - architectural variations across platforms | Varies |
| startDate | dateTime | 2/5 ✅ Include **Override decision:** Despite appearing in only 2/5 LMS platforms (see detailed ranking below), included due to strategic value for Nexus Core API. | Enables time-to-completion analytics, cohort analysis, and learning velocity tracking. Essential for identifying at-risk learners early. |  |
| lastAccessDate | dateTime | 2/5 ✅ Include **Override decision:** Despite appearing in only 2/5 LMS platforms (see detailed ranking below), included due to strategic value for Nexus Core API. | Enables identification of stuck or disengaged learners. Useful for engagement/re-engagement campaigns. |  |

---

### Detailed field-by-field analysis

|  | Use Case Description / Expected output | Format | Coverage | Transformation | Notes (General) |
| --- | --- | --- | --- | --- | --- |
| **Identifiers** |
| User Identifier | Unique learner identifier. For Busuu: always email. | string `"userId": "learner@example.com"` | **5/5 ✅ Universal** 360L, Degreed, Cornerstone, SF, Workday | **Medium** Format extraction for 360L v2 & Degreed **Platform Mappings:** • 360L v2: `userIdentifier.value` (nested object with type="mail") • Degreed: `user-id` + `user-identifier-type` (when type="Email") • Cornerstone: `userGuid` • SuccessFactors: `userID` / `studentID` • Workday: `employee_identifier` | Links Busuu learner to their LMS profile. |
| Course Identifier | Which content was accessed | string `"levelId": "pack_level_en_b1"` | **5/5 ✅ Universal** 360L, Degreed, Cornerstone, SF, Workday | **Medium** Format extraction for 360L v2 **Platform Mappings:** • 360L v2: `courseIdentifier.value` (nested object with type="externalId") • Degreed: `content-id` (+ type fields ignored) • Cornerstone: `courseId` • SuccessFactors: `courseID` / `componentID` • Workday: `learning_course_reference` | As noted elsewhere, inconsistent naming conventions. Full standardisation beyond scope, but **assess extra work needed**. Examples: `pack_level_en_a1`, `pack_level_en_complete_c1`, `70646b78-e70c-4314-85c0-c5d96e250917` |
| Provider Identifier | Content provider identifier | string `"providerID":"Busuu Premium Language Learning"` | **3/5 🤔 Optional** 360L, SF, Workday _(Not needed: Degreed, Cornerstone)_ | **Architectural** **Platform Mappings:** • 360L v2: `integrationId` (path parameter from integration setup) • Degreed: Not needed • Cornerstone: Not explicit • SuccessFactors: `providerID` • Workday: `vendor_topic` | Low/variable coverage. Up for debate whether to support in API vs "20% connector specific" work. |
| Group Identifier | Used to support internal hierarchies in 360 Learning | string `"externalGroup": "6516fb782166f3c6b67a54ea"` | **0/5 ❌** 360L only _(Deprecated in v2)_ | N/A | Platform-specific. Feature could replicate/support Busuu hierarchies in 360L. Handle in connector. |
| **Flag - Completion v Ongoing Progress** |
| Learning Status | Completed vs InProgress flag | Design choice: enum `"levelLearningStatus": "Completed" \| "InProgress"` boolean `"levelIsCompleted": true \| false` | **2/5 ❌** Cornerstone, SF | N/A | **INCLUDE despite low coverage** - Provides explicit learning state. Simplifies connector logic by avoiding derivation from progress + completionDate. |
| **Completion Metrics** |
| Completion Status | Pass/fail/completed indicator. | Design choice: enum `"levelCompletionStatus": "Pass" \| "Fail"` boolean `"levelIsPassed": true \| false` | **5/5 ✅** **Universal** 360L, Degreed, Cornerstone, SF, Workday | **Medium** Enum/boolean normalisation **Platform Transformations:** • 360L: `result` enum (success/failed) → normalise • Degreed: `is-verified` boolean → enum • Cornerstone: `successStatus` enum → normalise • SuccessFactors: `courseCompleted` boolean / `completionStatus` string • Workday: `learning_grade-reference` enum → normalise | Could the binary/enum be derived from when `progressPercentage": 100` is achieved? Then as part of the "20% connector specific" dev work we use this value to trigger an LMS-specific completion flag. |
| Completion Score | End of level test score | object (illustrative only) | **5/5 ✅** **Universal** 360L, Degreed, Cornerstone, SF, Workday | **Medium** Format differences **Platform Transformations:** • 360L: `score` integer (0-100) → percentage • Degreed: `percentile` double → percentage (or `questions-correct`) • Cornerstone: `userScore` integer \[0..100\] → percentage • SuccessFactors: `grade` string → parse to percentage • Workday: `overall_course_score` → format TBC | Need flexibility in how we represent and send this: as a percentage and as a letter grade fail / success Need several attributes: `completionScorePercentage` `completionScoreLetterGrade` `completionStatus` Example: Also, what happens with test retakes? Presumably we must overwrite the current scores in the LMS as there appears to be no way to store test history. |
| **Ongoing (Mid-term) Progress** |
| Progress | Mid-level rolling progress `75 [% of level English B2 completed]` i.e. our LPS progress percentage | integer `"progressPercentage": 75,` | **2/5** ❌ 360L, Cornerstone only _(Missing: Degreed, SF, Workday)_ | **Simple** Name only (where supported) **Platform Mappings:** • 360L: `progress` integer \[0-100\] • Degreed: Not available (graceful degradation) • Cornerstone: `progress` integer \[0..100\] • SuccessFactors: Not available (graceful degradation) • Workday: Not available (graceful degradation) | **INCLUDE despite low coverage** - Core Busuu feature! Learners see "75% complete" in real-time. **Implementation:** Mandatory for 360L/Cornerstone connectors, optional/ignored for others. **Consider:** Sister field `progressLessonsComplete` showing "X of N lessons complete"? Ratchet mechanism for content additions? |
| **Learning Time** |
| Time Spent | Total time learner spent on content | ISO 8601 duration `"timeSpent": "PT2H30M"` | **3/5 🤔** 360L, Cornerstone, SF | **Complex** Major unit conversion **Platform Mappings (if included):** • 360L v2: `timeSpent` integer (milliseconds) → ISO 8601 • Degreed: Not available • Cornerstone: `totalTime` string (time format) → ISO 8601 • SuccessFactors: `totalHours` number → ISO 8601 • Workday: Not available | **DECISION NEEDED:** **Approach 1:** Hardcode duration in course asset. When marked complete, LMS uses hardcoded value to attribute learning hours. Not sent via API. **Approach 2:** Include as dynamic field in API showing actual time spent. |
| **Time Stamps** |
| Start Date | When learner first accessed | dateTime `"levelStartedDate": "2023-12-14 09:41:39"` | **2/5 ❌** 360L, Cornerstone | N/A **Platform Mappings:** • 360L v2: `firstActivityAt` dateTime (ISO 8601) • Degreed: Not available • Cornerstone: `registrationDate` string • SuccessFactors: Not explicit • Workday: `Registered_Date` (unknown) | Low coverage. |
| Completion Date | When learner completed content | dateTime `"levelCompletionDate": "2023-12-14 09:41:39"` | **5/5 ✅** **Universal** 360L, Degreed, Cornerstone, SF, Workday | **Minor** Semantic difference for 360L **Platform Mappings:** 360L v2: `lastActivityAt` (when progress=100%, this IS completion date) Degreed: `completed-at` Cornerstone: `completionDate` SuccessFactors: `completedTimestamp` / `completionDate` (may be number) Workday: `learning_enrollment_completion_date` | Could the datetime be derived from when `progressPercentage": 100` is achieved? Do we need a ratchet mechanism to prevent backsliding due to addition of course content? |
| Last Accessed | Most recent interaction | dateTime `"levelLastActiveDate": "2023-12-14 09:41:39"` | **2/5 ❌** 360L, Cornerstone | N/A **Platform Mappings:** 360L v2: `lastActivityAt` dateTime (also used for completion) Degreed: Not available Cornerstone: `lastTimeAccessed` string SuccessFactors: Not available Workday: Not available | Low coverage. |

---

<a id="core-api-structure-recommendation"></a>
## ⚙️ Core API Structure Recommendation

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7649820744/Core+API+Structure+Recommendation

This page consolidates the final field recommendations for the Busuu Nexus Core API based on:

(1) LMS platform analysis across 5 enterprise platforms

(2) Strategic business value for fields with lower coverage but high impact

(3) API best practices and Busuu product excellence

This page focuses on architectural decisions and design rationale. For field examples, business semantics, and platform-specific usage, see [Nexus Core API: Field Reference.](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7655751681)

---

### Course Asset Management

#### Field Organisation

The Course schema organises fields into semantic groups for clarity and maintainability:

1. **Primary Identifier** - Unique course identity
2. **Core Content** - Title, description, and status
3. **Classification** - Language learning taxonomy (language, level, difficulty)
4. **Metadata** - Supplementary information (duration, thumbnail)
5. **Integration** - Launch URL for LMS integration
6. **Localisation** - Internationalization support
7. **Lifecycle Timestamps** - Audit trail and version control

---

#### Nexus Core API Recommended Fields

| **Field** | **Data Type** | **LMS Coverage** | **Rationale** |
| --- | --- | --- | --- |
| `id` | (Primary Identifier) string | 5/5 ✅ | Unique course identifier - universal across all platforms. **Note:** Within the Course schema, this field is named `id`. The term `courseId` appears only as a foreign key reference in Progress and Certificate schemas. |
| `title` | (Core Content) string | 5/5 ✅ | Course name - universal across all platforms. Default locale value (see localisation for translations). |
| `description` | (Core Content) string | 5/5 ✅ | Course description - universal across all platforms. Default locale value (see localisation for translations). |
| `status` | (Core Content) enum | 3/5 ✅ **Override decision:** Despite 3/5 coverage, included for strategic value | Future-proofs content lifecycle management. Enum values: `active` (course available for enrollment), `archived` (course no longer available). Default 'active' for existing courses. |
| `language` | (Classification) enum | 4/5 ✅ | Language being taught (NOT UI language) - critical for Busuu language learning platforms. Strategic business requirement. Full language names: `English`, `Spanish`, `French`, `German`, `Italian`, `Portuguese`, `Dutch`, `Japanese`, `Korean`, `Polish`, `Russian`, `Turkish`, `Chinese`, `Arabic`. **Note: Course metadata localisation (translations of titles, descriptions) handled separately via localisation object (v0.7.0).** |
| `level` | (Classification) enum | 0/5 ✅ **Override decision:** Not in LMS platforms (domain-agnostic) but fundamental to language learning | CEFR alignment fundamental to language learning taxonomy. Strategic business requirement. Enables filtering and skill-level based recommendations. |
| `difficulty` | (Classification) object | 2/5 ✅ **Override decision:** Despite 2/5 coverage, included for strategic value | CEFR alignment - enables informed enrollment decisions. Strategic partners (360Learning, Degreed) both support. Clean graceful degradation. **Structure:** `value` (enum: `beginner`, `elementary`, `intermediate`, `upper_intermediate`, `advanced`), `label` (human-readable string), `order` (integer 1-5 for sorting). All subfields required. |
| `duration` | (Metadata) integer (minutes) | 4/5 ✅ | Expected completion time in minutes. Used for progress tracking, scheduling, and learner planning. Aligns with Progress.learningDuration field (populated from this value upon completion). |
| `thumbnailUrl` | (Metadata) string (URI) | 4/5 ✅ | Course thumbnail image URL for visual course identification in catalogues and dashboards. |
| `launchUrl` | (Integration) string (URI) | 5/5 ✅ | SSO URL to launch the course - universal across all platforms. Contains templated variables for institution and course IDs: `https://sso.busuu.com/saml/{{busuuInstitutionId}}/login?course={{courseId}}`. LMS connectors replace template variables with actual values. |
| `localisation` | (Localisation) object (nullable) | 2/5 ✅ **Override decision:** Despite 2/5 coverage, included for strategic value | **Added in v0.7.0.** Comprehensive internationalization support for LMS partners operating in multiple regions. Enables course metadata (title, description) to be displayed in learner's preferred UI language. **Important distinction:** This is UI localisation (what language the course metadata appears in), separate from `language` field (what language is being taught). When null, only default locale (English) available. **Structure:** `defaultLocale` (ISO 639-1 code like "en"), `availableLocales` (array of locale codes), `translations` (array of LocalisedCourse objects with `locale`, `title`, `description`). Query parameter `includeAllLocales=false` omits this field to reduce payload size. |
| `createdAt` | (Lifecycle Timestamp) dateTime (ISO 8601) | 0/5 ✅ **Override decision:** Despite 0/5 coverage, included for API best practice | Most LMS platforms don't expose these because they're internal system metadata. Timestamps are essential for API best practice, audit trails, and ensuring API quality. Records when course record was created in system. |
| `publishedAt` | (Lifecycle Timestamp) dateTime (ISO 8601) | 0/5 ✅ **Override decision:** Despite 0/5 coverage, included for API best practice | Records when course was made available to learners. Distinguishes course creation from publication. Essential for content lifecycle tracking and version management. |
| `updatedAt` | (Lifecycle Timestamp) dateTime (ISO 8601) | 0/5 ✅ **Override decision:** Despite 0/5 coverage, included for API best practice | Last content modification timestamp. Null if never updated since publication. Enables change detection, cache invalidation, and version tracking. Critical for connector synchronization logic. |
| `archivedAt` | (Lifecycle Timestamp) dateTime (ISO 8601) | N/A (Post-analysis addition) | Timestamp when course was archived. Null if `status` is `active`. Complements status field by providing exact archival timing. Useful for reporting and historical analysis. |

---

**Localisation Object Details:**

* `defaultLocale` (required): ISO 639-1 language code, optionally with ISO 3166-1 region (e.g., "en", "fr-CA")
* `availableLocales` (required): Array of all available locale codes (minimum 1, includes default)
* `translations` (nullable): Array of translated content for non-default locales

    * Each translation contains: `locale`, `title` (nullable), `description` (nullable)
    * Does NOT include default locale (those values in root `title`/`description` fields)
    * Translatable fields: title, description only
    * Non-translatable: id, language, level, duration, status, URLs, timestamps

---

#### Provider Information (Response-Level)

| **Field** | **Location** | **LMS Coverage** | **Rationale** |
| --- | --- | --- | --- |
| `provider` | Response-level object (not within Course schema) | 3/5 ✅ **Override decision:** Implemented as full provider object at response level | Architectural consistency. Provides full provider context (id, name, description, logoUrl) at response level - better than per-course field approach. Appears in CourseListResponse and CourseDetailResponse. Marks ownership of content, deemed desirable as external content provider. **Structure:** `id` ("busuu"), `name` ("Busuu"), `description` ("Language learning platform"), `logoUrl` (URI). |

---

**Rationale for Grouping:** This organisation separates concerns clearly - identity, business content, classification taxonomy, supplementary metadata, integration points, internationalization, and audit trail. Each group serves a distinct architectural purpose.

---

### Progress & Completion Management

#### Field Organisation

The Progress schema organises fields into semantic groups:

1. **Primary Identifier** - Unique progress record identity
2. **Relationships** - Links to user and course
3. **Status & State** - Current progress state
4. **Progress Metrics** - Quantitative progress indicators
5. **Completion Outcome** - Final results (nullable until completed)
6. **Lifecycle Timestamps** - Activity tracking

---

#### Nexus Core API Recommended Fields

##### 1. Primary Identifier

| **Field** | **Data Type** | **LMS Coverage** | **Rationale** |
| --- | --- | --- | --- |
| `id` | (Primary Identifier) UUID | 0/5 ✅ **Override decision:** Despite 0/5 coverage, included for API best practice | Unique progress record identifier. Essential for API best practice and ensuring API quality. Enables direct progress record retrieval. **Note:** Within the Progress schema, this field is named `id`. The term `progressId` appears only as a foreign key reference in Certificate schema. |
| `institutionUserId` | (Relationships) UUID | 5/5 ✅ | Unique learner identifier - universal across all platforms. **Evolution:** Previously named `userId` in earlier versions. Renamed to `institutionUserId` in v0.8.0+ for semantic clarity - explicitly indicates this is the institution's identifier for the user, not Busuu's internal user ID. Foreign key to User.institutionUserId. |
| `courseId` (relationships) | (Relationships) String | 5/5 ✅ | Course identifier - links to course being tracked. Universal across all platforms. Foreign key to [Course.id](http://Course.id). |
| `status`  | (Status & State) enum (`in_progress`, `completed`) | 2/5 ✅ **Override decision:** Explicit state tracking | Explicit enrollment state tracking. Enum values: `in_progress` (user actively learning), `completed` (course finished). Simplifies connector logic - avoids derivation from progressPercentage + completedAt. Clear semantic meaning. |
| `progressPercentage`  | (Progress Metrics) integer (0-100) | 2/5 ✅ **Override decision:** Core Busuu feature despite low coverage | Real-time progress tracking ("75% complete"). Integer 0-100 representing completion percentage. Provides at-a-glance progress visualization in LMS dashboards. |
| `lessonsCompleted` | (Progress Metrics) integer (≥0) | 0/5 ✅ **Override decision:** Busuu-specific product architecture (lesson-based learning) | Concrete lesson-based progress metric core to Busuu's pedagogical model. Number of lessons user has completed. **Superior User Experience:** "15 of 20 lessons" is more concrete and intuitive than "75%". Provides tangible milestones. Users understand absolute achievement better than percentages. |
| `lessonsTotal` | (Progress Metrics) integer (≥0) | 0/5 ✅ **Override decision:** Busuu-specific product architecture (lesson-based learning) | Total number of lessons in course. Denominator for lesson-based progress. Core to Busuu's pedagogical model. Together with `lessonsCompleted`, provides concrete progress visualization. |
| `learningDuration` | (Progress Metrics) integer (minutes, ≥0) | 3/5 ✅ **Override decision:** Vital learning KPI | Total learning time in minutes. **Behaviour:** Initialised to 0 when progress record created. Populated with Course.duration value when status becomes 'completed'. Represents standard course duration once completed, not necessarily actual time user spent learning. Enables time-to-completion analysis, learning velocity tracking, engagement metrics. Critical analytics capability. |
| `result` | (Completion Outcome) enum (`pass`, `fail`), nullable Null until the course is completed (`status: completed`). | 5/5 ✅ | Pass/fail indicator - universal across all platforms. Completion result/outcome. Only populated when `status: completed`. Nullable for in-progress enrollments. Provides binary success metric. |
| `score` | (Completion Outcome) integer (0-100), nullable Null until the course is completed (`status: completed`). | 5/5 ✅ | Completion score percentage (0-100). Test/assessment score. Only populated when `status: completed`. Nullable for in-progress enrollments. Provides granular completion metric beyond binary pass/fail. |
| `startedAt` | (Lifecycle Timestamp) dateTime (ISO 8601) | 2/5 ✅ **Override decision:** Analytics enabler | When user started the course. Records initial enrollment/first access timestamp. Enables time-to-completion metrics (completedAt - startedAt), cohort analysis, learning velocity tracking, at-risk learner prediction. Critical for engagement analytics. |
| `lastAccessedAt` (lifecycle timestamp) | (Lifecycle Timestamp) dateTime (ISO 8601) | 2/5 ✅ **Override decision:** Engagement tracking | Last activity timestamp. Records most recent learning session. Enables dormant learner identification, re-engagement campaign triggers (7/14/30 day inactivity thresholds), active learner segmentation, churn risk prediction. Essential engagement metric. |
| `completedAt` (lifecycle timestamp) | (Lifecycle Timestamp) dateTime (ISO 8601), nullable | 5/5 ✅ | Completion timestamp - universal across all platforms. When course was completed. Null if `status: in_progress`. Records exact completion moment for certification, reporting, and analytics. |

---

**Note on institutionUserId:** This field represents the institution's unique identifier for the user (UUID format). It's provided by the institution during user provisioning and used consistently across all API operations. This distinguishes it from Busuu's internal user identifiers.

**Note on learningDuration:** This field's behaviour is implementation-dependent during `in_progress` status (may remain 0 or increment). The key design decision: upon completion, it captures the standard course duration, ensuring consistency with Course.duration for analytics purposes.

**Design Note:** The field name `result` was chosen over `completionStatus` for semantic precision. "Result" clearly indicates outcome (pass/fail), while "status" could be confused with the progress state (`in_progress`/`completed`). Similarly, `score` is more concise than `completionScore` - the completion context is clear from nullable type and field grouping.

**Timestamp Naming Convention:** All timestamps use the pattern `{past_tense_verb}At` (e.g., `startedAt`, `completedAt`, `lastAccessedAt`). This represents business events rather than data attributes, aligning with the principle of "exposing business concepts rather than implementation details."

**Note on Progress Timestamps:** Unlike Course schema, Progress does NOT include `createdAt` or `updatedAt` system metadata fields. The business-relevant timestamps (`startedAt`, `lastAccessedAt`, `completedAt`) provide sufficient audit trail for progress tracking. The `startedAt` field effectively serves as the creation timestamp.

---

**Rationale for Grouping:** Clear separation of identity, relationships, state, quantitative metrics, qualitative outcomes, and temporal tracking. The grouping reflects the data lifecycle: first establish identity and relationships, then track state and progress, capture outcomes upon completion, and maintain temporal audit trail throughout.

---

### Schema Variants

#### User-Specific Response Schemas

For user-scoped endpoints (e.g., `GET /users/{institutionUserId}/progress`), the API uses specialised schemas to eliminate redundancy:

**ProgressWithoutInstitutionUserId:**

* Identical to Progress schema but excludes `institutionUserId` field
* Used in UserProgressResponse where user context provided separately at response level
* Structure: `user` (object with institutionUserId and email), `data` (array of ProgressWithoutInstitutionUserId), `pagination`
* **Rationale:** User information provided once at top level instead of repeated in every progress record. Reduces payload size and improves semantic clarity.

This pattern also applies to:

* LiveLessonWithoutInstitutionUserId (in user live lesson responses)
* CertificateWithoutInstitutionUserId (in user certificate responses)

**Design Principle:** When the response context clearly indicates the user, don't repeat the user identifier in every array item. This follows DRY (Don't Repeat Yourself) and reduces data transfer overhead.

---

### Design Principles

#### Naming Conventions

1. **Identifiers:** Use `id` within schemas; use `{entity}Id` for foreign keys (e.g., `courseId`, `institutionUserId`)
2. **Timestamps:** Use `{past_tense_verb}At` pattern (startedAt, completedAt, publishedAt, archivedAt)
3. **Enums:** Use lowercase with underscores (in_progress, upper_intermediate, active)
4. **Conciseness:** Prefer semantic clarity over verbosity (result vs completionStatus, score vs completionScore)

#### Field Organisation

1. **Semantic Grouping:** Group related fields together with clear section comments
2. **Logical Ordering:** Identifiers → Relationships → Core Business Data → Metadata → Timestamps
3. **Required First:** Within groups, list required fields before optional/nullable fields

#### Business Events vs System Metadata

**Expose Business Events:**

* `startedAt` - user started learning (business event)
* `completedAt` - user finished course (business event)
* `publishedAt` - course became available (business event)
* `archivedAt` - course was retired (business event)

**Minimise System Metadata:**

* Progress schema omits `createdAt`/`updatedAt` (not business-relevant)
* Use business event timestamps instead where possible
* Only include system metadata when essential for API consumers (e.g., Course versioning)

---

### Related Documentation

* [Core Coverage Analysis: Course Asset Management](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292813404)
* [Core Coverage Analysis: Progress & Completion Management](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292518583)

---

<a id="certificates"></a>
## 🏅 Certificates

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292518674/Certificates

**Note:** For complete Certificates field specifications, digital credentialing details, and Degreed integration considerations, see the Confluence page directly.

---

<a id="beyond-the-lms-connector-usecase"></a>
## 🚀 Beyond the LMS Connector Usecase

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292813495/Beyond+the+LMS+Connector+Usecase

**Note:** For complete specifications covering live lessons, placement tests, end-of-level tests, and user data requirements, see the Confluence page directly.

---

<a id="integration-request-log"></a>
## 📋 Integration Request Log

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/6824067694

**Note:** For details on integration requests, see the Confluence page directly.

---

<a id="status--2026-planning"></a>
## 🏁 Status & 2026 Planning

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7391379464/Status+2026+Planning

---

### Quick Status Overview

| Connector | Status | Prod Implementations | Key Demand | Priority Considerations |
| --- | --- | --- | --- | --- |
| 360Learning | Existing, no migration | 0 | 4 substantiated leads | Enhanced capability gaps identified |
| Degreed | Existing, no migration | 0 | 3 potential clients | Sandbox rebuild in progress |
| Cornerstone | In development | 0 | DHL + 2 strong leads | New connector |
| SAP SuccessFactors | Not started | 0 (workarounds exist) | Multiple clients | Core API vs dedicated connector TBD |
| Public API "Nexus" | In progress | N/A | Multiple use cases | Extended capability needed |

---

### 1. 360Learning Connector

#### Current Status

* **Connector Type:** Existing connector, no migration required
* **Production Implementations:** 0
* **Technical Status:** Operational but with identified capability gaps

#### Client Demand

**Source:** https://docs.google.com/spreadsheets/d/1MewQN7G1gk5lGcVZTT5BJw72o8jxgmNy/edit?usp=sharing&ouid=109889267443403614662&rtpof=true&sd=true

##### Substantiated Demand (4 clients)

1. **Galeries Lafayette**

* Status: Meeting scheduled this week
* Next Steps: Progress discussion and sandbox implementation
* Context: Active engagement to get them using the connector in their sandbox
* Priority: High - immediate engagement

2. **Carrefour**

* Status: Very interested following Unleash conference meeting
* Next Steps: Internal meeting this week to hear more about their enquiry
* Context: Strong interest in 360L capabilities expressed at Unleash
* Priority: High - active engagement

3. **Exotec**

* Status: New enquiry (last week with Avril)
* Next Steps: Brief description of capabilities provided, awaiting response
* Priority: Medium - early stage

4. **LVMH**

* Status: Planning 2026 adoption, already asking about capabilities
* Next Steps: Ongoing capability discussions
* Priority: High - strategic account, 2026 timeline
* Note: May encompass Bulgari as well

##### Additional Leads

* Other entries in tracking list are more speculative and less substantiated
* No further information available on these at this time

#### Identified Capability Gaps

**Source:** My technical analysis (requires external validation)

Identified functionality gaps in the current 360Learning solution that warrant investigation. These gaps represent my assessment based on technical review.

**Key Consideration:** My view is that after waiting so long for this connector, there's a risk the solution might fall short of client expectations.

**Validation Needed:**

* Client feedback to confirm
* Product team technical review of identified gaps
* Effort estimation for delivering full capability
* Comparison of current capabilities vs client expectations

---

### 2. Degreed Connector

#### Current Status

* **Connector Type:** Existing connector, no migration required
* **Production Implementations:** 0
* **Technical Status:** Sandbox being rebuilt, testing in progress

#### Client Demand

**Source:** [As before, Integration Request Log](https://docs.google.com/spreadsheets/d/1MewQN7G1gk5lGcVZTT5BJw72o8jxgmNy/edit?usp=sharing&ouid=109889267443403614662&rtpof=true&sd=true)

##### Active Opportunities (3 clients)

1. **Prosus**

* Status: Was listed as deliverable
* Update: Just renewed without even mentioning Degreed integration
* Priority: Low - no current requirement indicated

2. **Seat**

* Status: Possible opportunity
* Next Steps: Olivia to provide more details
* Priority: Medium - needs validation
* Action: Follow up with Olivia for clarification

3. **UCB**

* Status: New requirement from client
* Context: Integration appears to be a key consideration for deal
* Note: Deal not yet won
* Priority: High - potential deal factor

#### Technical Validation

* Sandbox environment being rebuilt to confirm functionality
* I'll soon be able to confirm within current connector scope
* No functionality gaps identified yet
* No particular gaps expected based on current scope review

#### Questions to Address for Planning

1. What is Seat's actual level of interest? (requires Olivia input)
2. What is the timeline for UCB decision?
3. How critical is Degreed integration to winning the UCB deal?
4. When will sandbox testing be complete?
5. Are there any undiscovered functionality gaps?

---

### 3. Cornerstone Connector

#### Current Status

* **Connector Type:** New connector in progress
* **Production Implementations:** 0
* **Technical Status:** In development

#### Client Demand

**Source:** [As before, Integration Request Log](https://docs.google.com/spreadsheets/d/1MewQN7G1gk5lGcVZTT5BJw72o8jxgmNy/edit?usp=sharing&ouid=109889267443403614662&rtpof=true&sd=true)

##### Substantiated Demand

1. **DHL**

* Status: Primary driver for connector development
* Priority: High - committed deliverable

2. **Zeiss**

* Status: A maybe only at this stage
* Priority: Medium-High

3. **Ipsen**

* Status: has potential
* Priority: Medium-High

##### Speculative Leads

* Other entries in the tracking list are currently unsubstantiated
* Further information not available on these leads at this time

---

### 4. SAP SuccessFactors (SF)

#### Current Status

* **Connector Type:** Not yet developed
* **Production Implementations:** 0 (clients use workarounds)
* **Current State:** Some clients use (try using) our current API to get data and bring into SF themselves

    * Note: This approach is not going well

#### Strategic Questions

**Key Decision Point:** Does a client need a dedicated SF connector OR a Public Nexus API that can be used to plug into SF with some client-side dev work?

#### Client Demand

**Source:** [As before, Integration Request Log](https://docs.google.com/spreadsheets/d/1MewQN7G1gk5lGcVZTT5BJw72o8jxgmNy/edit?usp=sharing&ouid=109889267443403614662&rtpof=true&sd=true)

* Multiple clients documented in tracking list
* Specific details require further analysis

---

### 5. Core API

#### Current Status

* **Development:** In progress (confirmation needed: "but this seems to be in progress now, no?")
* **Current Capability:** Basic functionality available
* **Needs Enhancement:** Extended capability required in future to meet other use cases

#### Strategic Importance

The Public Nexus API serves as the foundation for multiple integration scenarios:

* Can potentially serve SF integration needs with client-side development
* Enables custom integrations for clients with technical capabilities
* Reduces need for dedicated connectors in some cases

---

### 📅 Planning Considerations

#### Potential Priority Areas

Based on my analysis, the following areas warrant consideration for planning:

##### 1. Public API "Nexus" Development

* **Status:** Appears to be in progress
* **Need:** Extended capability including live lessons output
* **Strategic Value:** Enables multiple integration scenarios
* **Dependencies:** May reduce need for some dedicated connectors
* **Priority:** TBD pending confirmation of current status

##### 2. 360Learning Enhanced Capability

* **Status:** Existing connector with identified gaps
* **Need:** Close functionality gaps identified by myself
* **Driver:** 4 substantiated client opportunities (Gal-Fay, Carrefour, Exotec, LVMH)
* **Risk:** Extended wait time may have raised client expectations
* **Priority:** High - multiple active opportunities

##### 3. SAP SuccessFactors Integration

* **Status:** Not started, current workarounds failing
* **Decision Needed:** Dedicated connector vs. enhanced Public Nexus API approach
* **Driver:** Multiple clients documented
* **Priority:** TBD pending strategic decision on approach

#### Recommended Next Steps

1. **Validate Client Requirements**

    * Product + CS led
    * Conduct feedback sessions with 360L prospects

2. **Product-Led Analysis**

    * Leverage product team expertise for in-depth technical analysis
    * Assess effort required for each priority area
    * Evaluate Public Nexus API vs. dedicated connector trade-offs

3. **Strategic Alignment**

    * Determine if Public Nexus API can satisfy SF needs
    * Assess if 360L enhancements are table stakes for deals
    * Evaluate market demand across all connector types

---

### 📚 Information Sources

**All demand data is maintained in my tracking list** - this list is kept current and serves as the single source of truth for client demand information.

**Previous research and documentation** - My earlier research provides the foundation for this summary and should be referenced for additional context.

---

### 📝 Notes

* This document reflects my knowledge and analysis as of October 27, 2025
* Further in-depth analysis would benefit from product-led expertise
* All substantiated demand is documented in the centralised tracking list
* Speculative opportunities are noted but require additional validation

---

<a id="third-party-solutions---stackone"></a>
## 🔌 Third-Party Solutions - StackOne

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7440990209/Third-Party+Solutions+-+StackOne

---

#### Brief Assessment

---

### ❓ What is StackOne?

Unified pass-through API platform that pushes content to 100+ platforms through a single integration. We would be interested in the LMS integrations listed on their website

```
Busuu → StackOne → Cornerstone, SAP, Workday, Docebo, etc.
```

---

### Key point:

StackOne is not a solution in of itself. It is additive, not an alternative to what we intend to do. Still requires us to build a means to expose our data, via REST API for example.

StackOne adds another layer that distributes and translates our API cabability to these target systems.

---

### 🎯 Strategic Fit

Are we looking to integrate with 100s of target systems? Probably not.

#### Our Strategy (My assumptions)

* **Target:** 5-10 core LMS platforms as requested by our clients
* **Customers:** 50 enterprise clients in 3 years
* **Approach:** Deep, focused integrations

#### StackOne's Model

* **Breadth:** 100+ platforms (but the applicable ones i.e. the learning platforms needs verifying)
* **Potential:**
    * High-volume, long-tail requests
    * Rapid integration
    * Eventual scaling

#### Potential Misalignment

We need **depth** (5-10 LMS). StackOne provides **breadth** (100+). Dependoing on StackOne cost structure we could be paying for access to integrations we don't need. Does it make economic sense?

Where do the two approaches converge in terms of economcs?

#### Hybrid Approach

Do we want to build & maintain our own connectors for integrations of strategic importance?

Do we also use StackOne as a layer on top of our public API?

* Currently the API could reasonably serve our long-tail clients with niche LMS needs → we would ask them to do the connection work themsleves via our API and documentation
* But with StackOne as an added layer we could streamline the work for these clients too and simply offer them a universal StackOne connection (if it supports their LMS)

---

### ✅ Evidence of Applicable Use Cases

Where LMSs are mentioned these appear to be intra-LMS connections, either LMS → LMS or HRIS →  LMS or vice versa.

Possible use case, they are an LMS/Content Aggregator:

[https://www.stackone.com/case-studies/getabstract](https://www.stackone.com/case-studies/getabstract)---

### 🔗 Applicable Learning Integrations

[https://www.stackone.com/integrations](https://www.stackone.com/integrations)Click **Learning**

It's just a list, no overview of integrator capability or tech specifics.

#### _**I see 360 learning and Cornerstone are listed so I'll reach out to contacts at each to see what they can tell me.**_

---

### ❓ Question on Competitors Usage 

No mention of Speex and Gofluent, why not?

They are almost always ahead of us on integration matters and wouldn't normally miss an opportunity to market this capability. If StackOne worked for our use case, I'd expect them to be have themselves listed.

It would be very surprising if they don't know about it. Maybe they are using it, maybe they are already evaluating it and we simply don't know. Or could they have rejected it as a solution?

Does StackOne have any learning content providers as customers? (Not necessarily language providers)

---


### ⚠️ Reliance on Third-Party (Key Risks)
#### Vendor Lock-In

* All integrations depend on StackOne availability
* Service and data
* Do we lose full control?
* Limited customisation - no ability to differentiate our offering from a competitor who also uses StackOne
* Pricing risk (they can increase fees)
* What would be the exit cost if it didn't work out? Including urgently switching to in-house builds? How would such a switch impact existing clients?

#### Sub-Processor & Compliance

* StackOne would have access to all user and progress data
* Would StackOne need to be disclosed to customers as a sub-processor?
* GDPR Article 28
* Security review and due diligence
* Added legal & compliance complexity/friction (for enterprise sales)

#### Data Ownership

* Who owns the integration?
* Can we back up / export?

---

### ⚡ Technical & Delivery Speed

* Needs joint evaluation internally - question for B2B Eng primarily
* Tech info here

[https://docs.stackone.com/guides/stackone-basics](https://docs.stackone.com/guides/stackone-basics)### Some initial questions:

1. Does the solution actually support our usecase - content linking and progress syncing with LMS?
2. How seamless/transparent would it be for our clients?

---

### 💰 Commercial Unkowns

**Costs**

* As yet complete unkown
* How do they charge? Per customer? Per user? Per integration? Per API call?
* Build v Buy - question for B2B Eng
* Does the platform price and total cost of ownership make sense for our anticipated needs
* How does pricing work out? Whether we consider it now or as our needs scale in the future
* Are costs prohibitive for where we are right now?

**Contract Terms**

* Can we migrate away easily?
* What happens to integrations if we decide to?
* Using Cornerstone as an example we had to enter into contract terms to develop an integration, so what happens here?
* What happens if we go beyond technical arrangements with key LMS and consider commercial terms i.e. via LMS marketplaces?

---

### 💬 For Discussion

1. Will our ~50 customers use <10 LMS or do we need many more?
2. How do the economics work out? What are the exact pricing model for learning content providers?
3. Contract terms and implications
4. What do others think re risks highlighted?
5. What do eng team think about the technicals?
6. Even if the solution is interesting, is it one for the future if our scaling needs require it?

**Other discussion points**

5. StackOne SLAs and penalties
6. Does StackOne support xAPI?
7. What can we glean from existing contacts at 360 Learning and Cornerstone?
8. Do our straregic LMS targets really support this approach or do they prefer/insist on direct integrations that they must approve on case-by-case basis?

---

### ⚠️ Decision Required

After building the API, do we:

* **Option A:** Build direct LMS connectors ourselves (5-10 platforms)
* **Option B:** Build one StackOne integration (100+ platforms)

---

### 📖 References

* Stackone Workday webinar Weds 11/11/25: [https://streamyard.com/watch/wJCsRMY3PQt3](https://streamyard.com/watch/wJCsRMY3PQt3)
* Key takeaways:
    * This use case focuses on extracting data _from_ Workday rather than pushing data to it—the reverse of what our typical client requests involve.
    * The demo confirms that standard integration scenarios with Workday require their SOAP API.
    * Workday's lack of REST API support is the reason I always thought of Workday integrations as edge cases for our platform → lower prioritisation.
    * If we receive a substantive Workday integration request, thien StackOne would be worth further investigation.
    * I need to rewatch the bit about using a building AI Agents but I assume this is for where an existing StackOne connector doesn't already exist.
    
* StackOne website: [https://www.stackone.com/](https://www.stackone.com/)
* StackOne case studies: [https://www.stackone.com/case-studies](https://www.stackone.com/case-studies)
* StackOne integrations list: [https://www.stackone.com/integrations](https://www.stackone.com/integrations)

---