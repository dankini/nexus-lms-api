# 🤖 API Design - Complete Documentation

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7368048668/API+Design

**Export Date:** January 2026

---

## Table of Contents

### Main Documentation Pages

- [🤖 API Design - Complete Documentation](#-api-design---complete-documentation)
- [📁 Early Design Iterations](#early-design-iterations)
  - [v0.1.0 Initial](#v010-initial)
  - [v0.2.0 Iteration](#v020-iteration)
  - [v0.3.0 Iteration](#v030-iteration)
- [🗺️ 0.4.0 Increment: LMS Endpoints (MVP)](#040-increment-lms-endpoints-mvp)
  - [⚙️ v0.4.0 OpenAPI YAML Spec](#v040-openapi-yaml-spec)
  - [🔗 v0.4.0 Swaggerhub Docs](#v040-swaggerhub-docs)
  - [👤 v0.4.0 User Model Spec](#v040-user-model-spec)
  - [📚 v0.4.0 Course Model Spec](#v040-course-model-spec)
  - [📊 v0.4.0 Progress Model Spec](#v040-progress-model-spec)
- [🧑‍🏫 0.5.0 Increment: Add Live Lesson Endpoints](#050-increment-add-live-lesson-endpoints)
  - [⚙️ v0.5.0 OpenAPI YAML Spec](#v050-openapi-yaml-spec)
  - [🔗 v0.5.0 Swaggerhub Docs](#v050-swaggerhub-docs)
  - [🧑‍🏫 v0.5.0 Live Lesson Model Spec](#v050-live-lesson-model-spec)
- [🏅 0.6.0 Increment: Add Certificate Endpoints](#060-increment-add-certificate-endpoints)
  - [⚙️ v0.6.0 OpenAPI YAML Spec](#v060-openapi-yaml-spec)
  - [🔗 v0.6.0 Swaggerhub Docs](#v060-swaggerhub-docs)
  - [🏅 v0.6.0 Certificate Model Spec](#v060-certificate-model-spec)
- [🧪 Decision: Defer Tests Endpoint](#decision-defer-tests-endpoint)
- [🌍 0.7.0 Increment: Add Localisation Support to Courses Endpoints](#070-increment-add-localisation-support-to-courses-endpoints)
  - [⚙️ v0.7.0 OpenAPI YAML Spec](#v070-openapi-yaml-spec)
  - [🔗 v0.7.0 Swaggerhub Docs](#v070-swaggerhub-docs)
  - [🌍 v0.7.0 Course Model Spec](#v070-course-model-spec)
- [👤 0.8.0 Refinement: Refactor user ID fields](#080-refinement-refactor-user-id-fields)
  - [⚙️ v0.8.0 OpenAPI YAML Spec](#v080-openapi-yaml-spec)
  - [🔗 v0.8.0 Swaggerhub Docs](#v080-swaggerhub-docs)
- [🌟 0.9.0 Refinement: Schema Quality Improvements](#090-refinement-schema-quality-improvements)
  - [⚙️ v0.9.0 OpenAPI YAML Spec](#v090-openapi-yaml-spec)
  - [🔗 v0.9.0 Swaggerhub Docs](#v090-swaggerhub-docs)
- [🗄️ 0.10.0 Refinement: Remove Detail Endpoints](#0100-refinement-remove-detail-endpoints)
  - [⚙️ v0.10.0 OpenAPI YAML Spec](#v0100-openapi-yaml-spec)
  - [🔗 v0.10.0 Swaggerhub Docs](#v0100-swaggerhub-docs)

---

**Latest Version (v0.10.0) - January 7, 2026**

The API has been refined through ten design iterations, with the latest version removing unnecessary detail endpoints for transactional resources following YAGNI principles.

All historical documentation (v0.1.0 - v0.9.0) references detail endpoints for progress, live lessons, and certificates which were removed in v0.10.0 for API simplification.

See [0.10.0 Refinement: Remove Detail Endpoints](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7663353868) for details.

---

## Executive Summary

This executive summary provides a comprehensive review of the folder, documenting the complete design phase evolution of the Busuu Nexus Core API from initial proposal through **ten design iterations** (v0.1.0 through v0.10.0). The design phase demonstrates exceptional iterative improvement, comprehensive technical specifications, and a production-ready OpenAPI 3.1 specification with inline examples.

**Design Phase Assessment: 9.5/10** ⭐⭐⭐⭐⭐

**Design Phase Status:** ✅ **COMPLETE** - The design phase has successfully delivered a comprehensive, production-ready API specification. All **ten design iterations** are complete with full OpenAPI 3.1 specification, detailed data models, and comprehensive documentation. The specification is ready to transition to the implementation phase.

**Readiness: 90%** - Strong technical foundation, comprehensive specifications with enhanced documentation, ready for implementation with minor refinements.

---

## Folder Structure Overview

### Main Components:

* **Parent Page:** API Design - Summary for all design documentation
* **8 Major Sections:**

    * **1. Increment: LMS Endpoints (MVP)** - Core LMS integration endpoints (Users, Courses, Progress)
    * **2. Increment: Add Live Lesson Endpoints** - Live lesson tracking capabilities
    * **3. Increment: Add Certificate Endpoints** - Certificate tracking and digital credentialing
    * **4. Decision: Defer Tests Endpoint** - Design decision documentation for tests endpoint deferral
    * **5. Increment: Add Localisation Support to Course Endpoints**
    * **6. Refinement: Refactor user ID fields**
    * **7. Refinement: Schema Quality Improvements**
    * **8. Refinement: Remove Detail Endpoints**
    
* **10 Version Design Pages:**

    * **Version 0.1.0** - Initial technical specification
    * **Version 0.2.0** - Refined nullable fields and realistic examples
    * **Version 0.3.0** - Structural improvements to progress endpoint
    * **Version 0.4.0** - Enhanced documentation with inline examples - **MVP**
    * **Version 0.5.0** - Live lesson tracking capabilities
    * **Version 0.6.0** - Certificate tracking and digital credentialing
    * **Version 0.7.0** - Course localisation support
    * **Version 0.8.0** - User ID refinement (single institutionUserId field)
    * **Version 0.9.0** - Schema quality improvements (timestamp semantics, field ordering, validation)
    * **Version 0.10.0** - Endpoint simplification (remove detail endpoints)
    
* **Supporting Documentation:**

    * Technical Design Review & Assessment - Comprehensive technical assessment
    * OpenAPI YAML Specifications - Production-ready API definitions
    * Model Specifications - Detailed data model documentation
    * Decision Documentation - Design decisions and deferrals
    * Refinement Documentation - User ID refinement, schema quality, and endpoint simplification rationale
    
---

## API Evolution Summary

### Version Progression:

The API has evolved through ten complete design iterations from October 24, 2025 through January 7, 2026:

* **v0.1.0** (Oct 24, 2025) - Initial Design
* **v0.2.0** (Oct 24, 2025) - Nullable Fields & UUIDs
* **v0.3.0** (Oct 28, 2025) - Structural Improvements
* **v0.4.0** (Nov 1, 2025) - Documentation Enhancement
* **v0.5.0** (Nov 5, 2025) - Live Lesson Tracking
* **v0.6.0** (Nov 10, 2025) - Certificate Tracking
* **v0.7.0** (Dec 26, 2025) - Course Localisation
* **v0.8.0** (Dec 27, 2025) - User ID Refinement
* **v0.9.0** (Dec 28, 2025) - Schema Quality Improvements
* **v0.10.0** (Jan 7, 2026) - Remove Detail Endpoints

**Note:** For detailed version progression table with status tracking, see the individual version pages in the [API Design folder](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7368048668).

---

## Contents Summary

### 1. Proposal Review & Assessment

**Document:** Busuu Nexus Core API - Document Review & Assessment

**Key Findings:**

* **Strong Strategic Foundation:** Compelling business case connecting to enterprise sales enablement
* **Rigorous User Research:** Excellent consumer identification and use case mapping with priority matrix
* **Thorough Competitive Analysis:** Detailed LMS platform benchmarking with mapping tables
* **Disciplined Scoping:** MVP planning reduced comprehensive vision to focused, deliverable first release
* **Clear Direction:** Proposal provided excellent foundation for technical design phase

---

### 2. MVP (LMS) Design Evolution

#### Version 0.1.0 (Initial Design - October 24, 2025)

**Key Achievements:**

* Established baseline API structure with 9 endpoints
* Defined core models: User, Course, Progress
* Standardised pagination and error handling patterns
* OAuth2 client credentials flow
* Provider context for courses

**Core Endpoints:**

1. `POST /auth/token` - Authentication
2. `GET /users` - List all users
3. `GET /users/{id}` - Get specific user
4. `GET /courses` - List all courses
5. `GET /courses/{id}` - Get specific course
6. `GET /progress` - List all progress records
7. `GET /progress/{id}` - Get specific progress record
8. `GET /users/{id}/progress` - Get user progress
9. `GET /utilities/health` - API health check

**Data Models:**

* **User Model:** 17 fields including dual UUIDs, organisational context, lifecycle timestamps
* **Course Model:** 12 fields including CEFR levels, difficulty object, SSO launch URLs
* **Progress Model:** 14 fields tracking completion status, scores, learning duration

**Note:** For complete v0.1.0 specification details, see [v0.1.0 Initial](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7401799681) page.

---

#### Version 0.2.0 (Refinements - October 24, 2025)

**What Changed:**

* Explicit nullable field annotations for User model (7 fields: firstName, lastName, department, countryCode, employeeId, team, deletedDate)
* Explicit nullable fields for Progress model (3 fields: completedAt, completionStatus, completionScore)
* Changed course `language` and `thumbnailUrl` to required fields
* Updated example IDs from simple strings to realistic UUIDs

**Why:**

* More accurately reflects real-world data scenarios where not all user fields are always populated
* UUID-based identifiers match actual implementation patterns in production systems
* Ensures all courses have consistent metadata

**Impact:**

* Non-breaking enhancements - clarifies which fields are optional in implementation
* Provides clearer guidance for API consumers on data expectations

**Note:** For complete v0.2.0 specification details, see [v0.2.0 Iteration](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7401832449) page.

---

#### Version 0.3.0 (Structural Improvements - October 28, 2025)

**Key Enhancement:** Restructured `/users/{id}/progress` endpoint response

**What Changed:**

* Introduced `UserContext` schema for lightweight user identification
* Introduced `ProgressWithoutUserId` schema to eliminate redundancy
* Elevated user context to top-level `user` object
* Removed redundant `userId` field from progress records
* Renamed `data` array to `progress` for semantic clarity

**Previous Structure (v0.1.0/v0.2.0):**

```json
{
  "data": [
    {
      "id": "...",
      "userId": "...",  // Redundant when querying specific user
      "courseId": "...",
      ...
    }
  ],
  "pagination": {...}
}
```

**New Structure (v0.3.0):**

```json
{
  "user": {
    "id": "...",
    "userId": "...",
    "email": "..."
  },
  "data": [
    {
      "id": "...",
      // userId field removed - provided in user context above
      "courseId": "...",
      ...
    }
  ],
  "pagination": {...}
}
```

**Design Benefits:**

* Reduced data redundancy - `userId` no longer repeated in every progress record
* Clearer separation - User context distinct from progress data
* Smaller payloads - More efficient data transfer, especially with many progress records
* Better semantics - Response structure clearly indicates "here's the user, and here's their progress"

**Design Decision: Course Title in Progress Responses**

* **Decision:** Keep current design (courseId only)
* **Rationale:** Maintains single source of truth, follows REST best practices, prevents data duplication
* **Future Consideration:** Option 3 (expand parameter) if evidence emerges of performance issues

**Note:** For complete v0.3.0 specification details, see [v0.3.0 Iteration](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7397965825) page.

---

#### Version 0.4.0 (Documentation Enhancement - November 1, 2025)

**Key Enhancement:** Added comprehensive inline response examples to all endpoint definitions in OpenAPI specification

**What Changed:**

* Added comprehensive inline response examples to all endpoint definitions
* Included realistic example data for GET `/users`, GET `/courses`, GET `/progress`, and GET `/users/{id}/progress` endpoints
* Examples demonstrate complete response structures including wrapper objects, pagination, and provider context
* Updated nullable field syntax to OpenAPI 3.1.0 standard (`type: [type, 'null']` instead of deprecated `nullable: true`)
* Applied OpenAPI 3.1.0 compliant syntax across 13 fields in User, Progress, and ProgressWithoutUserId schemas
* Enhanced Tag Descriptions: Added detailed descriptions to all OpenAPI specification tags
* Enhanced Endpoint Descriptions: Expanded all endpoint descriptions from single-line to comprehensive multi-line documentation

**Why:**

* Inline examples improve developer experience by providing immediate visibility into expected response structures
* OpenAPI 3.1.0 compliance ensures better compatibility with modern code generators and validation tools
* Enhanced descriptions provide comprehensive documentation directly in the OpenAPI specification

**Impact:**

* Enhancement only - no breaking changes
* Significantly improves developer experience and reduces integration time
* Future-proofs the specification as OpenAPI evolves

**Note:** For complete v0.4.0 specification details and OpenAPI YAML, see [0.4.0 Increment: LMS Endpoints (MVP)](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7368736790) page.

---

#### Version 0.5.0 (Live Lesson Tracking - November 5, 2025)

**Key Enhancement:** Extended API with comprehensive live lesson tracking capabilities

**What Changed:**

* Added `GET /live-lessons` endpoint for listing all live lesson records across all users
* Added `GET /live-lessons/{id}` endpoint for retrieving specific live lesson details (removed in v0.10.0)
* Added `GET /users/{id}/live-lessons` endpoint for user-specific live lesson tracking with aggregated summary statistics
* Introduced new `LiveLesson`, `LiveLessonWithoutUserId`, and `LiveLessonSummary` schemas
* Added `UserLiveLessonsResponse` schema for structured user lesson data
* Introduced "Live Lessons" API tag for endpoint organisation

**New Data Models:**

* **LiveLesson Model:** 10 fields tracking lesson type, language, level, status, and timing
* **LiveLessonSummary Model:** Aggregated statistics including total lessons, minutes accumulated, and status breakdowns
* **LiveLessonWithoutUserId Model:** Progress-like pattern eliminating redundancy in user-specific responses

**Live Lesson Status Values:**

* `pending`: Lesson scheduled but not yet occurred
* `completed`: Lesson successfully completed
* `cancelled`: Lesson cancelled before occurrence
* `missed`: Lesson scheduled but user did not attend

**User Live Lessons Response Structure:**

```json
{
  "user": {
    "id": "...",
    "userId": "...",
    "email": "..."
  },
  "summary": {
    "totalLessonsPending": 2,
    "totalLessonsCompleted": 6,
    "totalLessonsCancelled": 2,
    "totalLessonsMissed": 2
  },
  "data": [
    {
      "id": "...",
      // userId field removed - provided in user context above
      "type": "group",
      "language": "ES",
      "level": "A1",
      "status": "completed",
      ...
    }
  ],
  "pagination": {...}
}
```

**Design Benefits:**

* Comprehensive live lesson tracking alongside self-paced course progress
* Aggregated summary statistics provide immediate access to key metrics
* Consistent design patterns following v0.3.0 architectural approach
* Fixed 45-minute lesson duration simplifies calculations

**Note:** For complete v0.5.0 specification details and OpenAPI YAML, see [0.5.0 Increment: Add Live Lesson Endpoints](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7414054951) page.

---

#### Version 0.6.0 (Certificate Tracking - November 10, 2025)

**Key Enhancement:** Extended API with comprehensive certificate tracking and digital credentialing capabilities

**What Changed:**

* Added `GET /certificates` endpoint for listing all certificates with comprehensive filtering
* Added `GET /certificates/{id}` endpoint for retrieving specific certificate details (removed in v0.10.0)
* Added `GET /users/{id}/certificates` endpoint for user-specific certificates with summary statistics
* Introduced new `Certificate`, `CertificateWithoutUserId`, `CertificateSummary`, and `UserCertificatesResponse` schemas
* Added certificate status tracking (active, expired, revoked)
* Added certificate grade field (A+, A, A-, B+, B, B-, C+, C, C-, F) - immutable snapshot of achievement
* Added `progressId` field linking certificates to source Progress records
* Introduced "Certificates" API tag for endpoint organisation

**New Data Models:**

* **Certificate Model:** 16 fields including certificate identifiers, metadata, status tracking, dates, integration support, and grade
* **CertificateWithoutUserId Model:** Certificate model without redundant userId field for user-specific responses
* **CertificateSummary Model:** Aggregated statistics including total, active, expired, and revoked certificate counts
* **UserCertificatesResponse Model:** Structured response with user context, summary, and certificate list

**Certificate Status Values:**

* `active`: Valid certificate currently in effect
* `expired`: Certificate past its expiration date
* `revoked`: Certificate invalidated (e.g., due to policy violation)

**Certificate Grade Scale:**

* A+: 96-100, A: 93-95, A-: 90-92
* B+: 87-89, B: 83-86, B-: 80-82
* C+: 77-79, C: 73-76, C-: 70-72
* F: 0-69

**User Certificates Response Structure:**

```json
{
  "user": {
    "id": "...",
    "userId": "...",
    "email": "..."
  },
  "summary": {
    "totalCertificates": 5,
    "totalCertificatesActive": 3,
    "totalCertificatesExpired": 1,
    "totalCertificatesRevoked": 1
  },
  "data": [
    {
      "id": "...",
      // userId field removed - provided in user context above
      "courseId": "...",
      "progressId": "...",
      "title": "English Upper Intermediate (B2)",
      "language": "EN",
      "level": "B2",
      "grade": "A",
      "status": "active",
      ...
    }
  ],
  "pagination": {...}
}
```

**Design Benefits:**

* Comprehensive certificate tracking with digital credentialing support
* Immutable credential snapshots preserve achievement integrity over time
* Progress traceability via `progressId` links certificates to source learning records
* Flexible expiration model supports both time-limited and permanent certificates
* Status lifecycle management enables complete certificate tracking
* Aggregated summary statistics provide instant insights for dashboards

**Key Design Decisions:**

* **Certificate Language and Level Storage:** Certificates denormalize language and level for immutable attestation and query performance, while Progress remains normalised to courseId
* **Certificate Grade and Progress Relationship:** Grade stored in Certificate (immutable snapshot), score/result stored in Progress (operational data), linked via `progressId` to maintain separation of concerns

**Note:** For complete v0.6.0 specification details and OpenAPI YAML, see [0.6.0 Increment: Add Certificate Endpoints](#060-increment-add-certificate-endpoints) page.

---

#### Version 0.7.0 (Course Localisation - December 26, 2025)

**Key Enhancement:** Added localisation support to course endpoints for international deployments

**What Changed:**

* Added `localisation` field to Course schema with support for multiple languages
* Enables course metadata (title, description) in different languages
* Supports international LMS integrations requiring localised content

**Impact:**

* Non-breaking enhancement - localisation field is optional
* Enables multi-language course catalogues for global deployments

**Note:** For complete v0.7.0 specification details and OpenAPI YAML, see [0.7.0 Increment: Add Localisation Support to Courses Endpoints](#070-increment-add-localisation-support-to-courses-endpoints) page.

---

#### Version 0.8.0 (User ID Refinement - December 27, 2025)

**Key Enhancement:** Simplified user identification with single `institutionUserId` field

**What Changed:**

* Replaced dual `id` and `userId` fields with single `institutionUserId` field
* Updated all endpoint path parameters to use `institutionUserId`
* Simplified User schema and all related schemas

**Rationale:**

* Eliminates confusion between two UUID fields
* Single source of truth for user identification
* Clearer naming convention that reflects purpose

**Impact:**

* Breaking change requiring migration guide, but significantly improves API clarity

**Note:** For complete v0.8.0 specification details, migration guide, and OpenAPI YAML, see [0.8.0 Refinement: Refactor user ID fields](#080-refinement-refactor-user-id-fields) page.

---

#### Version 0.9.0 (Schema Quality Improvements - December 28, 2025)

**Key Enhancement:** Comprehensive schema quality improvements focusing on timestamp semantics, field ordering, and validation

**What Changed:**

**Timestamp Semantic Refinements:**

* Renamed `User.createdAt` → `User.registeredAt` to reflect business event (user registration/provisioning)
* Renamed `LiveLesson.createdAt` → `LiveLesson.bookedAt` to reflect user action (lesson booking)
* Added `Certificate.revokedAt` for explicit revocation tracking
* Removed `Progress.createdAt` (redundant with `startedAt`)
* Removed `Certificate.createdAt` (redundant with `issuedAt`)
* Added `Course.archivedAt` for lifecycle tracking
* Removed `updatedAt` from Progress and Certificate (not meaningful business events)

**Schema Field Ordering & Organisation:**

* Reorganised field order in Course, Progress, Certificate, and LiveLesson schemas for logical grouping
* Added section comments to all major schemas following User schema pattern
* Grouped related fields together: identifiers first, relationships second, core content third, metadata fourth, timestamps last
* Fixed LiveLesson timestamps to chronological order (`bookedAt` before `scheduledAt`)

**Course Schema Validation & Bug Fixes:**

* Added enum validation to `Course.language` field with full language names (English, Spanish, French, etc.)
* Removed `Course.archivedAt` from required array (field is nullable)
* Reorganised Course fields into logical sections

**Progress Schema Refinement:**

* Reorganised fields into sections: Identifier → Relationships → Status → Progress Metrics → Completion Outcome → Timestamps
* Grouped all progress metrics together
* Separated completion outcome fields as distinct nullable section
* Removed `createdAt` field (redundant with `startedAt`)

**Certificate Schema Organisation:**

* Reorganised fields into sections: Identifier → Relationships → Core Content → Classification & Achievement → Provider & Media → Timestamps
* Grouped all foreign key relationships together
* Combined classification fields with grade in Achievement section
* Removed `createdAt` field (redundant with `issuedAt`)
* Added `revokedAt` field for explicit revocation tracking

**LiveLesson Schema Timestamp Correction:**

* Reordered timestamps to chronological sequence: `bookedAt` now appears before `scheduledAt`
* Renamed `createdAt` → `bookedAt` to reflect user action

**Why:**

* Timestamp strategy mixed business events with system metadata - public API should expose business events
* Schema fields were previously organised without clear structure, making schemas difficult to scan
* Course.language field had no validation constraints, allowing any string value
* Field reorganisation improves developer experience and code generation quality

**Impact:**

* Breaking changes for renamed timestamp fields
* Non-breaking for field reordering (JSON objects are unordered)
* Significantly improves API semantic clarity by exposing only meaningful business timestamps
* Improves documentation readability and generated code organisation

**Key Design Decision: Timestamp Philosophy - Business Events vs System Metadata**

* **Decision:** Expose only meaningful business events in public API
* **Rationale:** Read-only API consumers care about business events (when user registered, when lesson was booked) rather than internal system housekeeping (when database record was created)
* **Categories:** Business Events (`registeredAt`, `bookedAt`, `startedAt`, `issuedAt`), Engagement Tracking (`lastActiveAt`, `lastAccessedAt`), Lifecycle Control (`expiresAt`, `revokedAt`), System Metadata (removed from most schemas)

**Key Design Decision: Course Language Field Format**

* **Decision:** Full language names with enum validation (English, Spanish, French, etc.) instead of ISO codes
* **Rationale:** Course language is descriptive metadata for content discovery - clarity matters for browsing. ISO codes are appropriate for operational systems (LiveLesson) and credentials (Certificate), but courses are for human consumption

**Note:** For complete v0.9.0 specification details, timestamp inventory table, and OpenAPI YAML, see [0.9.0 Refinement: Schema Quality Improvements](#090-refinement-schema-quality-improvements) page.

---

#### Version 0.10.0 (Remove Detail Endpoints - January 7, 2026)

**Key Enhancement:** Applied YAGNI principle to remove unnecessary detail endpoints for transactional resources

**What Changed:**

* Removed `GET /progress/{id}` endpoint for retrieving individual progress records
* Removed `GET /live-lessons/{id}` endpoint for retrieving individual live lesson details
* Removed `GET /certificates/{id}` endpoint for retrieving individual certificate details
* Removed three corresponding path parameters: `ProgressId`, `LessonId`, and `CertificateId`
* Retained all list endpoints: `GET /progress`, `GET /live-lessons`, `GET /certificates`
* Retained all user-specific endpoints: `GET /users/{institutionUserId}/progress`, `GET /users/{institutionUserId}/live-lessons`, `GET /users/{institutionUserId}/certificates`
* Maintained detail endpoints for reference data: `GET /courses/{courseId}` and `GET /users/{institutionUserId}`

**Why:**

* System-to-system integrations consistently use list endpoints with filtering rather than fetching individual transactional records by ID
* User-specific endpoints already provide comprehensive detail for individual learner lookups, making detail endpoints redundant
* Reference data (courses and users) genuinely requires detail endpoints for lookup operations, but transactional event data (progress updates, lesson bookings, certificate issuance) does not follow the same access pattern

**Impact:**

* Breaking change - consumers using removed endpoints must migrate to list or user-specific endpoints
* Simplifies API surface area by removing six endpoint definitions (three endpoints plus three parameters)
* Maintains all essential functionality through list and user-specific endpoints
* Improved API discoverability and reduced implementation complexity

**Key Design Decision: Detail Endpoints for Transactional vs Reference Resources**

* **Decision:** Selective detail endpoints based on resource type - retain for reference data, remove for transactional resources
* **Rationale:** Reference data (courses, users) requires direct lookups by identifier. Transactional resources (progress, live lessons, certificates) are accessed by filtering the data set or user context. User-specific endpoints already provide detailed individual records for transactional resources.
* **YAGNI Application:** Detail endpoints for transactional resources were designed "just in case" but analysis shows they serve no identified use case

**Note:** For complete v0.10.0 specification details, endpoint comparison table, and OpenAPI YAML, see [0.10.0 Refinement: Remove Detail Endpoints](#0100-refinement-remove-detail-endpoints) page.

---

### 3. Technical Design Review Assessment

**Overall Assessment: 9.5/10** ⭐⭐⭐⭐⭐

**Readiness: 90%** - Strong technical foundation, comprehensive specifications with enhanced documentation, ready for implementation with minor refinements.

**Note:** For complete technical assessment details including detailed comparison tables and metrics breakdown, see the [Technical Design Review & Assessment](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7403470850) page (now consolidated into this document).

---

## Key Strengths

### 1. Comprehensive OpenAPI Specification ✅

The OpenAPI 3.1 YAML specification is **production-ready** and demonstrates professional API design:

* Complete endpoint definitions with request/response schemas
* Comprehensive inline response examples for all endpoints (v0.4.0)
* Comprehensive parameter documentation (pagination, filtering, sorting)
* Detailed schema definitions with examples
* OpenAPI 3.1.0 compliant nullable syntax (v0.4.0)
* Proper error response structures
* Security scheme definitions (OAuth2 Bearer tokens)
* Consistent tagging and organisation

**Impact:** High - Enables immediate implementation, code generation, testing, and improved developer experience through inline examples.

### 2. Iterative Design Improvement ✅

The ten-version evolution (0.1.0 → 0.2.0 → 0.3.0 → 0.4.0 → 0.5.0 → 0.6.0 → 0.7.0 → 0.8.0 → 0.9.0 → 0.10.0) shows excellent iterative refinement:

* Clear versioning strategy and rationale for changes
* Transparent documentation of what changed and why
* Evolution demonstrates learning and refinement
* v0.3.0 structural improvement shows sophisticated API design thinking
* v0.4.0 documentation enhancement demonstrates commitment to developer experience and standards compliance
* v0.5.0 live lesson tracking extends API capabilities following established patterns
* v0.6.0 certificate tracking adds digital credentialing with immutable grade snapshots
* v0.7.0 course localisation extends API capabilities for international deployments
* v0.8.0 user ID refinement simplifies API design with single institutionUserId field
* v0.9.0 schema quality improvements enhance semantic clarity and developer experience
* v0.10.0 endpoint simplification applies YAGNI principles for cleaner API surface

**Impact:** High - Shows design maturity, consideration of real-world usage, and attention to developer experience.

### 3. Complete Data Model Documentation ✅

The model specification pages (User, Course, Progress, LiveLesson, Certificate) provide:

* Field-by-field breakdowns with types and examples
* Multiple example variations (student, admin, completed, in-progress, etc.)
* Relationship documentation
* Field constraints and validation rules
* Usage examples and filtering patterns

**Impact:** High - Eliminates ambiguity for implementation teams.

**Note:** For complete data model specifications with detailed field tables and examples, see the individual model specification pages linked from each version increment page.

### 4. Strong API Design Principles ✅

The design demonstrates adherence to REST best practices:

* Resource-based URLs
* Consistent HTTP methods
* Standardised error handling
* Proper use of HTTP status codes
* Clear separation of concerns (authentication, resources, utilities)

**Impact:** High - Ensures maintainability and developer adoption.

### 5. Enhanced Developer Experience (v0.4.0) ✅

Version 0.4.0 significantly improves developer experience:

* Inline examples in OpenAPI spec provide immediate visibility into expected response structures
* Developers can see actual payload formats directly in Swagger UI, Postman, and other API documentation tools
* Reduces integration time by eliminating the need to refer to separate documentation
* Realistic example data demonstrates proper UUID formats, date-time formats, and nullable field handling
* Examples work seamlessly with OpenAPI-compliant tools for code generation and testing

**Impact:** High - Accelerates integration development and reduces developer friction.

### 6. Standards Compliance & Future-Proofing (v0.4.0) ✅

Version 0.4.0 demonstrates commitment to industry standards:

* OpenAPI 3.1.0 compliant nullable syntax (`type: [type, 'null']` instead of deprecated `nullable: true`)
* Ensures better compatibility with modern code generators and validation tools
* Eliminates linter warnings and deprecation notices
* Future-proofs the specification as OpenAPI evolves
* Aligns with JSON Schema vocabulary adoption in OpenAPI 3.1.0

**Impact:** Medium-High - Ensures long-term maintainability and tool compatibility.

### 7. Live Lesson Tracking (v0.5.0) ✅

Version 0.5.0 extends API capabilities with comprehensive live lesson tracking:

* Three new endpoints following established patterns (reduced to two in v0.10.0)
* Aggregated summary statistics for dashboard views
* Status lifecycle management (pending, completed, cancelled, missed)
* Consistent design patterns with user context separation
* Fixed 45-minute lesson duration model

**Impact:** High - Enables comprehensive reporting alongside self-paced course progress.

### 8. Certificate Tracking & Digital Credentialing (v0.6.0) ✅

Version 0.6.0 adds comprehensive certificate tracking:

* Three new endpoints with comprehensive filtering (reduced to two in v0.10.0)
* Immutable grade snapshots preserve achievement integrity
* Status lifecycle management (active, expired, revoked)
* Progress traceability via `progressId` links
* Flexible expiration model (nullable `expiresAt` for permanent certificates)
* Digital credentialing support with URLs and thumbnails for LMS integration

**Impact:** High - Enables institutional reporting and LMS badging/credentialing features.

### 9. Schema Quality Improvements (v0.9.0) ✅

Version 0.9.0 significantly enhances schema quality:

* Timestamp semantic clarity - Business events vs system metadata distinction
* Field organisation - Logical grouping with section comments improves scannability
* Validation completeness - Course.language enum prevents invalid data
* Consistent patterns - Standardised organisation across all schemas
* Code generation quality - Organised schemas produce better structured classes

**Impact:** High - Dramatically improves developer experience and schema comprehension.

### 10. API Simplification (v0.10.0) ✅

Version 0.10.0 applies YAGNI principles:

* Reduced API surface complexity - Removed six unused endpoint definitions
* Improved discoverability - Fewer endpoints means clearer API structure
* Lower maintenance burden - Less code to maintain, test, and document
* YAGNI compliance - Eliminates speculative features without validated use cases
* Clear resource categorisation - Distinguishes reference data from transactional data

**Impact:** Medium-High - Maintains functionality whilst reducing complexity and maintenance overhead.

### 11. Value-Driven Design Decision (Tests Endpoint) ✅

The decision to defer tests endpoint demonstrates mature design thinking:

* Rigorous analysis of data overlap and REST resource boundaries
* Clear documentation of rationale and alternatives considered
* Design principle: Don't add endpoints without validated client demand
* Future consideration documented for when demand emerges

**Impact:** Medium-High - Maintains API clarity and focuses resources on validated needs.

**Note:** For complete analysis of tests endpoint deferral decision, see [Decision: Defer Tests Endpoint](#decision-defer-tests-endpoint) page.

### 12. Enterprise-Ready Features ✅

The design includes enterprise requirements:

* Multi-institution support (institutionId in user model)
* Organisational hierarchy (department, team, role)
* SSO integration (templated launch URLs)
* Audit trails (registeredAt, lastActiveAt, removedAt)
* Status tracking (active/removed, in-progress/completed)
* Live lesson tracking for comprehensive engagement monitoring
* Certificate credentialing for digital badges and attestations

**Impact:** High - Addresses enterprise LMS integration needs comprehensively.

### 13. Standards Compliance ✅

The API follows industry standards:

* OAuth2 authentication
* OpenAPI 3.1 specification (with 3.1.0 compliant syntax in v0.4.0)
* CEFR language levels
* ISO 8601 date-time formats
* UUID identifiers
* RESTful design patterns

**Impact:** Medium - Ensures compatibility and interoperability.

---

## Critical Areas for Improvement

### 1. Missing System Architecture Documentation ⚠️

**Missing:**

* High-level system architecture diagrams
* Data flow diagrams showing how API interacts with Busuu backend systems
* Database schema design or data source mapping
* Authentication service architecture
* Caching strategy documentation
* Rate limiting implementation details

**Impact:** High - Implementation teams need architectural context to build effectively.

**Recommendation:** Create separate architecture document with:

* System context diagram
* Component architecture diagram
* Data flow diagrams
* Sequence diagrams for authentication and key operations
* Infrastructure/deployment architecture

### 2. Implementation Details Gaps ⚠️

**Missing:**

* Backend data source mapping (how User/Course/Progress/LiveLesson/Certificate data is retrieved)
* Data transformation logic (how internal data maps to API responses)
* Query optimisation strategies
* Caching policies and TTL values
* Rate limiting thresholds and enforcement
* Database indexing strategy

**Impact:** High - Needed for efficient and scalable implementation.

**Recommendation:** Add implementation notes section covering:

* Data source mapping table
* Caching strategy (Redis/Memcached, TTLs, invalidation)
* Rate limiting rules (requests per minute/hour per client)
* Performance targets (response times, throughput)

### 3. Testing Strategy ⚠️

**Missing:**

* Unit testing approach
* Integration testing strategy
* API contract testing
* Performance testing requirements
* Load testing targets
* Error scenario testing

**Impact:** Medium-High - Critical for quality assurance.

**Recommendation:** Create testing specification document with:

* Test data requirements
* Mock/stub strategies
* Contract testing approach (using OpenAPI spec)
* Performance benchmarks
* Load testing scenarios

### 4. Security Implementation Details ⚠️

**Gap:** OAuth2 is specified but implementation details are sparse.

**Missing:**

* Token storage strategy
* Token refresh mechanism (if applicable)
* Client credential management
* Scope validation implementation
* Rate limiting by client vs. globally
* IP whitelisting/blacklisting strategy
* CORS policy (if applicable)

**Impact:** Medium - Security is critical but mostly covered conceptually.

**Recommendation:** Add security implementation section:

* Token management (JWT signing keys, rotation, validation)
* Client credential storage (secure vault integration)
* Scope enforcement (per-endpoint scope checking)
* Rate limiting by client ID

### 5. Deployment and Operations ⚠️

**Missing:**

* Deployment architecture
* Environment configuration (dev, staging, production)
* Monitoring and logging strategy
* Alerting thresholds
* Health check dependencies (database, external services)
* Rollback procedures

**Impact:** Medium - Needed for production operations.

**Recommendation:** Add operations guide:

* Deployment pipeline
* Environment variables/configuration
* Monitoring metrics (latency, error rates, throughput)
* Logging structure (structured logs, log levels)
* Alert conditions

### 6. Data Consistency and Mapping ⚠️

**Gap:** Course ID format inconsistency noted in proposal review still not explicitly addressed.

**Potential Issues:**

* Course IDs use string format (`pack_level_en_a1`) while other IDs use UUIDs
* User IDs resolved in v0.8.0 with single institutionUserId
* No documentation of how internal course identifiers map to API course IDs
* No data migration or transformation details

**Impact:** Medium - Could cause confusion during implementation.

**Recommendation:** Add data mapping documentation:

* Internal ID → API ID mapping tables
* Course identifier standardisation strategy
* Data transformation rules
* Historical data handling

### 7. API Versioning Strategy 📝

**Gap:** Semantic versioning is mentioned but strategy is not fully defined.

**Missing:**

* Version deprecation policy
* Version lifecycle (how long are versions supported?)
* Breaking change policy
* Version negotiation (Accept header, URL versioning?)
* Migration guides between versions

**Impact:** Low for MVP, High for long-term maintainability.

**Recommendation:** Define versioning policy:

* Version lifecycle (e.g., "versions supported for minimum 12 months after deprecation")
* Breaking vs. non-breaking change definitions
* Deprecation notice periods
* Migration documentation requirements

### 8. Monitoring and Observability 📝

**Gap:** Health check exists but observability is not comprehensive.

**Missing:**

* Metrics to expose (Prometheus, StatsD, etc.)
* Distributed tracing strategy
* Request/response logging approach
* Error tracking integration
* Performance monitoring (APM tools)

**Impact:** Medium - Critical for production operations.

**Recommendation:** Add observability specification:

* Key metrics (request rate, latency, error rate, token usage)
* Distributed tracing (OpenTelemetry, Zipkin)
* Structured logging format
* Error tracking (Sentry, DataDog, etc.)

---

## Recommendations by Priority

### 🔴 Critical (Block Implementation Start)

1. **Create Architecture Documentation**

    * System architecture diagrams
    * Data flow specifications
    * Component interaction diagrams
    * Deployment architecture
    
2. **Specify Implementation Details**

    * Data source mapping (User, Course, Progress, LiveLesson, Certificate data sources)
    * Data transformation logic
    * Caching strategy and TTL values
    * Rate limiting thresholds (requests per minute/hour)
    
3. **Define Security Implementation**

    * JWT token management (signing keys, rotation)
    * Client credential storage and management
    * Scope validation per endpoint
    * Rate limiting by client ID
    

### 🟠 High Priority (Before Production)

4. **Create Testing Specification**

    * Unit testing approach
    * Integration testing strategy
    * API contract testing using OpenAPI spec
    * Performance benchmarks and load testing
    
5. **Document Deployment and Operations**

    * Deployment pipeline and environments
    * Monitoring metrics and alerting
    * Health check dependencies
    * Logging strategy
    
6. **Address Data Mapping**

    * Internal → API ID mapping documentation
    * Course identifier standardisation
    * Data transformation rules
    

### 🟡 Medium Priority (Can Be Parallel or Post-MVP)

7. **Define API Versioning Policy**

    * Version lifecycle and deprecation policy
    * Breaking change definitions
    * Migration guides
    
8. **Complete Observability Specification**

    * Metrics, tracing, logging details
    * Error tracking integration
    * Performance monitoring setup
    
9. **Create Developer Onboarding Guide**

    * Quick start guide
    * Common integration patterns
    * SDK examples (if applicable)
    

---

## Positive Observations

### OpenAPI Specification Quality

The OpenAPI 3.1 YAML specification is **exceptionally comprehensive** and demonstrates professional API design standards:

* All endpoints fully documented with examples
* Comprehensive inline response examples added in v0.4.0
* Comprehensive schema definitions
* OpenAPI 3.1.0 compliant syntax throughout
* Proper use of OpenAPI 3.1 features
* Consistent error handling patterns
* Production-ready structure
* Schema organisation and validation improvements in v0.9.0

**This could serve as a template for future APIs.**

### Iterative Design Process

The evolution from v0.1.0 → v0.2.0 → v0.3.0 → v0.4.0 → v0.5.0 → v0.6.0 → v0.7.0 → v0.8.0 → v0.9.0 → v0.10.0 shows excellent design discipline:

* Clear rationale for each change
* Documented alternatives considered (especially in v0.3.0 course title decision, v0.6.0 certificate design decisions, v0.9.0 timestamp philosophy, v0.10.0 endpoint simplification)
* Non-breaking enhancements where possible
* Thoughtful optimisation (payload reduction in v0.3.0, endpoint simplification in v0.10.0)
* Continuous improvement in documentation quality (v0.4.0)
* Extension of capabilities following established patterns (v0.5.0, v0.6.0, v0.7.0)
* Schema quality improvements (v0.9.0)
* YAGNI application (v0.10.0)

**Recommendation:** Continue this systematic approach for future versions.

### Model Specification Completeness

The model specification pages (User, Course, Progress, LiveLesson, Certificate) provide comprehensive documentation:

* Multiple example variations cover edge cases
* Field-by-field breakdowns eliminate ambiguity
* Relationship documentation clarifies data connections
* Usage examples show practical application
* Organised field structures with section comments (v0.9.0)

**This level of detail will significantly accelerate implementation.**

**Note:** For complete model specifications with detailed field tables, see the individual model specification pages linked from each version increment page.

### Design Decision Transparency

The version documentation includes excellent design decision rationale:

* Options considered (especially in v0.3.0 course title decision, v0.6.0 certificate language/level and grade decisions, v0.9.0 timestamp philosophy and language format, v0.10.0 endpoint simplification)
* Trade-offs analysed
* Decision criteria articulated
* Future consideration noted
* v0.4.0 demonstrates commitment to standards compliance and developer experience
* Tests endpoint deferral demonstrates value-driven design approach
* v0.9.0 demonstrates thoughtful timestamp philosophy and context-appropriate validation
* v0.10.0 demonstrates YAGNI application and resource categorisation

**This approach should be applied to all major design decisions.**

---

## Comparison: Proposal vs. Design

The design phase has shown significant improvement across all aspects compared to the initial proposal. Key improvements include:

* **Data Models:** Progressed from partial to complete and extended with additional resource types
* **OpenAPI Spec:** Evolved from missing to complete with inline examples
* **Error Handling:** Improved from underdeveloped to comprehensive
* **Authentication:** Progressed from mentioned only to fully specified
* **Documentation Quality:** Significantly improved from basic to excellent
* **Standards Compliance:** Improved from partial to excellent
* **API Capabilities:** Significantly improved from basic MVP to MVP + Live Lessons + Certificates
* **Design Decisions:** Progressed from not documented to fully documented with deferral decisions
* **Schema Quality:** Significantly improved with v0.9.0 improvements
* **API Simplicity:** Improved with v0.10.0 endpoint simplification

**Areas Still Requiring Attention:**

* **Technical Architecture:** Still missing - CRITICAL gap
* **Implementation Details:** Still missing - needs addressing before implementation
* **Testing Strategy:** Still missing - needs addressing before production

**Note:** For detailed comparison table with status tracking for each aspect, see the [Technical Design Review & Assessment](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7403470850) page.

---

## Current API Capabilities

### Endpoints (12 total):

**Authentication:**

* `POST /auth/token` - Obtain access token

**Users:**

* `GET /users` - List all users (with filtering, pagination)
* `GET /users/{institutionUserId}` - Get specific user
* `GET /users/{institutionUserId}/progress` - Get user progress (v0.3.0 structure)
* `GET /users/{institutionUserId}/live-lessons` - Get user live lessons with summary (v0.5.0)
* `GET /users/{institutionUserId}/certificates` - Get user certificates with summary (v0.6.0)

**Courses:**

* `GET /courses` - List all courses (with provider context)
* `GET /courses/{courseId}` - Get specific course

**Progress:**

* `GET /progress` - List all progress records (with filtering)

**Live Lessons:**

* `GET /live-lessons` - List all live lessons (with filtering)

**Certificates:**

* `GET /certificates` - List all certificates (with filtering)

**Utilities:**

* `GET /utilities/health` - API health check

**Note:** Detail endpoints for progress (`GET /progress/{id}`), live lessons (`GET /live-lessons/{id}`), and certificates (`GET /certificates/{id}`) were removed in v0.10.0. Use list endpoints with filtering or user-specific endpoints for individual record access.

**Note:** For complete endpoint documentation with request/response examples and parameter details, see the OpenAPI YAML specifications linked from each version increment page.

### Data Models:

**Core Models:**

* **User Model:** Fields including institutionUserId, organisational context, lifecycle timestamps (v0.8.0, v0.9.0 timestamp refinements)
* **Course Model:** Fields including CEFR levels, difficulty object, SSO launch URLs, localisation support (v0.7.0), language enum validation (v0.9.0)
* **Progress Model:** Fields tracking completion status, scores, learning duration (v0.9.0 field organisation)
* **LiveLesson Model:** Fields tracking lesson type, language, level, status, and timing (v0.5.0, v0.9.0 timestamp refinements)
* **Certificate Model:** Fields tracking certificate identifiers, metadata, status, dates, grade, and integration support (v0.6.0, v0.9.0 field organisation)

**Supporting Models:**

* **Provider Model:** Content provider metadata
* **UserContext Model:** Lightweight user identification (v0.3.0)
* **ProgressWithoutUserId Model:** Progress without redundant userId (v0.3.0)
* **LiveLessonWithoutUserId Model:** Live lesson without redundant userId (v0.5.0)
* **LiveLessonSummary Model:** Aggregated statistics (v0.5.0)
* **CertificateWithoutUserId Model:** Certificate without redundant userId (v0.6.0)
* **CertificateSummary Model:** Aggregated certificate statistics (v0.6.0)
* **UserCertificatesResponse Model:** Structured certificate response with user context (v0.6.0)
* **Pagination Model:** Consistent across all list endpoints
* **Error Model:** Standardised error responses with request tracking

**Note:** For complete data model specifications with detailed field tables, examples, and relationships, see the individual model specification pages linked from each version increment page.

---

## Key Design Decisions

### 1. User Progress Response Structure (v0.3.0)

**Decision:** Elevate user context to top level, remove redundant userId from progress records

**Rationale:**

* Eliminates data redundancy
* Improves semantic clarity
* Reduces payload size
* Follows REST best practices

**Impact:** Non-breaking enhancement that significantly improves response efficiency

---

### 2. Course Title in Progress Responses (v0.3.0)

**Decision:** Keep current design (courseId only), do not include course title

**Options Considered:**

1. Keep Current Design (courseId only) ✅ **Selected**
2. Include Course Title
3. Expand Parameter

**Rationale:**

* Maintains single source of truth
* Prevents data duplication
* Follows REST architectural principles
* Allows client-side enrichment based on specific needs

**Future Consideration:** Expand parameter if performance issues emerge

---

### 3. OpenAPI 3.1.0 Compliance (v0.4.0)

**Decision:** Update nullable field syntax to OpenAPI 3.1.0 standard

**What Changed:**

* Replaced deprecated `nullable: true` with `type: [type, 'null']`
* Applied across 13 fields in User, Progress, and ProgressWithoutUserId schemas

**Rationale:**

* Ensures full specification compliance
* Eliminates linter warnings
* Provides better compatibility with modern code generators
* Future-proofs the specification

---

### 4. Live Lesson Tracking (v0.5.0)

**Decision:** Add comprehensive live lesson tracking with summary statistics

**Rationale:**

* Live lessons are critical component of Busuu learning experience
* LMS integrations require visibility into lesson bookings and attendance
* Enables comprehensive reporting alongside self-paced course progress
* Follows established v0.3.0 design patterns

**Impact:** Adds 3 new endpoints and 4 new schemas without breaking existing functionality (reduced to 2 endpoints in v0.10.0)

---

### 5. Certificate Language and Level Storage (v0.6.0)

**Decision:** Denormalize language and level in Certificates, keep Progress normalised to courseId

**Options Considered:**

1. Store Language and Level in Certificates Only ✅ **Selected**
2. Normalise Certificates to courseId Only
3. Denormalise Both Certificates and Progress

**Rationale:**

* **Certificate Denormalisation Benefits:**

    * Immutable attestation - certificate remains accurate even if course metadata changes
    * Query performance - enables first-class filtering without joins
    * Data stability - certificate details reflect what was certified at issuance time
    
* **Progress Normalisation Benefits:**

    * Avoids data drift - language/level owned by Courses model
    * Reduces write amplification - progress updates frequently
    * Simpler maintenance - single source of truth for course metadata
    

**Impact:** Certificates can be queried and displayed independently while maintaining data integrity

---

### 6. Certificate Grade and Progress Relationship (v0.6.0)

**Decision:** Store grade in Certificate (immutable snapshot), score/result in Progress (operational data), linked via `progressId`

**Options Considered:**

1. Store All Assessment Data in Certificate Only
2. Store All Assessment Data in Progress Only
3. Store Grade in Certificate, Score/Result in Progress ✅ **Selected**
4. Store All Assessment Data in Both Models

**Rationale:**

* **Separation of Concerns:** Progress tracks ongoing learning (operational data), Certificate represents immutable credential (artifact)
* **Immutability:** Certificate grade must remain fixed even if source Progress is updated
* **Data Redundancy Minimization:** Single source of truth for each data type
* **LMS Integration:** Different use cases require different data locations
* **Multiple Certificates Support:** Allows retakes with improved grades

**Impact:** Clear separation between learning progress tracking and credential representation

---

### 7. Tests Endpoint Deferral (November 13, 2025)

**Decision:** Defer implementation of tests endpoint pending client demand

**Analysis:**

* **End-of-Level Tests:** Significant overlap with existing Progress endpoint (score, result already available)
* **Placement Tests:** Clear technical case with no overlap, but unvalidated business need
* **Design Principle:** Don't add endpoints without clear client demand and validated use cases

**Status:** DEFERRED - PENDING CLIENT DEMAND

**Future Consideration:**

* If client demand emerges, placement tests have stronger technical case than end-of-level tests
* End-of-level test requirements would need thorough validation to justify separate endpoint

**Impact:** Maintains API clarity and focuses resources on validated client needs

**Note:** For complete analysis of tests endpoint deferral decision with detailed options table, see [Decision: Defer Tests Endpoint](#decision-defer-tests-endpoint) page.

---

### 8. User ID Refinement (v0.8.0)

**Decision:** Replace dual `id` and `userId` fields with single `institutionUserId` field

**Rationale:**

* Simplifies API design and reduces confusion
* Single source of truth for user identification
* Clearer naming convention that reflects purpose
* Reduces payload size and complexity

**Impact:** Breaking change requiring migration guide, but significantly improves API clarity

---

### 9. Timestamp Philosophy - Business Events vs System Metadata (v0.9.0)

**Decision:** Expose only meaningful business events in public API, remove system metadata timestamps

**Options Considered:**

1. Keep All Timestamps (System + Business) ❌
2. Expose Only Business Events ✅ **Selected**
3. Expose Only System Metadata ❌

**Rationale:**

* **API Purpose Alignment:** Read-only API consumers care about business events, not internal record management
* **Semantic Clarity:** Specific event names (`bookedAt`, `issuedAt`) are self-documenting
* **Context-Specific Approach:** Different schemas have different timestamp needs based on their purpose

**Implementation:**

* Renamed: `User.createdAt` → `registeredAt`, `LiveLesson.createdAt` → `bookedAt`
* Removed: `Progress.createdAt` (use `startedAt`), `Certificate.createdAt` (use `issuedAt`)
* Added: `Certificate.revokedAt`, `Course.archivedAt`
* Removed: `updatedAt` from Progress and Certificate (not meaningful business events)

**Impact:** Breaking changes for renamed fields, but significantly improves API semantic clarity

**Note:** For complete timestamp inventory table showing all timestamp categories and their usage across schemas, see [0.9.0 Refinement: Schema Quality Improvements](#090-refinement-schema-quality-improvements) page.

---

### 10. Course Language Field Format (v0.9.0)

**Decision:** Full language names with enum validation (English, Spanish, French, etc.) instead of ISO codes

**Options Considered:**

1. ISO 639-1 Codes (EN, ES, FR, etc.) ❌
2. Full Language Names ✅ **Selected**

**Rationale:**

* **User Experience:** Course language is descriptive metadata for content discovery - clarity matters
* **Context-Appropriate Design:** Courses are for human consumption (browsing, selection), while LiveLessons use ISO codes for operational systems
* **Consistency Within Purpose:** Course title/description use full names, language field should match
* **Validation Benefits:** Enum still provides validation with clear, self-documenting values

**Impact:** Breaking change - Course.language now restricted to enum values, but improves clarity for API consumers

---

### 11. Detail Endpoints for Transactional vs Reference Resources (v0.10.0)

**Decision:** Remove detail endpoints for transactional resources, retain for reference data

**Options Considered:**

1. Maintain All Detail Endpoints ❌
2. Remove All Detail Endpoints ❌
3. Selective Detail Endpoints Based on Resource Type ✅ **Selected**

**Rationale:**

* **Access Pattern Analysis:** Reference data (courses, users) requires direct lookups, transactional resources are accessed by filtering
* **YAGNI Application:** Detail endpoints for transactional resources serve no identified use case
* **Resource Categorisation:** Reference data is relatively static and frequently looked up by ID, transactional data is time-series events queried by filters

**Implementation:**

* Removed: `GET /progress/{id}`, `GET /live-lessons/{id}`, `GET /certificates/{id}`
* Retained: `GET /courses/{courseId}`, `GET /users/{institutionUserId}`
* Retained: All list and user-specific endpoints

**Impact:** Breaking change - consumers must migrate to list or user-specific endpoints, but simplifies API surface and reduces maintenance burden

**Note:** For complete endpoint comparison table showing before/after endpoint structure, see [0.10.0 Refinement: Remove Detail Endpoints](#0100-refinement-remove-detail-endpoints) page.

---

## Design Benefits

### Advantages

* **Unified Access:** Single API provides access to users, courses, progress, live lessons, and certificates for comprehensive LMS integration
* **Enterprise Ready:** Built-in support for multi-institution deployments with organisation hierarchies
* **Standards-Based:** Uses OAuth2, JWT, OpenAPI 3.1, CEFR language levels, ISO 8601 date-time formats
* **Developer Friendly:** Consistent pagination, filtering, error handling patterns, and comprehensive inline examples
* **Production Quality:** Comprehensive error handling, request tracking, and monitoring capabilities
* **Iterative Refinement:** Ten versions demonstrate thoughtful evolution and continuous improvement
* **Documentation Excellence:** Inline examples and enhanced descriptions significantly improve developer experience
* **Digital Credentialing:** Comprehensive certificate tracking with immutable grade snapshots and status lifecycle management
* **Data Integrity:** Clear separation between operational data (Progress) and credential artifacts (Certificates)
* **Schema Quality:** Organised field structures with semantic timestamps improve developer experience (v0.9.0)
* **API Simplicity:** Reduced endpoint count improves discoverability and reduces maintenance burden (v0.10.0)

### Design Considerations

* **Read-Only:** API is designed for data consumption only; no write operations are supported
* **Authentication Required:** All endpoints except `/auth/token` and `/utilities/health` require bearer token
* **Rate Limiting:** Standard rate limits will apply (to be documented separately)
* **Field Nullability:** Explicit nullable annotations provide clear implementation guidance
* **Payload Optimisation:** v0.3.0 structural improvements reduce payload size for users with many courses/lessons/certificates
* **Certificate Immutability:** Certificate grade represents achievement at issuance time and does not change even if source Progress is updated
* **Multiple Certificates:** Design allows multiple certificates per user/course combination (e.g., retakes with improved grades)
* **Timestamp Semantics:** Public API exposes business events rather than system metadata (v0.9.0)
* **Endpoint Patterns:** Different resource types have different endpoint patterns based on access patterns (v0.10.0)

### Future Evolution

* **Current Stage (v0.10.0):** Read-only API with comprehensive tracking capabilities including certificates and course localisation, simplified endpoint structure
* **Deferred:** Tests endpoint implementation deferred pending client demand (see Decision: Defer Tests Endpoint)
* **Stage 3 (Future):** Add endpoints for licence and credit tracking
* **Production Release:** Version 1.0.0 will be assigned when API is implemented and released to production

---

## Conclusion

The **API Design - Summary** folder represents **excellent progress** from initial proposal through ten design iterations. The comprehensive OpenAPI specification with inline examples, detailed data model documentation, thoughtful iterative improvements, and commitment to standards compliance demonstrate strong technical design capabilities.

### Key Achievements:

✅ **Complete API Specification:** OpenAPI 3.1 spec is production-ready with inline examples        
✅ **Comprehensive Data Models:** User, Course, Progress, LiveLesson, and Certificate models fully documented        
✅ **Iterative Refinement:** Ten versions show thoughtful evolution with continuous improvement        
✅ **Enhanced Developer Experience:** v0.4.0 inline examples and v0.9.0 schema organisation significantly improve developer experience        
✅ **Standards Compliance:** OpenAPI 3.1.0 compliant syntax ensures future tooling support        
✅ **Enterprise Features:** Multi-institution support, SSO, audit trails, live lesson tracking, certificate credentialing        
✅ **Design Excellence:** v0.3.0 structural improvements demonstrate sophisticated API design thinking        
✅ **Digital Credentialing:** v0.6.0 certificate tracking with immutable grade snapshots and comprehensive status management        
✅ **Informed Decision-Making:** Tests endpoint deferral demonstrates value-driven design approach        
✅ **API Simplification:** v0.8.0 user ID refinement and v0.10.0 endpoint simplification improve API clarity and reduce complexity        
✅ **Schema Quality:** v0.9.0 timestamp semantics and field organisation enhance semantic clarity

### Design Phase Assessment:

**Document Quality: 9.5/10**

* Technical Specification: 9/10
* Data Model Documentation: 10/10
* OpenAPI Specification: 10/10
* Documentation Quality: 9.5/10
* Architecture Documentation: 4/10 (needs improvement)
* Implementation Readiness: 9/10

**Design Phase Status:** ✅ **COMPLETE** - The design phase has successfully delivered a comprehensive, production-ready API specification. All ten design iterations (v0.1.0 through v0.10.0) are complete, with full OpenAPI 3.1 specification, detailed data models, and comprehensive documentation.

**Design Phase Outcome:** The API design demonstrates exceptional quality with strong technical specifications, comprehensive data models, and thoughtful iterative improvements. The specification is ready to transition to the implementation phase.

**Timeline Estimate:** With architecture and implementation details completed (estimated 1-2 weeks of additional documentation), implementation can begin immediately. MVP could be delivered in 3-4 months.

**Recommendation:** ✅ **APPROVE for Implementation** - Proceed with addressing critical gaps (architecture and implementation details) while beginning development work in parallel. The OpenAPI specification with inline examples is strong enough to support parallel work streams and will significantly accelerate development.

**Risk Assessment:** **LOW-MEDIUM** - Main risk is implementation efficiency without architecture documentation. Address architecture and implementation details gaps early to maximize development velocity. The enhanced documentation in v0.4.0, v0.5.0, v0.6.0, v0.7.0, v0.8.0, v0.9.0, and v0.10.0 reduces some implementation risk by providing clearer examples and expectations.

---

## Next Steps

The design phase is complete and the API specification is ready for implementation. The following activities will support the transition from design to implementation:

### 🔴 Critical (Before Implementation Start)

1. **Create Architecture Documentation**

    * System architecture diagrams
    * Data flow specifications
    * Component interaction diagrams
    * Deployment architecture
    
2. **Specify Implementation Details**

    * Data source mapping (User, Course, Progress, LiveLesson, Certificate data sources)
    * Data transformation logic
    * Caching strategy and TTL values
    * Rate limiting thresholds (requests per minute/hour)
    
3. **Define Security Implementation**

    * JWT token management (signing keys, rotation)
    * Client credential storage and management
    * Scope validation per endpoint
    * Rate limiting by client ID
    

### 🟠 High Priority (Before Production)

4. **Create Testing Specification**

    * Unit testing approach
    * Integration testing strategy
    * API contract testing using OpenAPI spec
    * Performance benchmarks and load testing
    
5. **Document Deployment and Operations**

    * Deployment pipeline and environments
    * Monitoring metrics and alerting
    * Health check dependencies
    * Logging strategy
    
6. **Address Data Mapping**

    * Internal → API ID mapping documentation
    * Course identifier standardisation
    * Data transformation rules
    

### 🟡 Medium Priority (Can Be Parallel or Post-MVP)

7. **Define API Versioning Policy**

    * Version lifecycle and deprecation policy
    * Breaking change definitions
    * Migration guides
    
8. **Complete Observability Specification**

    * Metrics, tracing, logging details
    * Error tracking integration
    * Performance monitoring setup
    
9. **Create Developer Onboarding Guide**

    * Quick start guide
    * Common integration patterns
    * SDK examples (if applicable)
    

---

**Review Completion Date:** January 7, 2026 (Updated)        
**Next Review:** After architecture documentation completion or at implementation milestone        
**Design Phase:** ✅ **COMPLETE** - Ready for implementation phase

---

<a id="early-design-iterations"></a>
## 📁 Early Design Iterations

<a id="v010-initial"></a>
## v0.1.0 Initial

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7401799681/v0.1.0+Initial

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | DESIGN |
| **Version** | 0.1.0 |
| **Design Date** | 24/10/2025 |
| **Status** | DRAFT |
| **Authors** | <custom data-type="mention" data-id="id-0">@Dan Martinez</custom> |

**Versioning Note:** This API uses semantic versioning. Version 0.x.x indicates design/pre-release phase. Version 1.0.0 will be assigned when the API is implemented and released to production.

---

## Overview

This is the initial design specification for the Busuu Nexus Core API, providing read-only access to core Busuu learning data including enhanced user information with organisational context, optimised course catalogues with provider-level metadata, and aligned progress tracking with course duration consistency. Designed for enterprise LMS connectors and institutional integrations.

**Note:** This API has not been implemented yet. This document represents the design specification.

---

## Key Features

### Core Capabilities

* **Authentication**: OAuth2 client credentials flow with JWT bearer tokens for secure API access
* **Users API**: Enhanced user information with organisational context including institution, department, role, and team assignments
* **Courses API**: Optimised course catalogues with provider-level metadata, CEFR levels, and SSO launch URLs
* **Progress API**: Aligned learning progress tracking with course duration consistency and completion status
* **Utilities**: Health check endpoints for API monitoring and status verification

### API Characteristics

* **Read-Only**: All endpoints are GET operations, ensuring data integrity
* **Pagination**: Consistent pagination across all list endpoints (default 25 items, maximum 100 per page)
* **Filtering**: Robust filtering options on all list endpoints (status, role, level, search, etc.)
* **Error Handling**: Standardised error response format with error codes, messages, and request IDs for debugging
* **Security**: Bearer token authentication required for all endpoints except authentication and health check

### Supported Resources

1. **Users** - Organisation members with roles and permissions
2. **Courses** - Language learning courses with CEFR levels and difficulty ratings
3. **Progress** - Learning progress records with completion tracking
4. **Utilities** - System health and monitoring endpoints

---

## API Response Examples

This section documents the complete response structures returned by each API endpoint. These examples show actual payloads clients receive, including wrapper objects, pagination, and provider context.

### Authentication Responses

#### POST `/auth/token` - Successful Authentication

```json
{
  "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "token_type": "Bearer",
  "expires_in": 3600,
  "scope": "read:users read:courses read:progress"
}
```

**Response Structure Notes:**

* **access_token**: JWT bearer token to be included in Authorization header for subsequent requests
* **token_type**: Always "Bearer" for this API
* **expires_in**: Token validity in seconds (3600 = 1 hour)
* **scope**: Granted permissions for this token

---

### User Responses

#### GET `/users` - List All Users

```json
{
  "data": [
    {
      "id": "user-123",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "institutionId": "550e8400-e29b-41d4-a716-446655440000",
      "status": "active",
      "role": "admin",
      "email": "john.doe@example.com",
      "username": "johnd123",
      "firstName": "John",
      "lastName": "Doe",
      "department": "Accounts",
      "countryCode": "FR",
      "employeeId": "id12345678",
      "team": "A-team",
      "createdAt": "2025-01-20T21:01:58Z",
      "updatedAt": "2025-01-20T21:01:58Z",
      "expiresAt": "2026-01-20T21:01:58Z",
      "lastActiveAt": "2025-01-20T21:01:58Z",
      "removedAt": null
    },
    {
      "id": "user-456",
      "userId": "b3c4d5e6-f7a8-5b9c-0d1e-2f3a4b5c6d7e",
      "institutionId": "550e8400-e29b-41d4-a716-446655440000",
      "status": "active",
      "role": "student",
      "email": "jane.smith@example.com",
      "username": "janes456",
      "firstName": "Jane",
      "lastName": "Smith",
      "department": "Marketing",
      "countryCode": "GB",
      "employeeId": "id87654321",
      "team": "B-team",
      "createdAt": "2025-01-18T14:30:00Z",
      "updatedAt": "2025-01-19T09:15:00Z",
      "expiresAt": "2026-01-18T14:30:00Z",
      "lastActiveAt": "2025-01-21T16:45:00Z",
      "removedAt": null
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 150,
    "totalPages": 6,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **data**: Array of user objects, each containing complete user information
* **pagination**: Standard pagination metadata included in all list responses
* All user fields are populated in v0.1.0 design (no explicit nullable annotations)

---

#### GET `/users/{id}` - Get Specific User

```json
{
  "id": "user-123",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "admin",
  "email": "john.doe@example.com",
  "username": "johnd123",
  "firstName": "John",
  "lastName": "Doe",
  "department": "Accounts",
  "countryCode": "FR",
  "employeeId": "id12345678",
  "team": "A-team",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z",
  "expiresAt": "2026-01-20T21:01:58Z",
  "lastActiveAt": "2025-01-20T21:01:58Z",
  "removedAt": null
}
```

**Response Structure Notes:**

* Returns single user object directly (no wrapper)
* No pagination for single resource endpoint
* All fields populated according to v0.1.0 design

---

### Course Responses

#### GET `/courses` - List All Courses

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://path/to/logo.jpg"
  },
  "data": [
    {
      "id": "pack_level_en_a1",
      "title": "English A1 - Beginner",
      "description": "Complete beginner course for English language learning",
      "level": "A1",
      "difficulty": {
        "value": "beginner",
        "label": "Beginner",
        "order": 1
      },
      "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
      "duration": 1110,
      "language": "English",
      "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
      "status": "active",
      "publishedAt": "2024-06-15T10:00:00Z",
      "createdAt": "2024-06-01T09:00:00Z",
      "updatedAt": "2024-06-15T10:00:00Z"
    },
    {
      "id": "pack_level_es_a2",
      "title": "Spanish A2 - Elementary",
      "description": "Elementary level Spanish for progressing learners",
      "level": "A2",
      "difficulty": {
        "value": "elementary",
        "label": "Elementary",
        "order": 2
      },
      "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
      "duration": 1260,
      "language": "Spanish",
      "thumbnailUrl": "https://cdn.busuu.com/courses/es-a2-thumbnail.jpg",
      "status": "active",
      "publishedAt": "2024-06-20T10:00:00Z",
      "createdAt": "2024-06-05T09:00:00Z",
      "updatedAt": "2024-06-20T10:00:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 48,
    "totalPages": 2,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **provider**: Top-level context about the content provider, included in all course list responses
* **data**: Array of course objects matching the Course schema
* **pagination**: Standard pagination metadata
* Note: In v0.1.0 design, `language` and `thumbnailUrl` are NOT required fields

---

#### GET `/courses/{id}` - Get Specific Course

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://path/to/logo.jpg"
  },
  "course": {
    "id": "pack_level_en_a1",
    "title": "English A1 - Beginner",
    "description": "Complete beginner course for English language learning",
    "level": "A1",
    "difficulty": {
      "value": "beginner",
      "label": "Beginner",
      "order": 1
    },
    "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
    "duration": 1110,
    "language": "English",
    "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
    "status": "active",
    "publishedAt": "2024-06-15T10:00:00Z",
    "createdAt": "2024-06-01T09:00:00Z",
    "updatedAt": "2024-06-15T10:00:00Z"
  }
}
```

**Response Structure Notes:**

* **provider**: Same provider context as list endpoint
* **course**: Single course object (note singular "course" vs "courses" in list endpoint)
* No pagination for single resource endpoint

---

### Progress Responses

#### GET `/progress` - List All Progress Records

```json
{
  "data": [
    {
      "id": "progress-123",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "courseId": "pack_level_en_a1",
      "status": "completed",
      "progressPercentage": 100,
      "lessonsCompleted": 20,
      "lessonsTotal": 20,
      "result": "pass",
      "score": 92,
      "learningDuration": 1110,
      "startedAt": "2025-01-15T10:00:00Z",
      "completedAt": "2025-01-20T15:30:00Z",
      "lastAccessedAt": "2025-01-20T15:30:00Z",
      "createdAt": "2025-01-15T10:00:00Z",
      "updatedAt": "2025-01-20T15:30:00Z"
    },
    {
      "id": "progress-456",
      "userId": "b3c4d5e6-f7a8-5b9c-0d1e-2f3a4b5c6d7e",
      "courseId": "pack_level_es_a2",
      "status": "in_progress",
      "progressPercentage": 45,
      "lessonsCompleted": 9,
      "lessonsTotal": 20,
      "result": null,
      "score": null,
      "learningDuration": 0,
      "startedAt": "2025-01-18T14:00:00Z",
      "completedAt": null,
      "lastAccessedAt": "2025-01-21T10:15:00Z",
      "createdAt": "2025-01-18T14:00:00Z",
      "updatedAt": "2025-01-21T10:15:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 487,
    "totalPages": 20,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **data**: Array of progress objects, each containing userId (since this is a global progress list)
* **pagination**: Standard pagination metadata
* Note: Progress records include `userId` in this endpoint since it's a cross-user list
* Shows both "completed" and "in_progress" states

---

#### GET `/progress/{id}` - Get Specific Progress Record

```json
{
  "id": "progress-123",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "courseId": "pack_level_en_a1",
  "status": "completed",
  "progressPercentage": 100,
  "lessonsCompleted": 20,
  "lessonsTotal": 20,
  "result": "pass",
  "score": 92,
  "learningDuration": 1110,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": "2025-01-20T15:30:00Z",
  "lastAccessedAt": "2025-01-20T15:30:00Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T15:30:00Z"
}
```

**Response Structure Notes:**

* Returns single progress object directly (no wrapper)
* Includes `userId` field since this is a standalone progress record
* No pagination for single resource endpoint

---

#### GET `/users/{id}/progress` - Get User Progress

**Version 0.1.0 Structure:**

```json
{
  "data": [
    {
      "id": "progress-123",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "courseId": "pack_level_en_a1",
      "status": "completed",
      "progressPercentage": 100,
      "lessonsCompleted": 20,
      "lessonsTotal": 20,
      "result": "pass",
      "score": 92,
      "learningDuration": 1110,
      "startedAt": "2025-01-15T10:00:00Z",
      "completedAt": "2025-01-20T15:30:00Z",
      "lastAccessedAt": "2025-01-20T15:30:00Z",
      "createdAt": "2025-01-15T10:00:00Z",
      "updatedAt": "2025-01-20T15:30:00Z"
    },
    {
      "id": "e3f4a5b6-c7d8-6e9f-0a1b-2c3d4e5f6a7b",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "courseId": "pack_level_fr_a1",
      "status": "in_progress",
      "progressPercentage": 35,
      "lessonsCompleted": 7,
      "lessonsTotal": 20,
      "result": null,
      "score": null,
      "learningDuration": 0,
      "startedAt": "2025-01-22T09:00:00Z",
      "completedAt": null,
      "lastAccessedAt": "2025-01-23T11:30:00Z",
      "createdAt": "2025-01-22T09:00:00Z",
      "updatedAt": "2025-01-23T11:30:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 5,
    "totalPages": 1,
    "hasNext": false,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **data**: Array of progress records, each still including the `userId` field
* **pagination**: Standard pagination for the list
* Note: In v0.1.0, the userId is redundant since the endpoint is user-specific, but included for consistency with the Progress schema
* This structure changes in v0.3.0 to include user context at the root level

---

### Utility Responses

#### GET `/utilities/health` - API Health Check (Healthy)

```json
{
  "status": "healthy",
  "timestamp": "2025-01-21T18:45:32Z",
  "version": "0.1.0",
  "uptime": 864237
}
```

**Response Structure Notes:**

* **status**: Either "healthy" or "unhealthy"
* **version**: API version number
* **uptime**: Time since API started, in seconds

---

#### GET `/utilities/health` - API Health Check (Unhealthy)

**HTTP Status: 503 Service Unavailable**

```json
{
  "status": "unhealthy",
  "timestamp": "2025-01-21T18:45:32Z",
  "errors": [
    "Database connection failed",
    "External service timeout"
  ]
}
```

**Response Structure Notes:**

* Returns 503 status code when unhealthy
* **errors**: Array of error messages describing the issues

---

### Error Responses

All endpoints may return standard error responses with the following structure:

#### 400 Bad Request

```json
{
  "code": "VALIDATION_ERROR",
  "message": "Invalid request parameters",
  "details": {
    "field": "page",
    "reason": "Must be a positive integer"
  },
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "req-a1b2c3d4e5f6"
}
```

---

#### 401 Unauthorized

```json
{
  "code": "UNAUTHORIZED",
  "message": "Invalid or expired access token",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "req-a1b2c3d4e5f6"
}
```

---

#### 403 Forbidden

```json
{
  "code": "FORBIDDEN",
  "message": "Insufficient permissions to access this resource",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "req-a1b2c3d4e5f6"
}
```

---

#### 404 Not Found

```json
{
  "code": "NOT_FOUND",
  "message": "Resource not found",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "req-a1b2c3d4e5f6"
}
```

---

#### 500 Internal Server Error

```json
{
  "code": "INTERNAL_ERROR",
  "message": "An unexpected error occurred",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "req-a1b2c3d4e5f6"
}
```

---

## Data Model Examples

This section documents the individual schemas/models used throughout the API. These are the building blocks that compose the API responses shown in the previous section.

### User Model

```json
{
  "id": "user-123",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "admin",
  "email": "john.doe@example.com",
  "username": "johnd123",
  "firstName": "John",
  "lastName": "Doe",
  "department": "Accounts",
  "countryCode": "FR",
  "employeeId": "id12345678",
  "team": "A-team",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z",
  "expiresAt": "2026-01-20T21:01:58Z",
  "lastActiveAt": "2025-01-20T21:01:58Z",
  "removedAt": null
}
```

**Key Points:**

* **Dual IDs**: `id` is the unique identifier (UUID format), `userId` is the UUID format identifier
* **Organisation Context**: Includes `institutionId`, `department`, `role`, and `team` for organisational hierarchy
* **Status Tracking**: `status` indicates if user is "active" or "removed"
* **Roles**: Three role types available - "admin", "team lead", "student"
* **Timestamps**: Full audit trail with creation, update, expiration, last active, and deletion dates
* **All fields required**: In v0.1.0 design, all fields are specified as required in the schema

---

### Course Model

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "level": "A1",
  "difficulty": {
    "value": "beginner",
    "label": "Beginner",
    "order": 1
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 1110,
  "language": "English",
  "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
  "status": "active",
  "publishedAt": "2024-06-15T10:00:00Z",
  "createdAt": "2024-06-01T09:00:00Z",
  "updatedAt": "2024-06-15T10:00:00Z"
}
```

**Key Points:**

* **CEFR Levels**: Six standard levels supported (A1, A2, B1, B2, C1)
* **Difficulty Object**: Structured difficulty with value, human-readable label, and numeric order (1-5)
* **Templated URL**: `launchUrl` uses placeholders for SSO integration
* **Duration**: Specified in minutes (1110 minutes = 18.5 hours for this example)
* **Course Status**: Can be "active" or "archived"
* **In v0.1.0 design**: `language` and `thumbnailUrl` are NOT required fields

---

### Progress Model

```json
{
  "id": "progress-123",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "courseId": "pack_level_en_a1",
  "status": "in_progress",
  "progressPercentage": 75,
  "lessonsCompleted": 15,
  "lessonsTotal": 20,
  "result": null,
  "score": null,
  "learningDuration": 1110,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": null,
  "lastAccessedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

**Key Points:**

* **Status Values**: Either "in_progress" or "completed"
* **Progress Tracking**: Combines `progressPercentage` with concrete `lessonsCompleted`/`lessonsTotal` counts
* **Completion Fields**: `result` (pass/fail) and `score` only populated when status is "completed"
* **Learning Duration**: Initially displays course duration, represents total learning time
* **Nullable Fields**: `completedAt`, `result`, and `score` can be null for in_progress courses

---

## Design Benefits

### Advantages

* **Unified Access**: Single API provides access to users, courses, and progress data for LMS integration
* **Enterprise Ready**: Built-in support for multi-institution deployments with organisation hierarchies
* **Standards-Based**: Uses OAuth2, JWT, OpenAPI 3.1, and CEFR language levels
* **Developer Friendly**: Consistent pagination, filtering, and error handling patterns across all endpoints
* **Production Quality**: Comprehensive error handling, request tracking, and monitoring capabilities

### Design Considerations

* **Read-Only**: API is designed for data consumption only; no write operations are supported
* **Authentication Required**: All endpoints except `/auth/token` and `/utilities/health` require bearer token
* **Rate Limiting**: Standard rate limits will apply (to be documented separately)
* **Field Requirements**: In v0.1.0 design, many fields are marked as required even if they may be optional in practice

### Future Evolution

* **Initial Design**: As this is v0.1.0, this represents the baseline design
* **Iterative Improvements**: Future design iterations (v0.x.x) will refine the specification based on feedback
* **Release Version**: Version 1.0.0 will be assigned when API is implemented and released to production
* **Major Changes**: Significant design changes will result in new major versions (v2.0.0)

---

## API Endpoints Overview

| Method | Endpoint | Description |
| --- | --- | --- |
| POST | `/auth/token` | Obtain access token |
| GET | `/users` | List all users |
| GET | `/users/{id}` | Get specific user |
| GET | `/courses` | List all courses |
| GET | `/courses/{id}` | Get specific course |
| GET | `/progress` | List all progress |
| GET | `/progress/{id}` | Get specific progress |
| GET | `/users/{id}/progress` | Get user progress |
| GET | `/utilities/health` | API health check |

---

## Complete OpenAPI Specification

The complete OpenAPI specification for this version is maintained in a separate YAML file:

**File:** `Busuu_Nexus_Core_API_v0.1.0.yml`

**Location:** [View YAML specification](#) _(link to be added when file is uploaded)_

For human-readable documentation and examples, refer to the sections above in this document.

---

<a id="v020-iteration"></a>
## v0.2.0 Iteration

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7401832449/v0.2.0+Iteration

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | DESIGN |
| **Version** | 0.2.0 |
| **Design Date** | 24/10/2025 |
| **Status** | DRAFT |
| **Authors** | @Dan Martinez |

---

## Overview

Version 0.2.0 refines the initial design specification with improved nullable field annotations and more realistic example data. The API continues to provide read-only access to core Busuu learning data including enhanced user information with organisational context, optimised course catalogues with provider-level metadata, and aligned progress tracking with course duration consistency. Designed for enterprise LMS connectors and institutional integrations.

**Note:** This API has not been implemented yet. This document represents a design specification iteration.

---

## Summary of Changes

### 1. User Schema Improvements

**What Changed:**

* `username`, `firstName`, `lastName`, `department`, `countryCode`, `employeeId`, `team`, and `removedAt` now explicitly marked as nullable
* Updated example `id` from simple strings like `"user-123"` to realistic UUIDs

**Why:**

* More accurately reflects real-world data scenarios where not all user fields are always populated
* UUID-based identifiers match actual implementation patterns in production systems

**Impact:**

* Non-breaking enhancement - clarifies which fields are optional in implementation
* Provides clearer guidance for API consumers on data expectations

---

### 2. Course Schema Enhancements

**What Changed:**

* `language` and `thumbnailUrl` changed from optional to required fields
* Ensures all courses have consistent metadata

**Why:**

* Design decision to guarantee all courses have complete display information
* Improves consistency for course catalogue integrations

**Impact:**

* Potential breaking change if implementations were not including these fields
* All courses must now provide language and thumbnail information

---

### 3. Progress Schema Updates

**What Changed:**

* `completedAt`, `result`, and `score` now explicitly marked as nullable
* Updated example `id` to UUID format for consistency

**Why:**

* Better represents the in_progress state where completion fields are not yet populated
* Aligns with industry best practices for identifier generation

**Impact:**

* Non-breaking enhancement - clarifies field behaviour during in_progress state
* More realistic examples for developers

---

### 4. Authentication Example Updates

**What Changed:**

* Updated `client_id` example from `"busuu-lms-connector"` to `"client-id-here"`
* Updated `client_secret` example from `"secret-key-here"` to `"client-secret-here"`

**Why:**

* More generic examples avoid confusion about specific client configurations
* Clearer template for documentation purposes

**Impact:**

* Documentation improvement only - no structural changes to authentication flow

---

## API Response Examples

This section documents the complete response structures returned by each API endpoint. These examples show actual payloads clients receive, including wrapper objects, pagination, and provider context.

### Authentication Responses

#### POST `/auth/token` - Successful Authentication

```json
{
  "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "token_type": "Bearer",
  "expires_in": 3600,
  "scope": "read:users read:courses read:progress"
}
```

**Response Structure Notes:**

* **access_token**: JWT bearer token to be included in Authorization header for subsequent requests
* **token_type**: Always "Bearer" for this API
* **expires_in**: Token validity in seconds (3600 = 1 hour)
* **scope**: Granted permissions for this token

---

### User Responses

#### GET `/users` - List All Users

```json
{
  "data": [
    {
      "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "institutionId": "550e8400-e29b-41d4-a716-446655440000",
      "status": "active",
      "role": "admin",
      "email": "john.doe@example.com",
      "username": "johnd123",
      "firstName": "John",
      "lastName": "Doe",
      "department": "Accounts",
      "countryCode": "FR",
      "employeeId": "id12345678",
      "team": "A-team",
      "createdAt": "2025-01-20T21:01:58Z",
      "updatedAt": "2025-01-20T21:01:58Z",
      "expiresAt": "2026-01-20T21:01:58Z",
      "lastActiveAt": "2025-01-20T21:01:58Z",
      "removedAt": null
    },
    {
      "id": "g2f3e4d5-c6b7-5d8e-9f0a-1b2c3d4e5f6g",
      "userId": "b3c4d5e6-f7a8-5b9c-0d1e-2f3a4b5c6d7e",
      "institutionId": "550e8400-e29b-41d4-a716-446655440000",
      "status": "active",
      "role": "student",
      "email": "jane.smith@example.com",
      "username": "janes456",
      "firstName": "Jane",
      "lastName": "Smith",
      "department": "Marketing",
      "countryCode": "GB",
      "employeeId": "id87654321",
      "team": "B-team",
      "createdAt": "2025-01-18T14:30:00Z",
      "updatedAt": "2025-01-19T09:15:00Z",
      "expiresAt": "2026-01-18T14:30:00Z",
      "lastActiveAt": "2025-01-21T16:45:00Z",
      "removedAt": null
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 150,
    "totalPages": 6,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **data**: Array of user objects with UUID-based identifiers (v0.2.0 improvement)
* **pagination**: Standard pagination metadata included in all list responses
* Note: `removedAt` shown as null, demonstrating nullable field behaviour

---

#### GET `/users/{id}` - Get Specific User

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "admin",
  "email": "john.doe@example.com",
  "username": "johnd123",
  "firstName": "John",
  "lastName": "Doe",
  "department": "Accounts",
  "countryCode": "FR",
  "employeeId": "id12345678",
  "team": "A-team",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z",
  "expiresAt": "2026-01-20T21:01:58Z",
  "lastActiveAt": "2025-01-20T21:01:58Z",
  "removedAt": null
}
```

**Response Structure Notes:**

* Returns single user object directly (no wrapper)
* Uses UUID format for `id` field (v0.2.0 improvement)
* No pagination for single resource endpoint

---

### Course Responses

#### GET `/courses` - List All Courses

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://cdn.busuu.com/assets/busuu-logo.png"
  },
  "data": [
    {
      "id": "pack_level_en_a1",
      "title": "English A1 - Beginner",
      "description": "Complete beginner course for English language learning",
      "level": "A1",
      "difficulty": {
        "value": "beginner",
        "label": "Beginner",
        "order": 1
      },
      "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
      "duration": 1110,
      "language": "English",
      "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
      "status": "active",
      "publishedAt": "2024-06-15T10:00:00Z",
      "createdAt": "2024-06-01T09:00:00Z",
      "updatedAt": "2024-06-15T10:00:00Z"
    },
    {
      "id": "pack_level_es_a2",
      "title": "Spanish A2 - Elementary",
      "description": "Elementary level Spanish for progressing learners",
      "level": "A2",
      "difficulty": {
        "value": "elementary",
        "label": "Elementary",
        "order": 2
      },
      "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
      "duration": 1260,
      "language": "Spanish",
      "thumbnailUrl": "https://cdn.busuu.com/courses/es-a2-thumbnail.jpg",
      "status": "active",
      "publishedAt": "2024-06-20T10:00:00Z",
      "createdAt": "2024-06-05T09:00:00Z",
      "updatedAt": "2024-06-20T10:00:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 48,
    "totalPages": 2,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **provider**: Top-level context about the content provider, included in all course list responses
* **data**: Array of course objects, now ALL include `language` and `thumbnailUrl` (v0.2.0 requirement)
* **pagination**: Standard pagination metadata

---

#### GET `/courses/{id}` - Get Specific Course

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://cdn.busuu.com/assets/busuu-logo.png"
  },
  "course": {
    "id": "pack_level_en_a1",
    "title": "English A1 - Beginner",
    "description": "Complete beginner course for English language learning",
    "level": "A1",
    "difficulty": {
      "value": "beginner",
      "label": "Beginner",
      "order": 1
    },
    "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
    "duration": 1110,
    "language": "English",
    "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
    "status": "active",
    "publishedAt": "2024-06-15T10:00:00Z",
    "createdAt": "2024-06-01T09:00:00Z",
    "updatedAt": "2024-06-15T10:00:00Z"
  }
}
```

**Response Structure Notes:**

* **provider**: Same provider context as list endpoint
* **course**: Single course object (note singular "course" vs "courses" in list endpoint)
* Now includes required `language` and `thumbnailUrl` fields (v0.2.0 change)

---

### Progress Responses

#### GET `/progress` - List All Progress Records

```json
{
  "data": [
    {
      "id": "c1d2e3f4-a5b6-4c7d-8e9f-0a1b2c3d4e5f",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "courseId": "pack_level_en_a1",
      "status": "completed",
      "progressPercentage": 100,
      "lessonsCompleted": 20,
      "lessonsTotal": 20,
      "result": "pass",
      "score": 92,
      "learningDuration": 1110,
      "startedAt": "2025-01-15T10:00:00Z",
      "completedAt": "2025-01-20T15:30:00Z",
      "lastAccessedAt": "2025-01-20T15:30:00Z",
      "createdAt": "2025-01-15T10:00:00Z",
      "updatedAt": "2025-01-20T15:30:00Z"
    },
    {
      "id": "d2e3f4a5-b6c7-5d8e-9f0a-1b2c3d4e5f6a",
      "userId": "b3c4d5e6-f7a8-5b9c-0d1e-2f3a4b5c6d7e",
      "courseId": "pack_level_es_a2",
      "status": "in_progress",
      "progressPercentage": 45,
      "lessonsCompleted": 9,
      "lessonsTotal": 20,
      "result": null,
      "score": null,
      "learningDuration": 0,
      "startedAt": "2025-01-18T14:00:00Z",
      "completedAt": null,
      "lastAccessedAt": "2025-01-21T10:15:00Z",
      "createdAt": "2025-01-18T14:00:00Z",
      "updatedAt": "2025-01-21T10:15:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 487,
    "totalPages": 20,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **data**: Array of progress objects with UUID identifiers (v0.2.0 improvement)
* Shows both completed and in_progress states
* Note: Nullable fields (`completedAt`, `result`, `score`) shown as null for in_progress record

---

#### GET `/progress/{id}` - Get Specific Progress Record

```json
{
  "id": "c1d2e3f4-a5b6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "courseId": "pack_level_en_a1",
  "status": "completed",
  "progressPercentage": 100,
  "lessonsCompleted": 20,
  "lessonsTotal": 20,
  "result": "pass",
  "score": 92,
  "learningDuration": 1110,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": "2025-01-20T15:30:00Z",
  "lastAccessedAt": "2025-01-20T15:30:00Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T15:30:00Z"
}
```

**Response Structure Notes:**

* Returns single progress object directly (no wrapper)
* Uses UUID format for identifiers (v0.2.0 improvement)
* Includes `userId` field since this is a standalone progress record

---

#### GET `/users/{id}/progress` - Get User Progress

**Version 0.2.0 Structure:**

```json
{
  "data": [
    {
      "id": "c1d2e3f4-a5b6-4c7d-8e9f-0a1b2c3d4e5f",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "courseId": "pack_level_en_a1",
      "status": "completed",
      "progressPercentage": 100,
      "lessonsCompleted": 20,
      "lessonsTotal": 20,
      "result": "pass",
      "score": 92,
      "learningDuration": 1110,
      "startedAt": "2025-01-15T10:00:00Z",
      "completedAt": "2025-01-20T15:30:00Z",
      "lastAccessedAt": "2025-01-20T15:30:00Z",
      "createdAt": "2025-01-15T10:00:00Z",
      "updatedAt": "2025-01-20T15:30:00Z"
    },
    {
      "id": "e3f4a5b6-c7d8-6e9f-0a1b-2c3d4e5f6a7b",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "courseId": "pack_level_fr_a1",
      "status": "in_progress",
      "progressPercentage": 35,
      "lessonsCompleted": 7,
      "lessonsTotal": 20,
      "result": null,
      "score": null,
      "learningDuration": 0,
      "startedAt": "2025-01-22T09:00:00Z",
      "completedAt": null,
      "lastAccessedAt": "2025-01-23T11:30:00Z",
      "createdAt": "2025-01-22T09:00:00Z",
      "updatedAt": "2025-01-23T11:30:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 5,
    "totalPages": 1,
    "hasNext": false,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **data**: Array of progress records with UUID identifiers (v0.2.0)
* Each record still includes the `userId` field for consistency
* Note: In v0.2.0, the userId remains in each record; this structure changes in v0.3.0

---

### Utility Responses

#### GET `/utilities/health` - API Health Check (Healthy)

```json
{
  "status": "healthy",
  "timestamp": "2025-01-21T18:45:32Z",
  "version": "0.2.0",
  "uptime": 864237
}
```

**Response Structure Notes:**

* **status**: Either "healthy" or "unhealthy"
* **version**: Shows "0.2.0" for this API version
* **uptime**: Time since API started, in seconds

---

#### GET `/utilities/health` - API Health Check (Unhealthy)

**HTTP Status: 503 Service Unavailable**

```json
{
  "status": "unhealthy",
  "timestamp": "2025-01-21T18:45:32Z",
  "errors": [
    "Database connection failed",
    "External service timeout"
  ]
}
```

**Response Structure Notes:**

* Returns 503 status code when unhealthy
* **errors**: Array of error messages describing the issues

---

### Error Responses

All endpoints may return standard error responses with the following structure:

#### 400 Bad Request

```json
{
  "code": "VALIDATION_ERROR",
  "message": "Invalid request parameters",
  "details": {
    "field": "page",
    "reason": "Must be a positive integer"
  },
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "req-a1b2c3d4e5f6"
}
```

---

#### 401 Unauthorized

```json
{
  "code": "UNAUTHORIZED",
  "message": "Invalid or expired access token",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "req-a1b2c3d4e5f6"
}
```

---

#### 403 Forbidden

```json
{
  "code": "FORBIDDEN",
  "message": "Insufficient permissions to access this resource",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "req-a1b2c3d4e5f6"
}
```

---

#### 404 Not Found

```json
{
  "code": "NOT_FOUND",
  "message": "Resource not found",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "req-a1b2c3d4e5f6"
}
```

---

#### 500 Internal Server Error

```json
{
  "code": "INTERNAL_ERROR",
  "message": "An unexpected error occurred",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "req-a1b2c3d4e5f6"
}
```

---

## Data Model Examples

This section documents the individual schemas/models used throughout the API. These are the building blocks that compose the API responses shown in the previous section.

### User Model

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "admin",
  "email": "john.doe@example.com",
  "username": "johnd123",
  "firstName": "John",
  "lastName": "Doe",
  "department": "Accounts",
  "countryCode": "FR",
  "employeeId": "id12345678",
  "team": "A-team",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z",
  "expiresAt": "2026-01-20T21:01:58Z",
  "lastActiveAt": "2025-01-20T21:01:58Z",
  "removedAt": null
}
```

**Key Points:**

* **Dual IDs**: `id` is the unique identifier (UUID in v0.2.0), `userId` is the UUID format identifier
* **Organisation Context**: Includes `institutionId`, `department`, `role`, and `team` for organisational hierarchy
* **Status Tracking**: `status` indicates if user is "active" or "removed"
* **Roles**: Three role types available - "admin", "team lead", "student"
* **Timestamps**: Full audit trail with creation, update, expiration, last active, and deletion dates
* **Nullable Fields (v0.2.0)**: `username`, `firstName`, `lastName`, `department`, `countryCode`, `employeeId`, `team`, and `removedAt` explicitly marked as nullable

---

### Course Model

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "level": "A1",
  "difficulty": {
    "value": "beginner",
    "label": "Beginner",
    "order": 1
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 1110,
  "language": "English",
  "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
  "status": "active",
  "publishedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

**Key Points:**

* **CEFR Levels**: Six standard levels supported (A1, A2, B1, B2, C1, C2)
* **Difficulty Object**: Structured difficulty with value, human-readable label, and numeric order (1-5)
* **Templated URL**: `launchUrl` uses placeholders for SSO integration
* **Duration**: Specified in minutes (1110 minutes = 18.5 hours for this example)
* **Course Status**: Can be "active" or "archived"
* **In v0.2.0 design**: `language` and `thumbnailUrl` are now required fields (changed from v0.1.0)

---

### Progress Model

```json
{
  "id": "c1d2e3f4-a5b6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "courseId": "pack_level_en_a1",
  "status": "in_progress",
  "progressPercentage": 75,
  "lessonsCompleted": 15,
  "lessonsTotal": 20,
  "result": null,
  "score": null,
  "learningDuration": 0,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": null,
  "lastAccessedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

**Key Points:**

* **Status Values**: Either "in_progress" or "completed"
* **Progress Tracking**: Combines `progressPercentage` with concrete `lessonsCompleted`/`lessonsTotal` counts
* **Completion Fields**: `result` (pass/fail) and `score` only populated when status is "completed"
* **Learning Duration**: Initially 0 for in_progress, populated with course duration when completed
* **Nullable Fields (v0.2.0)**: `completedAt`, `status`, and `score` explicitly marked as nullable

---

## Design Comparison: v0.1.0 vs v0.2.0

| Aspect | v0.1.0 | v0.2.0 | Rationale |
| --- | --- | --- | --- |
| **User nullable fields** | Not explicitly specified | Explicitly marked as nullable | Clearer implementation guidance |
| **Progress nullable fields** | Not explicitly specified | Explicitly marked as nullable | Better represents in_progress state |
| **Course required fields** | `language` and `thumbnailUrl` optional | Now required | Ensures consistent course metadata |
| **Example IDs** | UUIDs (consistent) | UUIDs (consistent) | Maintained realistic implementation |
| **Documentation** | Basic field descriptions | Enhanced with nullable annotations | Improved developer experience |

---

## Design Benefits

### Advantages

* **Clearer Specification**: Explicit nullable annotations remove implementation ambiguity
* **Realistic Design**: UUID-based identifiers match real-world systems
* **Better Consistency**: All courses guaranteed to have language and thumbnail information
* **Improved Documentation**: Enhanced field descriptions and examples
* **Enterprise Ready**: Built-in support for multi-institution deployments with organisation hierarchies
* **Standards-Based**: Uses OAuth2, JWT, OpenAPI 3.1, and CEFR language levels

### Design Considerations

* **Read-Only**: API is designed for data consumption only; no write operations are supported
* **Authentication Required**: All endpoints except `/auth/token` and `/utilities/health` require bearer token
* **Rate Limiting**: Standard rate limits will apply (to be documented separately)
* **Field Nullability**: Implementation must properly handle nullable fields

### Future Evolution

* **Iterative Design**: v0.2.0 refines the v0.1.0 baseline based on review feedback
* **Continued Improvement**: Future iterations (v0.3.x, v0.4.x) will further refine the specification
* **Major Changes**: Significant structural changes will result in new major versions (v1.0.0 for production release)

---

## API Endpoints Overview

| Method | Endpoint | Description | Changes in v0.2.0 |
| --- | --- | --- | --- |
| POST | `/auth/token` | Obtain access token | Example updated with new client_id format |
| GET | `/users` | List all users | Nullable fields explicitly marked |
| GET | `/users/{id}` | Get specific user | Nullable fields explicitly marked |
| GET | `/courses` | List all courses | `language` and `thumbnailUrl` now required |
| GET | `/courses/{id}` | Get specific course | `language` and `thumbnailUrl` now required |
| GET | `/progress` | List all progress | Nullable completion fields marked |
| GET | `/progress/{id}` | Get specific progress | Nullable completion fields marked |
| GET | `/users/{id}/progress` | Get user progress | Nullable completion fields marked |
| GET | `/utilities/health` | API health check | Version number updated to 0.2.0 |

---

## Complete OpenAPI Specification

The complete OpenAPI specification for this version is maintained in a separate YAML file:

**File:** `Busuu_Nexus_Core_API_v0.2.0.yml`

**Location:** [View YAML specification](#) _(link to be added when file is uploaded)_

For human-readable documentation and examples, refer to the sections above in this document.

---

<a id="v030-iteration"></a>
## v0.3.0 Iteration

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7397965825/v0.3.0+Iteration

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | DESIGN |
| **Version** | 0.3.0 |
| **Design Date** | 28/10/2025 |
| **Status** | DRAFT |
| **Authors** | @Dan Martinez |

---

## Overview

Version 0.3.0 introduces a significant structural enhancement to the `/users/{id}/progress` endpoint, improving data organisation by elevating user context to the response root level and removing redundant userId fields from progress records. This change reduces payload size, improves semantic clarity, and provides better data structure for client applications while maintaining full backwards compatibility for all other endpoints.

---

## Key Features

### Core Capabilities

* **Authentication**: OAuth2 client credentials flow with JWT bearer tokens for secure API access
* **Users API**: Enhanced user information with organisational context including institution, department, role, and team assignments
* **Courses API**: Optimised course catalogues with provider-level metadata, CEFR levels, and SSO launch URLs
* **Progress API**: Aligned learning progress tracking with course duration consistency and completion status
* **Utilities**: Health check endpoints for API monitoring and status verification

### API Characteristics

* **Read-Only**: All endpoints are GET operations, ensuring data integrity
* **Pagination**: Consistent pagination across all list endpoints (default 25 items, maximum 100 per page)
* **Filtering**: Robust filtering options on all list endpoints (status, role, level, search, etc.)
* **Error Handling**: Standardised error response format with error codes, messages, and request IDs for debugging
* **Security**: Bearer token authentication required for all endpoints except authentication and health check

### Supported Resources

1. **Users** - Organisation members with roles and permissions
2. **Courses** - Language learning courses with CEFR levels and difficulty ratings
3. **Progress** - Learning progress records with completion tracking
4. **Utilities** - System health and monitoring endpoints

---

## Design Evolution in v0.3.0

### Improved `/users/{id}/progress` Endpoint Response Structure

The v0.3.0 design introduces an improved response structure with separate user context at the top level, and progress records no longer include the redundant `userId` field.

**Previous Design (v0.1.0 and v0.2.0):**

```json
{
  "data": [
    {
      "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",  // Redundant when querying specific user
      "courseId": "pack_level_en_a1",
      "status": "in_progress",
      // ... other progress fields
    }
  ],
  "pagination": { /* ... */ }
}
```

**New Design (v0.3.0):**

```json
{
  "user": {
    "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
    "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
    "email": "john.doe@example.com"
  },
  "data": [
    {
      "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      // userId field removed - provided in user context above
      "courseId": "pack_level_en_a1",
      "status": "in_progress",
      // ... other progress fields
    }
  ],
  "pagination": { /* ... */ }
}
```

**Design Benefits:**

* **Reduced Data Redundancy**: `userId` no longer repeated in every progress record
* **Clearer Separation**: User context distinct from progress data
* **Smaller Payloads**: More efficient data transfer, especially with many progress records
* **Better Semantics**: The response structure now clearly indicates "here's the user, and here's their progress"

---

#### New Schemas

**UserProgressResponse:**

Top-level response schema for `/users/{id}/progress` endpoint.

**Fields:**

* `user` (UserContext): Lightweight user identification
* `data` (ProgressWithoutUserId[]): Array of progress records without userId field
* `pagination` (Pagination): Standard pagination information

**UserContext:**

Lightweight user identification context for progress responses.

**Fields:**

* `id` (string): Unique user identifier
* `userId` (string, uuid): User UUID identifier
* `email` (string, email): User's email address

**ProgressWithoutUserId:**

Progress record schema without userId field, used in user-specific progress responses where user context is provided separately.

**Contains all fields from Progress schema except:**

* `userId` - This field is removed as it's provided in the parent user context

---

#### Design Decision: Course Title in Progress Responses

**Context:**

During the design review, a question was raised about whether to include course titles in progress response models for developer convenience and improved readability.

**Options Considered:**

**Option 1: Keep Current Design (courseId only)** ✅ **Selected**

* Progress records reference courses by ID only
* Course details obtained via `/courses/{id}` endpoint
* Maintains single source of truth for course data
* Follows strict separation of concerns

**Option 2: Include Course Title**

* Add `courseTitle` field to progress records
* Improves human readability
* Reduces need for additional API calls
* Introduces data duplication

**Option 3: Expand Parameter**

* Add optional `?expand=course` query parameter
* Allows consumers to choose enriched responses
* Includes full or partial course object when requested
* Maintains clean default response

**Decision:**

**Selected: Option 1 - Keep Current Design (courseId only)**

**Rationale:**

The current design adhering to REST best practices and maintaining architectural integrity outweighs the convenience benefits of including course titles. Key considerations:

**Data Integrity:**

* Course data (including titles) lives in the course resource as the single source of truth
* If a course title changes, only the course record needs updating, not historical progress records
* Prevents inconsistency between course and progress data

**Architectural Principles:**

* Maintains proper separation of concerns between resources
* Progress tracks user advancement, courses define content
* Resources should not duplicate data from other resources

**Flexibility:**

* Consumers can implement client-side data enrichment based on their specific needs
* Not all API consumers need course titles in progress responses
* Keeps API responses lean for performance-conscious integrations

**Standard REST Practice:**

* Well-architected REST APIs use resource references (IDs) rather than embedding related resources
* This pattern is consistent with industry standards (e.g., GitHub API, Stripe API)

**Future Consideration:**

If evidence emerges that API consumers frequently make additional `/courses/{id}` calls that cause performance issues, Option 3 (expand parameter) should be reconsidered. This would provide:

* Backward compatibility (default response unchanged)
* Consumer choice (opt-in enrichment)
* Industry-standard pattern (widely recognized `?expand` query parameter)

---

## API Response Examples

This section documents the complete response structures returned by each API endpoint. Unlike the Data Model Examples section which shows individual schemas, these examples demonstrate the actual payloads clients receive, including wrapper objects, pagination, and provider context.

### Authentication Responses

#### POST `/auth/token` - Successful Authentication

```json
{
  "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJjbGllbnQtaWQiLCJzY29wZSI6InJlYWQ6dXNlcnMgcmVhZDpjb3Vyc2VzIHJlYWQ6cHJvZ3Jlc3MiLCJpYXQiOjE2NDYwNjQwMDAsImV4cCI6MTY0NjA2NzYwMH0.signature",
  "token_type": "Bearer",
  "expires_in": 3600,
  "scope": "read:users read:courses read:progress"
}
```

**Response Structure Notes:**

* Standard OAuth2 token response format
* Bearer token should be included in Authorization header for authenticated requests
* Token expires after the time specified in `expires_in` (seconds)

---

### User Responses

#### GET `/users` - List All Users

```json
{
  "data": [
    {
      "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "institutionId": "550e8400-e29b-41d4-a716-446655440000",
      "status": "active",
      "role": "admin",
      "email": "john.doe@example.com",
      "username": "johnd123",
      "firstName": "John",
      "lastName": "Doe",
      "department": "Accounts",
      "countryCode": "FR",
      "employeeId": "empId12345678",
      "team": "A-team",
      "createdAt": "2025-01-20T21:01:58Z",
      "updatedAt": "2025-01-20T21:01:58Z",
      "expiresAt": "2026-01-20T21:01:58Z",
      "lastActiveAt": "2025-01-20T21:01:58Z",
      "removedAt": null
    },
    {
      "id": "12f3e4d5-c6b7-5d8e-9f0a-1b2c3d4e5f61",
      "userId": "b3c4d5e6-f7a8-5b9c-0d1e-2f3a4b5c6d7e",
      "institutionId": "550e8400-e29b-41d4-a716-446655440000",
      "status": "active",
      "role": "student",
      "email": "jane.smith@example.com",
      "username": "janes456",
      "firstName": "Jane",
      "lastName": "Smith",
      "department": "Marketing",
      "countryCode": "GB",
      "employeeId": "EMP-87654321",
      "team": "B-team",
      "createdAt": "2025-01-18T14:30:00Z",
      "updatedAt": "2025-01-19T09:15:00Z",
      "expiresAt": "2026-01-18T14:30:00Z",
      "lastActiveAt": "2025-01-21T16:45:00Z",
      "removedAt": null
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 150,
    "totalPages": 6,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* Standard list response with data array and pagination object
* All `id`, `userId`, and `institutionId` fields use UUID format
* Nullable fields (`username`, `firstName`, `lastName`, `department`, `countryCode`, `employeeId`, `team`, `removedAt`) may be null
* All users share the same institutionId within an institution
* Status can be "active" or "removed"
* Role determines permission level: "admin", "team lead", or "student"

---

#### GET `/users/{id}` - Get Specific User

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "admin",
  "email": "john.doe@example.com",
  "username": "johnd123",
  "firstName": "John",
  "lastName": "Doe",
  "department": "Accounts",
  "countryCode": "FR",
  "employeeId": "empId12345678",
  "team": "A-team",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z",
  "expiresAt": "2026-01-20T21:01:58Z",
  "lastActiveAt": "2025-01-20T21:01:58Z",
  "removedAt": null
}
```

**Response Structure Notes:**

* Returns single user object directly (no wrapper)
* No pagination for single resource endpoint
* All fields match the User schema definition
* UUID format used for all identifier fields

---

### Course Responses

#### GET `/courses` - List All Courses

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://cdn.busuu.com/assets/busuu-logo.png"
  },
  "data": [
    {
      "id": "pack_level_en_a1",
      "title": "English A1 - Beginner",
      "description": "Complete beginner course for English language learning",
      "level": "A1",
      "difficulty": {
        "value": "beginner",
        "label": "Beginner",
        "order": 1
      },
      "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
      "duration": 1110,
      "language": "English",
      "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
      "status": "active",
      "publishedAt": "2024-06-15T10:00:00Z",
      "createdAt": "2024-06-01T09:00:00Z",
      "updatedAt": "2024-06-15T10:00:00Z"
    },
    {
      "id": "pack_level_es_a2",
      "title": "Spanish A2 - Elementary",
      "description": "Elementary level Spanish course building on beginner knowledge",
      "level": "A2",
      "difficulty": {
        "value": "elementary",
        "label": "Elementary",
        "order": 2
      },
      "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
      "duration": 1250,
      "language": "Spanish",
      "thumbnailUrl": "https://cdn.busuu.com/courses/es-a2-thumbnail.jpg",
      "status": "active",
      "publishedAt": "2024-07-20T12:00:00Z",
      "createdAt": "2024-07-05T08:30:00Z",
      "updatedAt": "2024-07-20T12:00:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 48,
    "totalPages": 2,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **provider**: Top-level context about the content provider (Busuu), included in all course list responses
* **data**: Array of course objects matching the Course schema
* **pagination**: Standard pagination metadata
* **launchUrl**: Contains template variables `{{institutionId}}` and `{{courseId}}` that should be replaced with actual values when launching courses
* **difficulty**: Nested object with value (enum), label (display name), and order (1-5 ranking)

---

#### GET `/courses/{id}` - Get Specific Course

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://cdn.busuu.com/assets/busuu-logo.png"
  },
  "course": {
    "id": "pack_level_en_a1",
    "title": "English A1 - Beginner",
    "description": "Complete beginner course for English language learning",
    "level": "A1",
    "difficulty": {
      "value": "beginner",
      "label": "Beginner",
      "order": 1
    },
    "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
    "duration": 1110,
    "language": "English",
    "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
    "status": "active",
    "publishedAt": "2024-06-15T10:00:00Z",
    "createdAt": "2024-06-01T09:00:00Z",
    "updatedAt": "2024-06-15T10:00:00Z"
  }
}
```

**Response Structure Notes:**

* **provider**: Same provider context as list endpoint
* **course**: Single course object (note singular "course" vs "courses" in list endpoint)
* No pagination for single resource endpoint

---

### Progress Responses

#### GET `/progress` - List All Progress Records

```json
{
  "data": [
    {
      "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "courseId": "pack_level_en_a1",
      "status": "completed",
      "progressPercentage": 100,
      "lessonsCompleted": 20,
      "lessonsTotal": 20,
      "result": "pass",
      "score": 92,
      "learningDuration": 1110,
      "startedAt": "2025-01-15T10:00:00Z",
      "completedAt": "2025-01-20T15:30:00Z",
      "lastAccessedAt": "2025-01-20T15:30:00Z",
      "createdAt": "2025-01-15T10:00:00Z",
      "updatedAt": "2025-01-20T15:30:00Z"
    },
    {
      "id": "a9b8c7d6-e5f4-3a2b-1c0d-9e8f7a6b5c4d",
      "userId": "b3c4d5e6-f7a8-5b9c-0d1e-2f3a4b5c6d7e",
      "courseId": "pack_level_fr_a1",
      "status": "in_progress",
      "progressPercentage": 45,
      "lessonsCompleted": 9,
      "lessonsTotal": 20,
      "result": null,
      "score": null,
      "learningDuration": 0,
      "startedAt": "2025-01-18T14:00:00Z",
      "completedAt": null,
      "lastAccessedAt": "2025-01-21T11:30:00Z",
      "createdAt": "2025-01-18T14:00:00Z",
      "updatedAt": "2025-01-21T11:30:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 487,
    "totalPages": 20,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **data**: Array of progress objects, each containing userId (since this is a global progress list across all users)
* **pagination**: Standard pagination metadata
* All `id`, `userId`, and `courseId` fields use UUID format
* **result** and **score**: Only populated when status is "completed"
* **completedAt**: Only populated when status is "completed"
* **learningDuration**: Set to 0 for in_progress courses, populated with course duration when completed

---

#### GET `/progress/{id}` - Get Specific Progress Record

```json
{
  "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "courseId": "pack_level_en_a1",
  "status": "completed",
  "progressPercentage": 100,
  "lessonsCompleted": 20,
  "lessonsTotal": 20,
  "result": "pass",
  "score": 92,
  "learningDuration": 1110,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": "2025-01-20T15:30:00Z",
  "lastAccessedAt": "2025-01-20T15:30:00Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T15:30:00Z"
}
```

**Response Structure Notes:**

* Returns single progress object directly (no wrapper)
* Includes `userId` field since this is a standalone progress record
* All identifier fields use UUID format
* No pagination for single resource endpoint

---

#### GET `/users/{id}/progress` - Get User Progress (v0.3.0 Structure)

```json
{
  "user": {
    "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
    "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
    "email": "john.doe@example.com"
  },
  "data": [
    {
      "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "courseId": "pack_level_en_a1",
      "status": "completed",
      "progressPercentage": 100,
      "lessonsCompleted": 20,
      "lessonsTotal": 20,
      "result": "pass",
      "score": 92,
      "learningDuration": 1110,
      "startedAt": "2025-01-15T10:00:00Z",
      "completedAt": "2025-01-20T15:30:00Z",
      "lastAccessedAt": "2025-01-20T15:30:00Z",
      "createdAt": "2025-01-15T10:00:00Z",
      "updatedAt": "2025-01-20T15:30:00Z"
    },
    {
      "id": "b2c3d4e5-f6a7-5b8c-9d0e-1f2a3b4c5d6e",
      "courseId": "pack_level_fr_a1",
      "status": "in_progress",
      "progressPercentage": 67,
      "lessonsCompleted": 14,
      "lessonsTotal": 21,
      "result": null,
      "score": null,
      "learningDuration": 0,
      "startedAt": "2025-01-12T09:00:00Z",
      "completedAt": null,
      "lastAccessedAt": "2025-01-21T17:20:00Z",
      "createdAt": "2025-01-12T09:00:00Z",
      "updatedAt": "2025-01-21T17:20:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 5,
    "totalPages": 1,
    "hasNext": false,
    "hasPrevious": false
  }
}
```

**Response Structure Notes (v0.3.0 Improvement):**

* **user**: Lightweight user context at top level (new in v0.3.0)
* **data**: Array of progress objects WITHOUT `userId` field (changed in v0.3.0)
* **pagination**: Standard pagination metadata
* All identifier fields use UUID format exclusively
* This structure eliminates redundant `userId` in each progress record since user context is provided once at top level
* Significantly reduces payload size, especially for users with many courses

---

### Utility Responses

#### GET `/utilities/health` - API Health Check (Healthy)

```json
{
  "status": "healthy",
  "timestamp": "2025-10-28T18:45:32Z",
  "version": "0.3.0",
  "uptime": 864237
}
```

**Response Structure Notes:**

* Version field reflects current API version (0.3.0)
* Uptime measured in seconds
* Timestamp in ISO 8601 format

---

#### GET `/utilities/health` - API Health Check (Unhealthy)

**HTTP Status: 503 Service Unavailable**

```json
{
  "status": "unhealthy",
  "timestamp": "2025-10-28T18:45:32Z",
  "errors": [
    "Database connection failed",
    "External service timeout"
  ]
}
```

**Response Structure Notes:**

* Returns 503 status code when unhealthy
* Errors array contains specific failure reasons
* Useful for monitoring and alerting systems

---

### Error Responses

#### 400 Bad Request

```json
{
  "code": "VALIDATION_ERROR",
  "message": "Invalid request parameters",
  "details": {
    "field": "page",
    "reason": "Must be a positive integer"
  },
  "timestamp": "2025-10-28T18:50:15Z",
  "requestId": "a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d"
}
```

**Response Structure Notes:**

* `requestId` uses UUID format for traceability
* Details object provides specific field-level error information
* Timestamp in ISO 8601 format

---

#### 401 Unauthorized

```json
{
  "code": "UNAUTHORIZED",
  "message": "Invalid or expired access token",
  "timestamp": "2025-10-28T18:50:15Z",
  "requestId": "b2c3d4e5-f6a7-8b9c-0d1e-2f3a4b5c6d7e"
}
```

**Response Structure Notes:**

* Returned when authentication token is missing, invalid, or expired
* `requestId` in UUID format for debugging

---

#### 403 Forbidden

```json
{
  "code": "FORBIDDEN",
  "message": "Insufficient permissions to access this resource",
  "timestamp": "2025-10-28T18:50:15Z",
  "requestId": "c3d4e5f6-a7b8-9c0d-1e2f-3a4b5c6d7e8f"
}
```

**Response Structure Notes:**

* Returned when authenticated but lacking required permissions
* Distinct from 401 (authentication) errors

---

#### 404 Not Found

```json
{
  "code": "NOT_FOUND",
  "message": "Resource not found",
  "timestamp": "2025-10-28T18:50:15Z",
  "requestId": "d4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a"
}
```

**Response Structure Notes:**

* Returned when requested resource doesn't exist
* Check identifier format (must be valid UUID)

---

#### 500 Internal Server Error

```json
{
  "code": "INTERNAL_ERROR",
  "message": "An unexpected error occurred",
  "timestamp": "2025-10-28T18:50:15Z",
  "requestId": "e5f6a7b8-c9d0-1e2f-3a4b-5c6d7e8f9a0b"
}
```

**Response Structure Notes:**

* Returned for unexpected server errors
* `requestId` critical for support team to trace issues
* Contact support with requestId for assistance

---

## Data Model Examples

This section documents the individual schemas/models used throughout the API. These are the building blocks that compose the API responses shown in the previous section.

### User Model

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "admin",
  "email": "john.doe@example.com",
  "username": "johnd123",
  "firstName": "John",
  "lastName": "Doe",
  "department": "Accounts",
  "countryCode": "FR",
  "employeeId": "empId12345678",
  "team": "A-team",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z",
  "expiresAt": "2026-01-20T21:01:58Z",
  "lastActiveAt": "2025-01-20T21:01:58Z",
  "removedAt": null
}
```

**Key Points:**

* **Dual UUIDs**: `id` is the unique identifier (UUID), `userId` is the UUID format identifier
* **Organisation Context**: Includes `institutionId` (UUID), `department`, `role`, and `team` for organisational hierarchy
* **Status Tracking**: `status` indicates if user is "active" or "removed"
* **Roles**: Three role types available - "admin", "team lead", "student"
* **Timestamps**: Full audit trail with creation, update, expiration, last active, and deletion dates
* **Nullable Fields**: `username`, `firstName`, `lastName`, `department`, `countryCode`, `employeeId`, `team`, and `removedAt` can be null
* **UUID Requirement**: All `id`, `userId`, and `institutionId` fields must be valid UUIDs

---

### Course Model

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "level": "A1",
  "difficulty": {
    "value": "beginner",
    "label": "Beginner",
    "order": 1
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 1110,
  "language": "English",
  "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
  "status": "active",
  "publishedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

**Key Points:**

* **CEFR Levels**: Six standard levels supported (A1, A2, B1, B2, C1, C2)
* **Difficulty Object**: Structured difficulty with value, human-readable label, and numeric order (1-5)
* **Templated URL**: `launchUrl` uses placeholders `{{institutionId}}` and `{{courseId}}` for SSO integration - replace with actual UUIDs
* **Duration**: Specified in minutes (1110 minutes = 18.5 hours for this example)
* **Course Status**: Can be "active" or "archived"
* **Required Fields**: All fields including `language` and `thumbnailUrl` are required

---

### Provider Model

```json
{
  "id": "busuu",
  "name": "Busuu",
  "description": "Language learning platform",
  "logoUrl": "https://cdn.busuu.com/assets/busuu-logo.png"
}
```

**Key Points:**

* **Context Object**: Provides metadata about the content provider
* **Always Included**: Returned with all course endpoints (list and detail)
* **Consistent Identity**: Same provider object across all course responses
* **Provider ID**: String identifier (not UUID) as this is a system-level identifier

---

### Progress Model

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "courseId": "pack_level_en_a1",
  "status": "in_progress",
  "progressPercentage": 75,
  "lessonsCompleted": 15,
  "lessonsTotal": 20,
  "result": null,
  "score": null,
  "learningDuration": 0,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": null,
  "lastAccessedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

**Key Points:**

* **UUID Identifiers**: All `id` and `userId` fields use UUID format
* **Status Values**: Either "in_progress" or "completed"
* **Progress Tracking**: Combines `progressPercentage` with concrete `lessonsCompleted`/`lessonsTotal` counts
* **Completion Fields**: `result` (pass/fail) and `score` only populated when status is "completed"
* **Learning Duration**:
    * Initialized to 0 when progress record is created
    * Remains 0 during "in_progress" status
    * Populated with course duration when status becomes "completed"
* **Nullable Fields**: `completedAt`, `result`, and `score` are null for in_progress courses
* **Course Reference**: Uses UUID `courseId` to reference course data

---

### UserContext Model (New in v0.3.0)

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "email": "john.doe@example.com"
}
```

**Key Points:**

* **Lightweight Context**: Minimal user identification for progress responses
* **New in v0.3.0**: Introduced to provide user context without full user details
* **Used In**: `/users/{id}/progress` endpoint responses only
* **UUID Fields**: Both `id` and `userId` are UUIDs
* **Purpose**: Provides essential user identification while eliminating redundancy in progress records

---

### ProgressWithoutUserId Model (New in v0.3.0)

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "courseId": "pack_level_en_a1",
  "status": "in_progress",
  "progressPercentage": 75,
  "lessonsCompleted": 15,
  "lessonsTotal": 20,
  "result": null,
  "score": null,
  "learningDuration": 0,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": null,
  "lastAccessedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

**Key Points:**

* **Identical to Progress**: Contains all fields from Progress model except `userId`
* **New in v0.3.0**: Used in `/users/{id}/progress` responses where user context is provided separately at root level
* **Eliminates Redundancy**: Since user information is provided once at top level, no need to repeat userId in each progress record
* **UUID Fields**: `id` and `courseId` use UUID format
* **Payload Optimisation**: Reduces response size proportionally to the number of progress records

---

### Pagination Model

```json
{
  "page": 1,
  "limit": 25,
  "total": 150,
  "totalPages": 6,
  "hasNext": true,
  "hasPrevious": false
}
```

**Key Points:**

* **Consistent Structure**: Same pagination format across all list endpoints
* **Navigation Helpers**: `hasNext` and `hasPrevious` boolean flags for easy navigation
* **Configurable Limits**: Default 25 items per page, maximum 100 per page
* **Full Metadata**: Provides current page, total items, and total pages
* **Zero-Based**: Page numbers start at 1 (not 0)

---

## API Response Structure Changes

### `/users/{id}/progress` Endpoint - Before and After

#### Version 0.1.0 - 0.2.0 (Previous Structure)

```json
{
  "data": [
    {
      "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "courseId": "pack_level_en_a1",
      "status": "in_progress",
      "progressPercentage": 75
    },
    {
      "id": "b2c3d4e5-f6a7-5b8c-9d0e-1f2a3b4c5d6e",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "courseId": "pack_level_fr_a1",
      "status": "completed",
      "progressPercentage": 100
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 5,
    "totalPages": 1,
    "hasNext": false,
    "hasPrevious": false
  }
}
```

**Issues with Previous Structure:**

* `userId` repeated in every single progress record
* User context buried within progress data
* Larger payload size due to redundancy (grows with number of courses)
* Less intuitive data structure

---

#### Version 0.3.0 (Current Structure)

```json
{
  "user": {
    "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
    "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
    "email": "john.doe@example.com"
  },
  "data": [
    {
      "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "courseId": "pack_level_en_a1",
      "status": "in_progress",
      "progressPercentage": 75
    },
    {
      "id": "b2c3d4e5-f6a7-5b8c-9d0e-1f2a3b4c5d6e",
      "courseId": "pack_level_fr_a1",
      "status": "completed",
      "progressPercentage": 100
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 5,
    "totalPages": 1,
    "hasNext": false,
    "hasPrevious": false
  }
}
```

**What Changed:**

* User context elevated to top-level `user` object
* `userId` field removed from individual progress records
* All IDs use UUID format exclusively

**Benefits:**

* **Reduced Payload Size**: No repeated `userId` in each record
* **Clearer Semantics**: User information separate from progress data
* **Better Structure**: Explicit user context at response root
* **More Efficient**: Especially beneficial for users with many courses (5 courses = 5x reduction in userId fields)
* **UUID Consistency**: All identifiers use standard UUID format throughout

---

## New Schemas

### UserProgressResponse

**Purpose:** Top-level response schema for the `/users/{id}/progress` endpoint. Provides user context and associated progress records in a structured, non-redundant format.

```yaml
UserProgressResponse:
  type: object
  required:
    - user
    - data
    - pagination
  properties:
    user:
      $ref: "#/components/schemas/UserContext"
    data:
      type: array
      items:
        $ref: "#/components/schemas/ProgressWithoutUserId"
    pagination:
      $ref: "#/components/schemas/Pagination"
```

**Usage:**

* Returned by `GET /users/{id}/progress` endpoint
* Provides complete context for user progress tracking
* Eliminates data redundancy through separated user context

---

### UserContext

**Purpose:** Lightweight user identification context for progress responses. Contains only essential user information needed for identification.

```yaml
UserContext:
  type: object
  required:
    - id
    - userId
    - email
  properties:
    id:
      type: string
      format: uuid
      description: Unique user identifier
      example: "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f"
    userId:
      type: string
      format: uuid
      description: User UUID identifier
      example: "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d"
    email:
      type: string
      format: email
      description: User's email address
      example: "john.doe@example.com"
```

**Usage:**

* Used in `UserProgressResponse` schema
* Provides minimal user identification
* All ID fields use UUID format

---

### ProgressWithoutUserId

**Purpose:** Progress record schema without userId field. Used in user-specific progress responses where user context is provided separately at the root level.

```yaml
ProgressWithoutUserId:
  type: object
  description: Progress record without userId field (provided in user context)
  required:
    - id
    - courseId
    - status
    - progressPercentage
    - lessonsCompleted
    - lessonsTotal
    - startedAt
    - lastAccessedAt
    - createdAt
    - updatedAt
  properties:
    id:
      type: string
      format: uuid
      description: Unique progress record identifier
      example: "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f"
    courseId:
      type: string
      format: uuid
      description: Course identifier
      example: "pack_level_en_a1"
    # ... all other Progress fields except userId
```

**Usage:**

* Used in `UserProgressResponse` schema's progress array
* Contains all Progress model fields except `userId`
* All ID fields use UUID format

---

## API Endpoints Overview

| Method | Endpoint | Description | Design Changes in v0.3.0 |
| --- | --- | --- | --- |
| POST | `/auth/token` | Obtain access token | No change |
| GET | `/users` | List all users | No change |
| GET | `/users/{id}` | Get specific user | No change |
| GET | `/courses` | List all courses | No change |
| GET | `/courses/{id}` | Get specific course | No change |
| GET | `/progress` | List all progress | No change |
| GET | `/progress/{id}` | Get specific progress | No change |
| GET | `/users/{id}/progress` | Get user progress | **Different response structure** |
| GET | `/utilities/health` | API health check | Version number updated to 0.3.0 |

---

## Complete OpenAPI Specification

The complete OpenAPI specification for this version is maintained in a separate YAML file:

**File:** `Busuu_Nexus_Core_API_v0.3.0.yml`

For human-readable documentation and examples, refer to the sections above in this document.

---

<a id="040-increment-lms-endpoints-mvp"></a>
## 🗺️ 0.4.0 Increment: LMS Endpoints (MVP)

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7368736790/0.4.0+Increment+LMS+Endpoints+%28MVP%29

**Version Notice**

This page documents v0.4.0 which used `id` and `userId` fields.  
Current version (v0.8.0) uses a refined, singular `institutionUserId` for clarity.

See [0.8.0 Refinement: Refactor user ID fields](#080-refinement-refactor-user-id-fields) for details.

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | DESIGN |
| **Version** | 0.4.0 |
| **Design Date** | 01/11/2025 |
| **Status** | DRAFT |
| **Authors** | @Dan Martinez |

---

## Overview

Version 0.4.0 enhances the design specification with comprehensive inline examples throughout the OpenAPI specification. The API continues to provide read-only access to core Busuu learning data including enhanced user information with organisational context, optimised course catalogues with provider-level metadata, and aligned progress tracking with course duration consistency. Designed for enterprise LMS connectors and institutional integrations.

**Note:** This API has not been implemented yet. This document represents a design specification iteration.

**Server URLs** will be determined during implementation phase based on infrastructure and security requirements.

---

## Summary of Changes

**1. Enhanced Documentation with Inline Examples:**

**What Changed:**

* Added comprehensive inline response examples to all endpoint definitions in the OpenAPI specification
* Included realistic example data for GET `/users`, GET `/courses`, GET `/progress`, and GET `/users/{id}/progress` endpoints
* Examples demonstrate complete response structures including wrapper objects, pagination, and provider context
* All example data uses realistic values (proper UUIDs, dates, names, departments, course details)
* Updated nullable field syntax to OpenAPI 3.1.0 standard across 13 fields:

    * User schema (7 fields): firstName, lastName, department, countryCode, employeeId, team, removedAt
    * Progress schema (3 fields): result, score, completedAt
    * ProgressWithoutUserId schema (3 fields): result, score, completedAt
    * Changed from deprecated `nullable: true` to compliant `type: [type, 'null']` format
    
* Enhanced Tag Descriptions: Added detailed descriptions to all OpenAPI specification tags (Authentication, Users, Courses, Progress, Utilities) to improve API documentation clarity and developer navigation
* Enhanced Endpoint Descriptions: Expanded all endpoint descriptions from single-line to comprehensive multi-line documentation including detailed parameter explanations, request/response structures, authentication requirements, field behaviour notes, and common use cases with examples for all 9 endpoints

**Why:**

Inline examples in the OpenAPI specification improve developer experience by providing immediate visibility into expected response structures directly in API documentation tools (Swagger UI, Postman, etc.). This reduces ambiguity and accelerates integration development by showing actual payload formats alongside schema definitions.

The nullable syntax update addresses OpenAPI 3.1.0 deprecation of the `nullable` keyword. OpenAPI 3.1.0 adopted JSON Schema vocabulary, which uses array-style type definitions for nullable fields. Updating to `type: [type, 'null']` ensures full specification compliance, eliminates linter warnings, and provides better compatibility with modern code generators and validation tools.

Enhanced endpoint descriptions provide comprehensive documentation directly in the OpenAPI specification, eliminating the need to refer to external documentation. Detailed parameter explanations, use cases, and authentication notes improve developer onboarding and reduce integration time by providing immediate context for each endpoint's purpose and usage.

**Impact:**

Enhancement only - no breaking changes. The actual API response structure remains identical to version 0.3.0. This change only improves documentation quality by adding examples that were previously only available in this Confluence page, and ensures specification compliance with OpenAPI 3.1.0 standards.

The nullable syntax change is purely syntactic - it does not alter the API contract or behaviour. Existing integrations are unaffected as field nullability remains exactly the same. Updated syntax provides better tooling support and future-proofs the specification.

Enhanced endpoint descriptions significantly improve developer experience by providing self-contained documentation within the OpenAPI specification. Developers can now understand endpoint capabilities, parameters, and use cases directly from API documentation tools without requiring additional documentation. This reduces integration friction and accelerates API adoption.

---

## API Response Examples

This section documents the complete response structures returned by each API endpoint. Version 0.4.0 adds comprehensive inline examples to the OpenAPI specification for these endpoints. These examples show actual payloads clients receive, including wrapper objects, pagination, and provider context.

### Authentication Responses

#### POST `/auth/token` - Successful Authentication

```json
{
  "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "token_type": "Bearer",
  "expires_in": 3600,
  "scope": "read:users read:courses read:progress"
}
```

**Response Structure Notes:**

* Standard OAuth2 token response format
* Bearer token should be included in Authorization header for authenticated requests
* Token expires after the time specified in `expires_in` (seconds)

---

### User Responses

#### GET `/users` - List All Users

```json
{
  "data": [
    {
      "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
      "institutionId": "550e8400-e29b-41d4-a716-446655440000",
      "status": "active",
      "role": "admin",
      "email": "john.doe@example.com",
      "username": "johnd123",
      "firstName": "John",
      "lastName": "Doe",
      "department": "Accounts",
      "countryCode": "FR",
      "employeeId": "empId12345678",
      "team": "A-team",
      "createdAt": "2025-01-20T21:01:58Z",
      "updatedAt": "2025-01-20T21:01:58Z",
      "expiresAt": "2025-01-20T21:01:58Z",
      "lastActiveAt": "2025-01-20T21:01:58Z",
      "removedAt": null
    },
    {
      "id": "a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d",
      "userId": "b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e",
      "institutionId": "550e8400-e29b-41d4-a716-446655440000",
      "status": "active",
      "role": "student",
      "email": "jane.smith@example.com",
      "username": "janes456",
      "firstName": "Jane",
      "lastName": "Smith",
      "department": "Sales",
      "countryCode": "GB",
      "employeeId": "empId87654321",
      "team": "B-team",
      "createdAt": "2025-01-15T10:30:00Z",
      "updatedAt": "2025-01-20T15:45:00Z",
      "expiresAt": "2026-01-20T21:01:58Z",
      "lastActiveAt": "2025-01-20T20:00:00Z",
      "removedAt": null
    },
    {
      "id": "c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f",
      "userId": "d4e5f6a7-b8c9-4d0e-1f2a-3b4c5d6e7f8a",
      "institutionId": "550e8400-e29b-41d4-a716-446655440000",
      "status": "active",
      "role": "team lead",
      "email": "bob.wilson@example.com",
      "username": "bobw789",
      "firstName": "Bob",
      "lastName": "Wilson",
      "department": "Engineering",
      "countryCode": "US",
      "employeeId": "empId11223344",
      "team": "C-team",
      "createdAt": "2025-01-10T08:00:00Z",
      "updatedAt": "2025-01-19T14:20:00Z",
      "expiresAt": "2026-06-20T21:01:58Z",
      "lastActiveAt": "2025-01-20T18:30:00Z",
      "removedAt": null
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 150,
    "totalPages": 6,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* Standard list response with data array and pagination object
* All `id`, `userId`, and `institutionId` fields use UUID format
* Nullable fields (`username`, `firstName`, `lastName`, `department`, `countryCode`, `employeeId`, `team`, `removedAt`) may be null
* All users share the same institutionId within an institution

---

#### GET `/users/{id}` - Get Specific User

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "admin",
  "email": "john.doe@example.com",
  "username": "johnd123",
  "firstName": "John",
  "lastName": "Doe",
  "department": "Accounts",
  "countryCode": "FR",
  "employeeId": "empId12345678",
  "team": "A-team",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z",
  "expiresAt": "2026-01-20T21:01:58Z",
  "lastActiveAt": "2025-01-20T21:01:58Z",
  "removedAt": null
}
```

**Response Structure Notes:**

* Returns single user object directly (no wrapper)
* No pagination for single resource endpoint
* All fields match the User schema definition

---

### Course Responses

#### GET `/courses` - List All Courses

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://path/to/logo.jpg"
  },
  "data": [
    {
      "id": "pack_level_en_a1",
      "title": "English A1 - Beginner",
      "description": "Complete beginner course for English language learning",
      "level": "A1",
      "difficulty": {
        "value": "beginner",
        "label": "Beginner",
        "order": 1
      },
      "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
      "duration": 1110,
      "language": "English",
      "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
      "status": "active",
      "publishedAt": "2025-01-20T21:01:58Z",
      "createdAt": "2025-01-20T21:01:58Z",
      "updatedAt": "2025-01-20T21:01:58Z"
    },
    {
      "id": "pack_level_en_a2",
      "title": "English A2 - Elementary",
      "description": "Elementary English course for language learners",
      "level": "A2",
      "difficulty": {
        "value": "elementary",
        "label": "Elementary",
        "order": 2
      },
      "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
      "duration": 1200,
      "language": "English",
      "thumbnailUrl": "https://cdn.busuu.com/courses/en-a2-thumbnail.jpg",
      "status": "active",
      "publishedAt": "2025-01-20T21:01:58Z",
      "createdAt": "2025-01-20T21:01:58Z",
      "updatedAt": "2025-01-20T21:01:58Z"
    },
    {
      "id": "pack_level_es_b1",
      "title": "Spanish B1 - Intermediate",
      "description": "Intermediate Spanish course for confident speakers",
      "level": "B1",
      "difficulty": {
        "value": "intermediate",
        "label": "Intermediate",
        "order": 3
      },
      "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
      "duration": 1350,
      "language": "Spanish",
      "thumbnailUrl": "https://cdn.busuu.com/courses/es-b1-thumbnail.jpg",
      "status": "active",
      "publishedAt": "2025-01-18T15:30:00Z",
      "createdAt": "2025-01-18T15:30:00Z",
      "updatedAt": "2025-01-19T10:20:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 85,
    "totalPages": 4,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **provider**: Top-level context about the content provider, included in all course list responses
* **data**: Array of course objects matching the Course schema
* **pagination**: Standard pagination metadata

---

#### GET `/courses/{id}` - Get Specific Course

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://path/to/logo.jpg"
  },
  "course": {
    "id": "pack_level_en_a1",
    "title": "English A1 - Beginner",
    "description": "Complete beginner course for English language learning",
    "level": "A1",
    "difficulty": {
      "value": "beginner",
      "label": "Beginner",
      "order": 1
    },
    "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
    "duration": 1110,
    "language": "English",
    "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
    "status": "active",
    "publishedAt": "2025-01-20T21:01:58Z",
    "createdAt": "2025-01-20T21:01:58Z",
    "updatedAt": "2025-01-20T21:01:58Z"
  }
}
```

**Response Structure Notes:**

* **provider**: Same provider context as list endpoint
* **course**: Single course object (note singular "course" vs "courses" in list endpoint)
* No pagination for single resource endpoint

---

### Progress Responses

#### GET `/progress` - List All Progress Records

```json
{
  "data": [
    {
      "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "courseId": "pack_level_en_a1",
      "status": "completed",
      "progressPercentage": 100,
      "lessonsCompleted": 20,
      "lessonsTotal": 20,
      "result": "pass",
      "score": 85,
      "learningDuration": 1110,
      "startedAt": "2025-01-15T10:00:00Z",
      "completedAt": "2025-01-20T15:30:00Z",
      "lastAccessedAt": "2025-01-20T15:30:00Z",
      "createdAt": "2025-01-15T10:00:00Z",
      "updatedAt": "2025-01-20T15:30:00Z"
    },
    {
      "id": "3fe54d89-c6b7-4d8e-9f0a-1b2c3d4e5f6a",
      "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "courseId": "pack_level_en_a2",
      "status": "in_progress",
      "progressPercentage": 65,
      "lessonsCompleted": 13,
      "lessonsTotal": 20,
      "result": null,
      "score": null,
      "learningDuration": 0,
      "startedAt": "2025-01-18T09:00:00Z",
      "completedAt": null,
      "lastAccessedAt": "2025-01-20T18:00:00Z",
      "createdAt": "2025-01-18T09:00:00Z",
      "updatedAt": "2025-01-20T18:00:00Z"
    },
    {
      "id": "4af65e90-d7c8-4e9f-0a1b-2c3d4e5f6a7b",
      "userId": "a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d",
      "courseId": "pack_level_es_b1",
      "status": "completed",
      "progressPercentage": 100,
      "lessonsCompleted": 25,
      "lessonsTotal": 25,
      "result": "pass",
      "score": 92,
      "learningDuration": 1350,
      "startedAt": "2025-01-10T08:00:00Z",
      "completedAt": "2025-01-19T16:45:00Z",
      "lastAccessedAt": "2025-01-19T16:45:00Z",
      "createdAt": "2025-01-10T08:00:00Z",
      "updatedAt": "2025-01-19T16:45:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 125,
    "totalPages": 5,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **data**: Array of progress objects, each containing userId (since this is a global progress list)
* **pagination**: Standard pagination metadata
* Note: Progress records include `userId` in this endpoint since it's a cross-user list

---

#### GET `/progress/{id}` - Get Specific Progress Record

```json
{
  "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "courseId": "pack_level_en_a1",
  "status": "completed",
  "progressPercentage": 100,
  "lessonsCompleted": 20,
  "lessonsTotal": 20,
  "result": "pass",
  "score": 92,
  "learningDuration": 1110,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": "2025-01-20T15:30:00Z",
  "lastAccessedAt": "2025-01-20T15:30:00Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T15:30:00Z"
}
```

**Response Structure Notes:**

* Returns single progress object directly (no wrapper)
* Includes `userId` field since this is a standalone progress record
* No pagination for single resource endpoint

---

#### GET `/users/{id}/progress` - Get User Progress

**Version 0.4.0 Structure:**

```json
{
  "user": {
    "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
    "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
    "email": "john.doe@example.com"
  },
  "data": [
    {
      "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "courseId": "pack_level_en_a1",
      "status": "completed",
      "progressPercentage": 100,
      "lessonsCompleted": 20,
      "lessonsTotal": 20,
      "result": "pass",
      "score": 85,
      "learningDuration": 1110,
      "startedAt": "2025-01-15T10:00:00Z",
      "completedAt": "2025-01-20T15:30:00Z",
      "lastAccessedAt": "2025-01-20T15:30:00Z",
      "createdAt": "2025-01-15T10:00:00Z",
      "updatedAt": "2025-01-20T15:30:00Z"
    },
    {
      "id": "3fe54d89-c6b7-4d8e-9f0a-1b2c3d4e5f6a",
      "courseId": "pack_level_en_a2",
      "status": "in_progress",
      "progressPercentage": 65,
      "lessonsCompleted": 13,
      "lessonsTotal": 20,
      "result": null,
      "score": null,
      "learningDuration": 0,
      "startedAt": "2025-01-18T09:00:00Z",
      "completedAt": null,
      "lastAccessedAt": "2025-01-20T18:00:00Z",
      "createdAt": "2025-01-18T09:00:00Z",
      "updatedAt": "2025-01-20T18:00:00Z"
    },
    {
      "id": "5bg76f01-e7d8-4f9a-0b1c-2d3e4f5a6b7c",
      "courseId": "pack_level_fr_a1",
      "status": "completed",
      "progressPercentage": 100,
      "lessonsCompleted": 18,
      "lessonsTotal": 18,
      "result": "pass",
      "score": 78,
      "learningDuration": 950,
      "startedAt": "2025-01-12T14:00:00Z",
      "completedAt": "2025-01-17T11:20:00Z",
      "lastAccessedAt": "2025-01-17T11:20:00Z",
      "createdAt": "2025-01-12T14:00:00Z",
      "updatedAt": "2025-01-17T11:20:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 3,
    "totalPages": 1,
    "hasNext": false,
    "hasPrevious": false
  }
}
```

**Response Structure Notes (v0.3.0+):**

* **user**: Lightweight user context at top level (introduced in v0.3.0)
* **data**: Array of progress objects WITHOUT `userId` field (changed in v0.3.0)
* **pagination**: Standard pagination metadata
* This structure eliminates redundant `userId` in each progress record

---

### Utility Responses

#### GET `/utilities/health` - API Health Check (Healthy)

```json
{
  "status": "healthy",
  "timestamp": "2025-01-21T18:45:32Z",
  "version": "0.4.0",
  "uptime": 864237
}
```

**Response Structure Notes:**

* Version field reflects current API version
* Uptime measured in seconds
* Timestamp in ISO 8601 format

---

#### GET `/utilities/health` - API Health Check (Unhealthy)

**HTTP Status: 503 Service Unavailable**

```json
{
  "status": "unhealthy",
  "timestamp": "2025-01-21T18:45:32Z",
  "errors": [
    "Database connection failed",
    "External service timeout"
  ]
}
```

**Response Structure Notes:**

* Returns 503 status code when unhealthy
* Errors array contains specific failure reasons

---

### Error Responses

#### 400 Bad Request

```json
{
  "code": "VALIDATION_ERROR",
  "message": "Invalid request parameters",
  "details": {
    "field": "page",
    "reason": "Must be a positive integer"
  },
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d"
}
```

**Response Structure Notes:**

* `requestId` uses UUID format for traceability
* Details object provides specific field-level error information

---

#### 401 Unauthorized

```json
{
  "code": "UNAUTHORIZED",
  "message": "Invalid or expired access token",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d"
}
```

---

#### 403 Forbidden

```json
{
  "code": "FORBIDDEN",
  "message": "Insufficient permissions to access this resource",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d"
}
```

---

#### 404 Not Found

```json
{
  "code": "NOT_FOUND",
  "message": "Resource not found",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d"
}
```

---

#### 500 Internal Server Error

```json
{
  "code": "INTERNAL_ERROR",
  "message": "An unexpected error occurred",
  "timestamp": "2025-01-21T18:50:15Z",
  "requestId": "a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d"
}
```

---

## Data Model Examples

This section documents the individual schemas/models used throughout the API. These are the building blocks that compose the API responses shown in the previous section.

### User Model

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "admin",
  "email": "john.doe@example.com",
  "username": "johnd123",
  "firstName": "John",
  "lastName": "Doe",
  "department": "Accounts",
  "countryCode": "FR",
  "employeeId": "empId12345678",
  "team": "A-team",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z",
  "expiresAt": "2026-01-20T21:01:58Z",
  "lastActiveAt": "2025-01-20T21:01:58Z",
  "removedAt": null
}
```

**Key Points:**

* **Dual UUIDs**: `id` is the unique identifier (UUID), `userId` is the UUID format identifier
* **Organisation Context**: Includes `institutionId` (UUID), `department`, `role`, and `team` for organisational hierarchy
* **Status Tracking**: `status` indicates if user is "active" or "removed"
* **Roles**: Three role types available - "admin", "team lead", "student"
* **Timestamps**: Full audit trail with creation, update, expiration, last active, and deletion dates
* **Nullable Fields**: `firstName`, `lastName`, `department`, `countryCode`, `employeeId`, `team`, `removedAt`

---

### Course Model

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "level": "A1",
  "difficulty": {
    "value": "beginner",
    "label": "Beginner",
    "order": 1
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 1110,
  "language": "English",
  "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
  "status": "active",
  "publishedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

**Key Points:**

* **CEFR Levels**: Six standard levels supported (A1, A2, B1, B2, C1, C2)
* **Difficulty Object**: Structured difficulty with value, human-readable label, and numeric order (1-5)
* **Templated URL**: `launchUrl` uses placeholders `{{institutionId}}` and `{{courseId}}` for SSO integration
* **Duration**: Specified in minutes

---

### Progress Model

```json
{
  "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "courseId": "pack_level_en_a1",
  "status": "in_progress",
  "progressPercentage": 75,
  "lessonsCompleted": 15,
  "lessonsTotal": 20,
  "result": null,
  "score": null,
  "learningDuration": 0,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": null,
  "lastAccessedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

**Key Points:**

* **Status Values**: Either "in_progress" or "completed"
* **Progress Tracking**: Combines `progressPercentage` with concrete `lessonsCompleted`/`lessonsTotal` counts
* **Completion Fields**: `result` (pass/fail) and `score` only populated when status is "completed"
* **Learning Duration**: Initialised to 0, populated with course duration when completed
* **Nullable Fields**: `completedAt`, `result`, and `score` are null for in_progress courses

---

### Provider Model

```json
{
  "id": "busuu",
  "name": "Busuu",
  "description": "Language learning platform",
  "logoUrl": "https://path/to/logo.jpg"
}
```

**Key Points:**

* **Context Object**: Provides metadata about the content provider
* **Always Included**: Returned with all course endpoints

---

### UserContext Model (New in v0.3.0)

```json
{
  "id": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "email": "john.doe@example.com"
}
```

**Key Points:**

* **Lightweight Context**: Minimal user identification for progress responses
* **New in v0.3.0**: Introduced to provide user context without full user details
* **Used In**: `/users/{id}/progress` endpoint responses only

---

### ProgressWithoutUserId Model (New in v0.3.0)

Same as Progress model but without the `userId` field.

**Key Points:**

* **Identical to Progress**: Contains all fields from Progress model except `userId`
* **Eliminates Redundancy**: Since user information is provided once at top level

---

## Design Benefits

**Advantages:**

* **Improved Developer Experience**: Inline examples in OpenAPI specification provide immediate visibility into expected response structures
* **Reduced Integration Time**: Developers can see actual payload formats directly in API documentation tools without referring to separate documentation
* **Clearer Expectations**: Realistic example data demonstrates proper UUID formats, date-time formats, and nullable field handling
* **Tool Compatibility**: Examples work seamlessly with Swagger UI, Postman, and other OpenAPI-compliant tools
* **Reduced Ambiguity**: Concrete examples eliminate guesswork about response structure and data types
* **Specification Compliance**: OpenAPI 3.1.0 compliant nullable syntax ensures better tooling support and future-proofs the specification

### Design Considerations

* **Documentation Quality**: Examples significantly improve API discoverability and understanding
* **Maintenance Overhead**: Examples must be kept in sync with schema definitions as API evolves
* **Backward Compatibility**: Version 0.4.0 maintains full compatibility with v0.3.0 while enhancing documentation and specification compliance

### Future Evolution

* **Implementation Phase**: Once design is finalised, proceed to implementation with well-documented expectations
* **Additional Examples**: Consider adding examples for error scenarios and edge cases in future versions
* **Interactive Documentation**: Examples enable better interactive API exploration through documentation tools

---

## API Endpoints Overview

| Method | Endpoint | Description | Changes in v0.4.0 |
| --- | --- | --- | --- |
| POST | `/auth/token` | Obtain access token | Added inline example in OpenAPI spec |
| GET | `/users` | List all users | Added inline example in OpenAPI spec |
| GET | `/users/{id}` | Get specific user | No changes (examples already present) |
| GET | `/courses` | List all courses | Added inline example in OpenAPI spec |
| GET | `/courses/{id}` | Get specific course | No changes (examples already present) |
| GET | `/progress` | List all progress | Added inline example in OpenAPI spec |
| GET | `/progress/{id}` | Get specific progress | No changes (examples already present) |
| GET | `/users/{id}/progress` | Get user progress | Added inline example in OpenAPI spec |
| GET | `/utilities/health` | API health check | Version number updated to 0.4.0 |

---

## Complete OpenAPI Specification

The complete OpenAPI specification for this version is maintained in a separate YAML file:

**File:** `Busuu_Nexus_Core_API_v0_4_0.yml`

**Location:** [View YAML specification](#)

For human-readable documentation and examples, refer to the sections above in this document.

---

<a id="v040-openapi-yaml-spec"></a>
### ⚙️ v0.4.0 OpenAPI YAML Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7380762674/v0.4.0+OpenAPI+YAML+Spec

**Note:** This page contains OpenAPI YAML code blocks. For the complete OpenAPI 3.1 specification, see the Confluence page directly.

---

<a id="v040-swaggerhub-docs"></a>
### 🔗 v0.4.0 Swaggerhub Docs

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7397670978/v0.4.0+Swaggerhub+Docs

**SwaggerHub:** https://app.swaggerhub.com/apis-docs/arlobarlo/busuu-nexus-core-api/0.4.0

**Note:** This page links to SwaggerHub. For interactive API documentation, see the Confluence page directly.

---

<a id="v040-user-model-spec"></a>
### 👤 v0.4.0 User Model Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7381254146/v0.4.0+User+Model+Spec

**Version Notice**

This page documents v0.4.0 which used `id` and `userId` fields.  
Current version (v0.8.0) uses a refined, singular `institutionUserId` for clarity. See [0.8.0 Refinement: Refactor user ID fields](#080-refinement-refactor-user-id-fields) for details.

---

#### User Model Structure

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "admin",
  "email": "john.doe@example.com",
  "username": "johnd123",
  "firstName": "John",
  "lastName": "Doe",
  "department": "Accounts",
  "countryCode": "FR",
  "employeeId": "empId12345678",
  "team": "A-team",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z",
  "expiresAt": "2025-01-20T21:01:58Z",
  "lastActiveAt": "2025-01-20T21:01:58Z",
  "removedAt": null
}
```

---

## 🔍 Field-by-Field Breakdown

### 🆔 Identity Fields

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `id` | string | `"f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f"` | **API identifier** - Used in API calls |
| `userId` | UUID | `"2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d"` | **System UUID** - Internal user identifier |
| `institutionId` | UUID | `"550e8400-e29b-41d4-a716-446655440000"` | **Organisation UUID** - Links user to institution |

### 👤 Personal Information

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `email` | email | `"john.doe@example.com"` | **Primary contact** - Must be unique |
| `username` | string | `"johnd123"` | **User name** |
| `firstName` | string | `"John"` | **Given name** |
| `lastName` | string | `"Doe"` | **Family name** |

### 🏢 Organisational Context

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `department` | string | `"Accounts"` | **Department/Division** within institution |
| `countryCode` | string | `"FR"` | **ISO country code** (2-letter) |
| `employeeId` | string | `"empId12345678"` | **Employee number** within institution |
| `team` | string | `"A-team"` | **Team assignment** |

### 🔐 Access Control

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `status` | enum | `"active"` | **Account status**: `active`, `removed` |
| `role` | enum | `"admin"` | **Permission level**: `admin`, `team lead`, `student` |

### 📅 Lifecycle Timestamps

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `createdAt` | date-time | `"2025-01-20T21:01:58Z"` | **Account creation** |
| `updatedAt` | date-time | `"2025-01-20T21:01:58Z"` | **Last modification** |
| `expiresAt` | date-time | `"2025-01-20T21:01:58Z"` | **Account expiration** |
| `lastActiveAt` | date-time | `"2025-01-20T21:01:58Z"` | **Last activity** |
| `removedAt` | date-time | `"2025-01-20T21:01:58Z"` | **Soft deletion** (if applicable) |

---

#### Example Variations

**Student User:**

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "student",
  "email": "jane.smith@university.edu",
  "username": "johnd123",
  "firstName": "Jane",
  "lastName": "Smith",
  "department": "Computer Science",
  "countryCode": "US",
  "employeeId": "empId12345678",
  "team": "CS-2024",
  "createdAt": "2024-09-01T08:00:00Z",
  "updatedAt": "2025-01-15T14:30:00Z",
  "expiresAt": "2025-08-31T23:59:59Z",
  "lastActiveAt": "2025-01-20T16:45:00Z",
  "removedAt": null
}
```

**Team Lead User:**

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "role": "team lead",
  "email": "mike.johnson@company.com",
  "username": "mikej987",
  "firstName": "Mike",
  "lastName": "Johnson",
  "department": "Human Resources",
  "countryCode": "GB",
  "employeeId": "empId12345678",
  "team": "HR-Leadership",
  "createdAt": "2023-03-15T09:30:00Z",
  "updatedAt": "2025-01-18T11:20:00Z",
  "expiresAt": "2026-03-15T23:59:59Z",
  "lastActiveAt": "2025-01-20T10:15:00Z",
  "removedAt": null
}
```

**Removed User:**

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "removed",
  "role": "student",
  "email": "former.user@company.com",
  "username": "formeru654",
  "firstName": "Former",
  "lastName": "User",
  "department": "Marketing",
  "countryCode": "DE",
  "employeeId": "empId12345678",
  "team": "Marketing-Team",
  "createdAt": "2022-01-10T12:00:00Z",
  "updatedAt": "2024-12-15T16:30:00Z",
  "expiresAt": "2024-12-31T23:59:59Z",
  "lastActiveAt": "2024-12-10T14:20:00Z",
  "removedAt": "2024-12-15T16:30:00Z"
}
```

---

#### Relationships

**User → Institution:**

* `institutionId` links to the organisation
* Multiple users can belong to same institution
* Institution provides context for courses/progress

**User → Progress:**

* Users have multiple progress records
* Progress linked via `userId` field
* Tracks learning across different courses

---

#### Field Constraints

| Field | Required | Format | Validation |
| --- | --- | --- | --- |
| `id` | ✅ | UUID | Unique API identifier |
| `userId` | ✅ | UUID | Unique system identifier |
| `institutionId` | ✅ | UUID | Must reference valid institution |
| `status` | ✅ | enum | `active` or `removed` |
| `role` | ✅ | enum | `admin`, `team lead`, `student` |
| `email` | ✅ | email | Valid email format, unique |
| `username` | ❌ | string | Nullable |
| `firstName` | ❌ | string | Nullable |
| `lastName` | ❌ | string | Nullable |
| `department` | ❌ | string | Nullable |
| `countryCode` | ❌ | string | 2-letter ISO code, nullable |
| `employeeId` | ❌ | string | Nullable |
| `team` | ❌ | string | Nullable |
| `createdAt` | ✅ | date-time | ISO 8601 format |
| `updatedAt` | ✅ | date-time | ISO 8601 format |
| `expiresAt` | ✅ | date-time | ISO 8601 format |
| `lastActiveAt` | ✅ | date-time | ISO 8601 format |
| `removedAt` | ❌ | date-time | ISO 8601 format, nullable |

---

#### Usage Examples

**API Endpoints Using User Model:**

* `GET /users` - Returns array of User objects
* `GET /users/{id}` - Returns single User object
* `GET /users/{id}/progress` - Returns user's progress records

**Filtering Examples:**

```
# Filter by status
GET /users?status=active

# Filter by role
GET /users?role=student

# Filter by department
GET /users?department=Computer Science

# Search by name/email
GET /users?search=john
```

This User model provides comprehensive organisational context and lifecycle management for enterprise LMS integrations!

**Note:** For complete v0.4.0 User Model specification with detailed examples, see the full [v0.4.0 User Model Spec](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7381254146/v0.4.0+User+Model+Spec) page in Confluence.

---

<a id="v040-course-model-spec"></a>
### 📚 v0.4.0 Course Model Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7381417985/v0.4.0+Course+Model+Spec

---

## What's New in v0.7.0?

The Course model has been enhanced with:

* ✅ **Localisation support** - Multi-language translations for course metadata
* ✅ **New** `localisation` field - Contains translations for title and description
* ✅ **New** `includeAllLocales` parameter - Controls whether translations are included
* ✅ **Backward compatible** - All v0.4.0 fields remain unchanged

### Key Enhancement

Course metadata (title, description) can now be translated into multiple languages (French, Spanish, German, etc.) with client-side locale selection for optimal caching.

---

## Migration Path

**From v0.4.0 to v0.7.0:**

1. No changes required for basic integration
2. Optionally implement client-side locale selection to display courses in users' preferred languages
3. Use `includeAllLocales=false` for reduced payload if localisation not needed

**Backward Compatibility:** ✅ Fully compatible    
**Breaking Changes:** ❌ None

---

_The content below is preserved for historical reference only. Please use v0.7.0 documentation for current implementation._

---

# v0.4.0 Course Model Spec - MVP LMS (ARCHIVED)

Here's the Course model with detailed examples and explanations:

---

## 📋 Course Model Structure

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "level": "A1",
  "difficulty": {
    "value": "beginner",
    "label": "Beginner",
    "order": 1
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 1110,
  "language": "English",
  "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
  "status": "active",
  "publishedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

---

## 🔍 Field-by-Field Breakdown

### 🆔 Identity Fields

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `id` | string | `"pack_level_en_a1"` | **Unique course identifier** - Used in API calls |

### 📖 Content Information

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `title` | string | `"English A1 - Beginner"` | **Course title** - Display name |
| `description` | string | `"Complete beginner course..."` | **Course description** - Detailed info |
| `language` | string | `"English"` | **Target language** being learned |

### 🎯 Learning Level

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `level` | enum | `"A1"` | **CEFR level**: `A1`, `A2`, `B1`, `B2`, `C1` |

### 📊 Difficulty Rating (Embedded Object)

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `difficulty.value` | enum | `"beginner"` | **Difficulty value**: `beginner`, `elementary`, `intermediate`, `upper_intermediate`, `advanced` |
| `difficulty.label` | string | `"Beginner"` | **Human-readable label** |
| `difficulty.order` | integer | `1` | **Difficulty order** (1-5, where 1=easiest) |

### 🔗 Access & Launch

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `launchUrl` | URI | `"https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}"` | **SSO launch URL** with templated IDs |

### ⏱️ Duration & Media

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `duration` | integer | `1110` | **Course duration in minutes** (18.5 hours) |
| `thumbnailUrl` | URI | `"https://cdn.busuu.com/courses/en-a1-thumbnail.jpg"` | **Course thumbnail image** |

### 📅 Status & Lifecycle

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `status` | enum | `"active"` | **Course status**: `active`, `archived` |
| `publishedAt` | date-time | `"2025-01-20T21:01:58Z"` | **Publication timestamp** |
| `createdAt` | date-time | `"2025-01-20T21:01:58Z"` | **Creation timestamp** |
| `updatedAt` | date-time | `"2025-01-20T21:01:58Z"` | **Last update timestamp** |

---

## 📝 Example Variations

### Spanish A2 Course

```json
{
  "id": "pack_level_es_a2",
  "title": "Spanish A2 - Elementary",
  "description": "Elementary Spanish course building on basic vocabulary and grammar",
  "level": "A2",
  "difficulty": {
    "value": "elementary",
    "label": "Elementary",
    "order": 2
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 1440,
  "language": "Spanish",
  "thumbnailUrl": "https://cdn.busuu.com/courses/es-a2-thumbnail.jpg",
  "status": "active",
  "publishedAt": "2025-01-15T10:30:00Z",
  "createdAt": "2025-01-15T10:30:00Z",
  "updatedAt": "2025-01-18T14:20:00Z"
}
```

### French B1 Course

```json
{
  "id": "pack_level_fr_b1",
  "title": "French B1 - Intermediate",
  "description": "Intermediate French course focusing on conversation and complex grammar",
  "level": "B1",
  "difficulty": {
    "value": "intermediate",
    "label": "Intermediate",
    "order": 3
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 2100,
  "language": "French",
  "thumbnailUrl": "https://cdn.busuu.com/courses/fr-b1-thumbnail.jpg",
  "status": "active",
  "publishedAt": "2024-12-01T09:00:00Z",
  "createdAt": "2024-12-01T09:00:00Z",
  "updatedAt": "2025-01-10T16:45:00Z"
}
```

### German C1 Course

```json
{
  "id": "pack_level_de_c1",
  "title": "German C1 - Advanced",
  "description": "Advanced German course for fluent communication and professional use",
  "level": "C1",
  "difficulty": {
    "value": "advanced",
    "label": "Advanced",
    "order": 5
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 3600,
  "language": "German",
  "thumbnailUrl": "https://cdn.busuu.com/courses/de-c1-thumbnail.jpg",
  "status": "active",
  "publishedAt": "2024-10-15T11:00:00Z",
  "createdAt": "2024-10-15T11:00:00Z",
  "updatedAt": "2025-01-05T13:30:00Z"
}
```

### Archived Course

```json
{
  "id": "pack_level_it_a1_legacy",
  "title": "Italian A1 - Beginner (Legacy)",
  "description": "Legacy Italian beginner course - replaced by updated version",
  "level": "A1",
  "difficulty": {
    "value": "beginner",
    "label": "Beginner",
    "order": 1
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 900,
  "language": "Italian",
  "thumbnailUrl": "https://cdn.busuu.com/courses/it-a1-legacy-thumbnail.jpg",
  "status": "archived",
  "publishedAt": "2023-06-01T08:00:00Z",
  "createdAt": "2023-06-01T08:00:00Z",
  "updatedAt": "2024-12-01T10:00:00Z"
}
```

---

## 🎯 Difficulty Rating Breakdown

### Difficulty Levels

| Value | Label | Order | CEFR Equivalent | Description |
| --- | --- | --- | --- | --- |
| `beginner` | Beginner | 1 | A1 | Basic vocabulary, simple sentences |
| `elementary` | Elementary | 2 | A2 | Common expressions, routine tasks |
| `intermediate` | Intermediate | 3 | B1 | Main points, familiar situations |
| `upper_intermediate` | Upper Intermediate | 4 | B2 | Complex ideas, technical discussions |
| `advanced` | Advanced | 5 | C1 | Fluent, nuanced communication |

---

## 🔗 Relationships

### Course → Provider

* Courses belong to a provider (Busuu)
* Provider info included in response wrapper
* Provider provides branding and context

### Course → Progress

* Users create progress records for courses
* Progress linked via `courseId` field
* Tracks completion and learning time

### Course → Institution

* Courses launched via institution-specific SSO
* `{{institutionId}}` template in launch URL
* Institution provides access context

---

## 📊 Field Constraints

| Field | Required | Format | Validation |
| --- | --- | --- | --- |
| `id` | ✅ | string | Unique course identifier |
| `title` | ✅ | string | Non-empty, descriptive |
| `description` | ✅ | string | Non-empty, detailed |
| `level` | ✅ | enum | `A1`, `A2`, `B1`, `B2`, `C1` |
| `difficulty` | ✅ | object | Required: value, label, order |
| `difficulty.value` | ✅ | enum | `beginner`, `elementary`, `intermediate`, `upper_intermediate`, `advanced` |
| `difficulty.label` | ✅ | string | Human-readable |
| `difficulty.order` | ✅ | integer | 1-5 range |
| `launchUrl` | ✅ | URI | Valid URL with templates |
| `duration` | ✅ | integer | ≥0 minutes |
| `language` | ✅ | string | Target language name |
| `thumbnailUrl` | ✅ | URI | Valid image URL |
| `status` | ✅ | enum | `active`, `archived` |
| `publishedAt` | ✅ | date-time | ISO 8601 format |
| `createdAt` | ✅ | date-time | ISO 8601 format |
| `updatedAt` | ✅ | date-time | ISO 8601 format |

---

## 🎯 Usage Examples

### API Endpoints Using Course Model

* `GET /courses` - Returns CourseListResponse with courses array
* `GET /courses/{id}` - Returns CourseDetailResponse with single course

**Filtering Examples:**

```
# Filter by CEFR level
GET /courses?level=A1

# Filter by difficulty
GET /courses?difficulty=beginner

# Filter by status
GET /courses?status=active

# Search by title/description
GET /courses?search=english

# Combine filters
GET /courses?level=A1&status=active&difficulty=beginner
```

### Launch URL Template Usage

```javascript
// Template variables
const institutionId = "550e8400-e29b-41d4-a716-446655440000";
const courseId = "pack_level_en_a1";

// Replace templates in launch URL
const launchUrl = course.launchUrl
  .replace("{{institutionId}}", institutionId)
  .replace("{{courseId}}", courseId);

// Result: https://sso.busuu.com/saml/550e8400-e29b-41d4-a716-446655440000/login?course=pack_level_en_a1
```

---

## 📈 Duration Examples

| Duration (minutes) | Hours | Typical Course |
| --- | --- | --- |
| `900` | 15 hours | A1 Beginner |
| `1110` | 18.5 hours | A1 Complete |
| `1440` | 24 hours | A2 Elementary |
| `2100` | 35 hours | B1 Intermediate |
| `3600` | 60 hours | C1 Advanced |

This Course model provides comprehensive learning content information with proper difficulty classification and SSO integration for enterprise LMS systems!

---

<a id="v040-progress-model-spec"></a>
### 📊 v0.4.0 Progress Model Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7381450753/v0.4.0+Progress+Model+Spec

**Version Notice**

This page documents v0.4.0 which used `id` and `userId` fields.  
Current version (v0.8.0) uses a refined, singular `institutionUserId` for clarity.

See [0.8.0 Refinement: Refactor user ID fields](#080-refinement-refactor-user-id-fields) for details.

---

#### Progress Model Structure

```json
{
  "id": "b2469a11-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "courseId": "pack_level_en_a1",
  "status": "in_progress",
  "progressPercentage": 75,
  "lessonsCompleted": 15,
  "lessonsTotal": 20,
  "result": null,
  "score": null,
  "learningDuration": 0,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": null,
  "lastAccessedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

---

## 🔍 Field-by-Field Breakdown

### 🆔 Identity Fields

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `id` | string | `"b2469a11-b5a6-4c7d-8e9f-0a1b2c3d4e5f"` | **Unique progress record identifier** |
| `userId` | string | `"f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f"` | **User identifier** - Links to User model |
| `courseId` | string | `"pack_level_en_a1"` | **Course identifier** - Links to Course model |

### 📊 Progress Tracking

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `status` | enum | `"in_progress"` | **Overall status**: `in_progress`, `completed` |
| `progressPercentage` | integer | `75` | **Completion percentage** (0-100) |
| `lessonsCompleted` | integer | `15` | **Number of lessons finished** |
| `lessonsTotal` | integer | `20` | **Total lessons in course** |

### 🎯 Completion Assessment

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `result` | enum | `null` | **Pass/Fail status**: `pass`, `fail` (only when completed) |
| `score` | integer | `null` | **Final score percentage** (0-100) |

### ⏱️ Time Tracking

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `learningDuration` | integer | `1110` | **Total learning time in minutes** |
| `startedAt` | date-time | `"2025-01-15T10:00:00Z"` | **Course start timestamp** |
| `completedAt` | date-time | `null` | **Completion timestamp** (nullable) |
| `lastAccessedAt` | date-time | `"2025-01-20T21:01:58Z"` | **Last activity timestamp** |

### 📅 Record Lifecycle

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `createdAt` | date-time | `"2025-01-15T10:00:00Z"` | **Progress record creation** |
| `updatedAt` | date-time | `"2025-01-20T21:01:58Z"` | **Last record update** |

---

#### Example Variations

**Just Started (status: in_progress):**

```json
{
  "id": "b2469a11-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "courseId": "pack_level_en_a1",
  "status": "in_progress",
  "progressPercentage": 0,
  "lessonsCompleted": 0,
  "lessonsTotal": 20,
  "result": null,
  "score": null,
  "learningDuration": 0,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": null,
  "lastAccessedAt": "2025-01-15T10:00:00Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-15T10:00:00Z"
}
```

**Mid-Progress (status: in_progress):**

```json
{
  "id": "b2469a11-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "courseId": "pack_level_en_a1",
  "status": "in_progress",
  "progressPercentage": 75,
  "lessonsCompleted": 15,
  "lessonsTotal": 20,
  "result": null,
  "score": null,
  "learningDuration": 0,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": null,
  "lastAccessedAt": "2025-01-20T14:30:00Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T14:30:00Z"
}
```

**Completed Successfully (status: completed, pass):**

```json
{
  "id": "b2469a11-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "courseId": "pack_level_en_a1",
  "status": "completed",
  "progressPercentage": 100,
  "lessonsCompleted": 20,
  "lessonsTotal": 20,
  "result": "pass",
  "score": 85,
  "learningDuration": 1110,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": "2025-01-20T15:30:00Z",
  "lastAccessedAt": "2025-01-20T15:30:00Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-01-20T15:30:00Z"
}
```

**Completed with Failure (status: completed, fail):**

```json
{
  "id": "b2469a11-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "courseId": "pack_level_en_a2",
  "status": "completed",
  "progressPercentage": 100,
  "lessonsCompleted": 20,
  "lessonsTotal": 20,
  "result": "fail",
  "score": 45,
  "learningDuration": 1200,
  "startedAt": "2025-02-01T09:00:00Z",
  "completedAt": "2025-02-10T16:45:00Z",
  "lastAccessedAt": "2025-02-10T16:45:00Z",
  "createdAt": "2025-02-01T09:00:00Z",
  "updatedAt": "2025-02-10T16:45:00Z"
}
```

**Completed Course with Pass:**

```json
{
  "id": "c3579c22-c6d7-5e8f-9a0b-1c2d3e4f5a6b",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "courseId": "pack_level_es_b1",
  "status": "completed",
  "progressPercentage": 100,
  "lessonsCompleted": 25,
  "lessonsTotal": 25,
  "result": "pass",
  "score": 92,
  "learningDuration": 1350,
  "startedAt": "2025-01-10T08:00:00Z",
  "completedAt": "2025-01-19T16:45:00Z",
  "lastAccessedAt": "2025-01-19T16:45:00Z",
  "createdAt": "2025-01-10T08:00:00Z",
  "updatedAt": "2025-01-19T16:45:00Z"
}
```

**Early Stage Progress:**

```json
{
  "id": "d4680d33-d7e8-6f9a-0b1c-2d3e4f5a6b7c",
  "userId": "b3c4d5e6-f7a8-5b9c-0d1e-2f3a4b5c6d7e",
  "courseId": "pack_level_fr_a1",
  "status": "in_progress",
  "progressPercentage": 15,
  "lessonsCompleted": 3,
  "lessonsTotal": 20,
  "result": null,
  "score": null,
  "learningDuration": 0,
  "startedAt": "2025-01-22T10:00:00Z",
  "completedAt": null,
  "lastAccessedAt": "2025-01-23T14:20:00Z",
  "createdAt": "2025-01-22T10:00:00Z",
  "updatedAt": "2025-01-23T14:20:00Z"
}
```

**Failed Course:**

```json
{
  "id": "e5791e44-e8f9-7a0b-1c2d-3e4f5a6b7c8d",
  "userId": "c4d5e6f7-a8b9-6c0d-1e2f-3a4b5c6d7e8f",
  "courseId": "pack_level_de_a2",
  "status": "completed",
  "progressPercentage": 100,
  "lessonsCompleted": 18,
  "lessonsTotal": 18,
  "result": "fail",
  "score": 58,
  "learningDuration": 1080,
  "startedAt": "2025-01-05T09:30:00Z",
  "completedAt": "2025-01-18T11:15:00Z",
  "lastAccessedAt": "2025-01-18T11:15:00Z",
  "createdAt": "2025-01-05T09:30:00Z",
  "updatedAt": "2025-01-18T11:15:00Z"
}
```

**Abandoned Course:**

```json
{
  "id": "f6802f55-f9a0-8b1c-2d3e-4f5a6b7c8d9e",
  "userId": "d5e6f7a8-b9c0-7d1e-2f3a-4b5c6d7e8f9a",
  "courseId": "pack_level_it_b1",
  "status": "in_progress",
  "progressPercentage": 30,
  "lessonsCompleted": 6,
  "lessonsTotal": 20,
  "result": null,
  "score": null,
  "learningDuration": 0,
  "startedAt": "2024-12-15T08:00:00Z",
  "completedAt": null,
  "lastAccessedAt": "2024-12-20T16:30:00Z",
  "createdAt": "2024-12-15T08:00:00Z",
  "updatedAt": "2024-12-20T16:30:00Z"
}
```

---

#### Field Behavior Summary Table

| Field | In-Progress (Start) | In-Progress (Mid) | Completed (Pass) | Completed (Fail) |
| --- | --- | --- | --- | --- |
| status | "in_progress" | "in_progress" | "completed" | "completed" |
| progressPercentage | 0 | 1-99 | 100 | 100 |
| lessonsCompleted | 0 | 1-19 | 20 | 20 |
| result | null | null | "pass" | "fail" |
| score | null | null | 85 | 45 |
| learningDuration | 0 | 0 (or TBD) | 1110 | 1200 |
| completedAt | null | null | timestamp | timestamp |

---

#### Key Observations

1. **`learningDuration`:**
    * Always `0` during `in_progress`
    * Set to `course.duration` when `completed`
    * May vary slightly between completions (e.g., 1110 vs 1200)

2. **`result` and `score`:**
    * Both `null` during `in_progress`
    * Both populated when `completed`

3. **`completedAt`:**
    * `null` during `in_progress`
    * Set to completion timestamp when `completed`

4. **Timestamps:**
    * `lastAccessedAt` updates with each activity
    * `updatedAt` updates whenever record changes
    * `createdAt` never changes

---

#### Progress Status Breakdown

**Status Values:**

| Status | Description | Completion Fields |
| --- | --- | --- |
| `in_progress` | Course is ongoing | `result`: null<br>`score`: null<br>`completedAt`: null |
| `completed` | Course is finished | `result`: pass/fail<br>`score`: 0-100<br>`completedAt`: timestamp |

**Result Values:**

| Status | Description |
| --- | --- |
| `pass` | Course passed |
| `fail` | Course failed |

---

#### Relationships

**Progress → User:**

* Each progress record belongs to one user
* Linked via `userId` field
* User can have multiple progress records

**Progress → Course:**

* Each progress record tracks one course
* Linked via `courseId` field
* Course can have multiple progress records (different users)

**Progress Duration Alignment:**

* `learningDuration` should align with course `duration`
* Both measured in minutes
* Represents actual time spent vs. estimated time

---

#### Progress Calculation Examples

**Percentage Calculation:**

```
// Progress percentage calculation
const progressPercentage = Math.round((lessonsCompleted / totalLessons) * 100);

// Examples:
// 15/20 lessons = 75%
// 24/24 lessons = 100%
// 3/25 lessons = 12%
```

**Duration Tracking:**

```
// Learning duration examples
const durationExamples = {
  "pack_level_en_a1": 1110,  // 18.5 hours
  "pack_level_es_a2": 1440,  // 24 hours
  "pack_level_fr_b1": 2100,  // 35 hours
  "pack_level_de_c1": 3600   // 60 hours
};
```

---

#### API Endpoints Using Progress Model

* **GET /progress - Returns array of Progress objects**
* **GET /progress/{id} - Returns single Progress object** (removed in v0.10.0)
* **GET /users/{id}/progress - Returns user's progress records**

---

#### Field Constraints

| Field | Required | Format | Validation |
| --- | --- | --- | --- |
| `id` | ✅ | UUID | Unique progress identifier |
| `userId` | ✅ | UUID | Must reference valid user |
| `courseId` | ✅ | string | Must reference valid course `pack_level_en_a1` |
| `status` | ✅ | enum | `in_progress`, `completed` |
| `progressPercentage` | ✅ | integer | 0-100 range |
| `lessonsCompleted` | ✅ | integer | ≥0, ≤totalLessons |
| `lessonsTotal` | ✅ | integer | ≥0 |
| `result` | ❌ | enum | `pass`, `fail` (only when completed) |
| `score` | ❌ | integer | 0-100 (only when completed) |
| `learningDuration` | ✅ | integer | ≥0 minutes |
| `startedAt` | ✅ | date-time | ISO 8601 format |
| `completedAt` | ❌ | date-time | ISO 8601 format, nullable |
| `lastAccessedAt` | ✅ | date-time | ISO 8601 format |
| `createdAt` | ✅ | date-time | ISO 8601 format |
| `updatedAt` | ✅ | date-time | ISO 8601 format |

---

#### Usage Examples

**API Endpoints Using Progress Model:**

* `GET /progress` - Returns array of Progress objects
* `GET /progress/{id}` - Returns single Progress object (removed in v0.10.0)
* `GET /users/{id}/progress` - Returns user's progress records

**Filtering Examples:**

```
# Filter by user
GET /progress?userId=f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f

# Filter by course
GET /progress?courseId=pack_level_en_a1

# Filter by status
GET /progress?status=completed

# Filter by result
GET /progress?result=pass

# Combine filters
GET /progress?userId=f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f&status=in_progress
```

---

#### Progress States Timeline

**Typical Progress Flow:**

```
1. User starts course
   ├── status: "in_progress"
   ├── progressPercentage: 0
   ├── lessonsCompleted: 0
   ├── startedAt: timestamp
   └── completedAt: null

2. User progresses through course
   ├── progressPercentage: 25, 50, 75...
   ├── lessonsCompleted: increases
   ├── lastAccessedAt: updates
   └── learningDuration: accumulates

3. User completes course
   ├── status: "completed"
   ├── progressPercentage: 100
   ├── lessonsCompleted: totalLessons
   ├── result: "pass" or "fail"
   ├── score: 0-100
   ├── completedAt: timestamp
   └── learningDuration: final total
```

---

#### Business Rules

**Data Consistency:**

* `lessonsCompleted` ≤ `totalLessons`
* `progressPercentage` = `Math.round((lessonsCompleted / lessonsTotal) * 100)`
* `status` only set when `status === "completed"`
* `completedAt` only set when `status === "completed"`
* `learningDuration` should align with course duration

**Status Transitions:**

* `in_progress` → `completed` (final transition)
* No reverse transitions allowed
* Once completed, status cannot change back to `in_progress`

This Progress model provides comprehensive tracking of user learning progress with proper completion assessment and time tracking for enterprise LMS integrations!

**Note:** For complete v0.4.0 Progress Model specification with detailed examples, see the full [v0.4.0 Progress Model Spec](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7381450753/v0.4.0+Progress+Model+Spec) page in Confluence.

---

<a id="050-increment-add-live-lesson-endpoints"></a>
## 🧑‍🏫 0.5.0 Increment: Add Live Lesson Endpoints

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7414054951/0.5.0+Increment+Add+Live+Lesson+Endpoints

**Version Notice**

This page documents v0.5.0 which used `id` and `userId` fields.  
Current version (v0.8.0) uses a refined, singular `institutionUserId` for clarity.

See [0.8.0 Refinement: Refactor user ID fields](#080-refinement-refactor-user-id-fields) for details.

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | DESIGN |
| **Version** | 0.5.0 |
| **Design Date** | 05/11/2025 |
| **Status** | DRAFT |
| **Authors** | @Dan Martinez |

---

## Overview

Version 0.5.0 extends the Busuu Nexus Core API with comprehensive live lesson tracking capabilities. This update adds three new endpoints for monitoring live lesson bookings, attendance, and cancellations across the organisation. The API continues to provide read-only access to core Busuu learning data including enhanced user information, optimised course catalogues, aligned progress tracking, and now complete live lesson management with aggregated statistics.

**Note:** This API has not been implemented yet. This document represents a design specification iteration.

---

## Summary of Changes

**1. Live Lesson Tracking Endpoints:**

**What Changed:**

* Added `GET /live-lessons` endpoint for listing all live lesson records across all users
* Added `GET /live-lessons/{id}` endpoint for retrieving specific live lesson details (removed in v0.10.0)
* Added `GET /users/{id}/live-lessons` endpoint for user-specific live lesson tracking with aggregated summary statistics
* Introduced new `LiveLesson`, `LiveLessonWithoutUserId`, and `LiveLessonSummary` schemas
* Added `UserLiveLessonsResponse` schema for structured user lesson data
* Added new `LessonId` parameter definition
* Introduced "Live Lessons" API tag for endpoint organisation

**Why:**

Live lessons are a critical component of the Busuu learning experience, providing instructor-led group and private sessions. Clients require visibility into lesson bookings, attendance tracking, and completion statistics to provide comprehensive reporting to institutional administrators. This enables organisations to monitor learner engagement and assess the effectiveness of live lesson programmes alongside self-paced course progress.

**Impact:**

Enhancement - adds new functionality without breaking existing endpoints. API consumers gain access to live lesson data through three new endpoints that follow the established design patterns from v0.3.0 (user context separation, redundancy elimination, summary statistics). The `/users/{id}/live-lessons` endpoint provides aggregated metrics including status breakdowns (pending, completed, cancelled, missed), enabling comprehensive live lesson reporting and analytics.

---

### 2. Enhanced User Endpoint Documentation

**What Changed:**

* Updated `GET /users` Related Endpoints section to include reference to `GET /users/{id}/live-lessons`
* Updated `GET /users/{id}` Related Endpoints section to include reference to `GET /users/{id}/live-lessons`

**Why:**

Cross-referencing related endpoints improves API discoverability and helps developers understand the complete data model. As live lessons are directly associated with users, the user endpoints should guide developers to the live lesson endpoints for comprehensive user data retrieval.

**Impact:**

Documentation enhancement - no functional changes. Improves developer experience by providing clearer navigation between related API resources.

---

### 3. API Description Update

**What Changed:**

* Updated API description to include "Live lesson tracking with aggregation and summary statistics" as a core capability
* Added live lesson endpoint descriptions in the Updates section (05 November 2025)

**Why:**

The API description serves as the primary introduction to API capabilities. Including live lesson tracking ensures developers immediately understand the full scope of available functionality when reviewing the OpenAPI specification.

**Impact:**

Documentation enhancement - improves API overview clarity for new developers reviewing the specification.

---

**Note:** [API Response Examples, Data Model Examples, Design Benefits, and API Endpoints Overview sections remain unchanged]

---

<a id="v050-openapi-yaml-spec"></a>
### ⚙️ v0.5.0 OpenAPI YAML Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7434207265/v0.5.0+OpenAPI+YAML+Spec

**Note:** This page contains OpenAPI YAML code blocks. For the complete OpenAPI 3.1 specification, see the Confluence page directly.

---

<a id="v050-swaggerhub-docs"></a>
### 🔗 v0.5.0 Swaggerhub Docs

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7435878408/v0.5.0+Swaggerhub+Docs

**SwaggerHub:** https://app.swaggerhub.com/apis-docs/arlobarlo/busuu-nexus-core-api/0.5.0

**Note:** This page links to SwaggerHub. For interactive API documentation, see the Confluence page directly.

---

<a id="v050-live-lesson-model-spec"></a>
### 🧑‍🏫 v0.5.0 Live Lesson Model Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7440105473/v0.5.0+Live+Lesson+Model+Spec

**Version Notice**

This page documents v0.5.0 which used `id` and `userId` fields.  
Current version (v0.8.0) uses a refined, singular `institutionUserId` for clarity.

See [0.8.0 Refinement: Refactor user ID fields](#080-refinement-refactor-user-id-fields) for details.

---

#### LiveLesson Model Structure

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "type": "group",
  "language": "ES",
  "level": "A1",
  "status": "completed",
  "scheduledAt": "2025-01-20T10:00:00Z",
  "createdAt": "2025-01-15T08:00:00Z",
  "updatedAt": "2025-01-20T10:45:00Z"
}
```

---

## 🔍 Field-by-Field Breakdown

### 🆔 Identity Fields

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `id` | string (UUID) | `"68235e4f-fa67-27e9-d64d-8339a1b2c3d4"` | **Unique live lesson identifier** |
| `userId` | string (UUID) | `"f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f"` | **User identifier** - Links to User model |
| `userEmail` | string (email) | `"john.doe@example.com"` | **User's email address** - Enables flexible querying |

### 📚 Lesson Details

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `type` | enum | `"group"` | **Lesson type**: `group` (multiple participants) or `private` (one-on-one) |
| `language` | string | `"ES"` | **Language code** for the lesson (e.g., "ES", "FR", "EN", etc) |
| `level` | enum | `"A1"` | **CEFR language level**: `A1`, `A2`, `B1`, `B2`, `C1` |

### 📊 Status Tracking

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `status` | enum | `"completed"` | **Lesson status**: `pending`, `completed`, `cancelled`, `missed` |

### ⏱️ Timing Information

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `scheduledAt` | date-time | `"2025-01-20T10:00:00Z"` | **Scheduled date and time** when the lesson occurs or occurred |

### 📅 Record Lifecycle

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `createdAt` | date-time | `"2025-01-15T08:00:00Z"` | **Live lesson booking creation** timestamp |
| `updatedAt` | date-time | `"2025-01-20T10:45:00Z"` | **Last record update** timestamp |

---

#### Example Variations

**Pending Lesson (status: pending):**

```json
{
  "id": "78246e5f-gb78-38fa-e75e-9440b2c3d4e5",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "type": "private",
  "language": "FR",
  "level": "B1",
  "status": "pending",
  "scheduledAt": "2025-01-25T14:30:00Z",
  "createdAt": "2025-01-18T09:00:00Z",
  "updatedAt": "2025-01-18T09:00:00Z"
}
```

**Completed Lesson (status: completed):**

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "type": "group",
  "language": "ES",
  "level": "A1",
  "status": "completed",
  "scheduledAt": "2025-01-20T10:00:00Z",
  "createdAt": "2025-01-15T08:00:00Z",
  "updatedAt": "2025-01-20T10:45:00Z"
}
```

**Cancelled Lesson (status: cancelled):**

```json
{
  "id": "89268g0h-id90-5ahc-g97g-1662d4e5f6g7",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "type": "group",
  "language": "EN",
  "level": "A2",
  "status": "cancelled",
  "scheduledAt": "2025-01-22T16:00:00Z",
  "createdAt": "2025-01-12T11:00:00Z",
  "updatedAt": "2025-01-21T09:30:00Z"
}
```

**Missed Lesson (status: missed):**

```json
{
  "id": "88257f6g-hc89-49gb-f86f-0551c3d4e5f6",
  "userId": "a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d",
  "userEmail": "jane.smith@example.com",
  "type": "group",
  "language": "EN",
  "level": "A2",
  "status": "missed",
  "scheduledAt": "2025-01-19T16:00:00Z",
  "createdAt": "2025-01-10T07:00:00Z",
  "updatedAt": "2025-01-19T16:45:00Z"
}
```

**Group Lesson - Spanish B1:**

```json
{
  "id": "a99380h7-id01-5aic-h08h-1663d4e5f6g8",
  "userId": "b2c3d4e5-f6a7-5b8c-9d0e-1f2a3b4c5d6e",
  "userEmail": "maria.garcia@example.com",
  "type": "group",
  "language": "ES",
  "level": "B1",
  "status": "completed",
  "scheduledAt": "2025-01-18T11:00:00Z",
  "createdAt": "2025-01-12T09:15:00Z",
  "updatedAt": "2025-01-18T11:45:00Z"
}
```

**Private Lesson - French C1:**

```json
{
  "id": "b00491i8-je12-6bjd-i19i-2774e5f6g7h9",
  "userId": "c3d4e5f6-a7b8-6c9d-0e1f-2a3b4c5d6e7f",
  "userEmail": "pierre.dubois@example.com",
  "type": "private",
  "language": "FR",
  "level": "C1",
  "status": "completed",
  "scheduledAt": "2025-01-22T15:30:00Z",
  "createdAt": "2025-01-14T10:20:00Z",
  "updatedAt": "2025-01-22T16:15:00Z"
}
```

---

#### Field Behavior Summary Table

| Field | Pending | Completed | Cancelled | Missed |
| --- | --- | --- | --- | --- |
| `status` | `"pending"` | `"completed"` | `"cancelled"` | `"missed"` |
| `scheduledAt` | Future date-time | Past date-time | Past/future date-time | Past date-time |
| `createdAt` | Booking timestamp | Booking timestamp | Booking timestamp | Booking timestamp |
| `updatedAt` | Booking timestamp | Completion timestamp | Cancellation timestamp | Missed timestamp |

---

#### Key Observations

1. **Fixed Duration:**
    * Each live lesson is **45 minutes** (not stored in model)

2. **Status Transitions:**
    * `pending` → `completed` (user attended)
    * `pending` → `cancelled` (cancelled before occurrence)
    * `pending` → `missed` (user did not attend)
    * Once status changes from `pending`, it does not revert

3. **User Identification:**
    * Includes both `userId` (UUID) and `userEmail` for flexible querying
    * Enables filtering by either identifier without requiring joins

4. **Timestamps:**
    * `createdAt`: When lesson was booked
    * `updatedAt`: Last status change or update
    * `scheduledAt`: Scheduled/actual lesson time

---

#### Lesson Status Breakdown

**Status Values:**

| Status | Description | Typical Use Case |
| --- | --- | --- |
| `pending` | Lesson scheduled but not yet occurred | Future bookings, upcoming lessons |
| `completed` | Lesson successfully completed | User attended and finished lesson |
| `cancelled` | Lesson cancelled before occurrence | User or system cancelled booking |
| `missed` | Lesson scheduled but user did not attend | No-show scenarios |

**Status Lifecycle:**

```
pending
  ├── completed (user attended)
  ├── cancelled (cancelled before lesson)
  └── missed (user did not attend)
```

---

#### Relationships

**LiveLesson → User:**

* Each live lesson belongs to one user
* Linked via `userId` field (UUID)
* Also includes `userEmail` for flexible querying
* User can have multiple live lesson records

**LiveLesson → Language & Level:**

* `language`: Language code (e.g., "ES", "FR", "EN")
* `level`: CEFR level (A1, A2, B1, B2, C1)
* Used for filtering and reporting by language/level

**Related Models:**

* **LiveLessonWithoutUserId**: Same as LiveLesson but without `userId` field (used in `/users/{id}/live-lessons` endpoint where user context is provided separately)
* **LiveLessonSummary**: Aggregated statistics for user's live lessons (total lessons, minutes, status breakdowns)

---

#### Field Constraints

| Field | Required | Format | Validation |
| --- | --- | --- | --- |
| `id` | ✅ | UUID | Unique live lesson identifier |
| `userId` | ✅ | UUID | Must reference valid user |
| `userEmail` | ✅ | email | Valid email format |
| `type` | ✅ | enum | `group` or `private` |
| `language` | ✅ | string | Language code (e.g., "ES", "FR", "EN") |
| `level` | ✅ | enum | `A1`, `A2`, `B1`, `B2`, `C1` |
| `status` | ✅ | enum | `pending`, `completed`, `cancelled`, `missed` |
| `scheduledAt` | ✅ | date-time | ISO 8601 format |
| `createdAt` | ✅ | date-time | ISO 8601 format |
| `updatedAt` | ✅ | date-time | ISO 8601 format |

---

#### Usage Examples

**API Endpoints Using LiveLesson Model:**

* `GET /live-lessons` - Returns array of LiveLesson objects (includes `userId`)
* `GET /live-lessons/{id}` - Returns single LiveLesson object (includes `userId`) (removed in v0.10.0)
* `GET /users/{id}/live-lessons` - Returns user's live lessons with summary (uses `LiveLessonWithoutUserId` - no `userId` field)

**Filtering Examples:**

```
# Filter by user
GET /live-lessons?userId=f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f

# Filter by user email
GET /live-lessons?userEmail=john.doe@example.com

# Filter by lesson type
GET /live-lessons?type=group

# Filter by language
GET /live-lessons?language=ES

# Filter by CEFR level
GET /live-lessons?level=A1

# Filter by status
GET /live-lessons?status=completed

# Filter by date range
GET /live-lessons?dateFrom=2025-01-01T00:00:00Z&dateTo=2025-01-31T23:59:59Z

# Combine filters
GET /live-lessons?status=completed&language=FR&type=private
```

**User-Specific Live Lessons:**

```
# Get user's live lessons with summary
GET /users/{id}/live-lessons

# Response includes:
# - user: UserContext (id, userId, email)
# - summary: LiveLessonSummary (aggregated statistics)
# - data: Array of LiveLessonWithoutUserId (no userId field)
# - pagination: Pagination metadata
```

---

#### LiveLessonSummary Model

The `LiveLessonSummary` model provides aggregated statistics for a user's live lessons:

```json
{
  "totalLessonsPending": 2,
  "totalLessonsCompleted": 6,
  "totalLessonsCancelled": 2,
  "totalLessonsMissed": 2
}
```

**Summary Fields:**

| Field | Type | Description | Calculation |
| --- | --- | --- | --- |
| `totalLessonsPending` | integer | Count of pending lessons | Status = "pending" |
| `totalLessonsCompleted` | integer | Count of completed lessons | Status = "completed" |
| `totalLessonsCancelled` | integer | Count of cancelled lessons | Status = "cancelled" |
| `totalLessonsMissed` | integer | Count of missed lessons | Status = "missed" |

---

#### LiveLessonWithoutUserId Model

The `LiveLessonWithoutUserId` model is identical to `LiveLesson` except it does not include the `userId` or `userEmail` fields. This is used in the `/users/{id}/live-lessons` endpoint where user context is provided separately at the top level, eliminating redundancy.

**Example:**

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "type": "group",
  "language": "ES",
  "level": "A1",
  "status": "completed",
  "scheduledAt": "2025-01-20T10:00:00Z",
  "createdAt": "2025-01-15T08:00:00Z",
  "updatedAt": "2025-01-20T10:45:00Z"
}
```

**Key Difference:**

* `LiveLesson`: Includes `userId` and `userEmail` fields (used in `/live-lessons` and `/live-lessons/{id}`)
* `LiveLessonWithoutUserId`: Excludes `userId` and `userEmail` fields (used in `/users/{id}/live-lessons`)

---

#### Business Rules

**Data Consistency:**

* `scheduledAt` must be a valid ISO 8601 date-time
* `status` transitions: `pending` → `completed`/`cancelled`/`missed` (no reverse transitions)
* `level` must be a valid CEFR level (A1, A2, B1, B2, C1)
* `type` must be either `group` or `private`
* `userEmail` must match the user identified by `userId`

**Duration Calculation:**

* Each live lesson is **45 minutes** (fixed duration)

**Status State Machine:**

* `pending`: Initial state when lesson is booked
* `completed`: User attended and finished lesson
* `cancelled`: Lesson cancelled before occurrence
* `missed`: User did not attend scheduled lesson
* Once status changes from `pending`, it does not revert

---

#### Live Lesson States Timeline

**Typical Live Lesson Flow:**

```
1. Lesson Booked
   ├── status: "pending"
   ├── scheduledAt: future timestamp
   ├── createdAt: booking timestamp
   └── updatedAt: booking timestamp

2. Lesson Occurs
   ├── status: "completed" or "missed"
   ├── scheduledAt: actual lesson time
   └── updatedAt: completion/miss timestamp

3. Alternative: Lesson Cancelled
   ├── status: "cancelled"
   ├── scheduledAt: original scheduled time
   └── updatedAt: cancellation timestamp
```

---

#### 🔗 Related API Endpoints

**Endpoints Using LiveLesson Model:**

* **GET /live-lessons** - List all live lessons (returns `LiveLesson` objects with `userId`)
* **GET /live-lessons/{id}** - Get specific live lesson (returns `LiveLesson` object with `userId`) (removed in v0.10.0)
* **GET /users/{id}/live-lessons** - Get user's live lessons with summary (returns `LiveLessonWithoutUserId` objects without `userId` and `userEmail` fields)

**Response Structure Examples:**

**GET /live-lessons:**

```json
{
  "data": [
    {
      "id": "...",
      "userId": "...",  // Included in cross-user list
      "userEmail": "...",
      ...
    }
  ],
  "pagination": {...}
}
```

**GET /users/{id}/live-lessons:**

```json
{
  "user": {
    "id": "...",
    "userId": "...",
    "email": "..."
  },
  "summary": {
    "totalLessonsPending": 2,
    "totalLessonsCompleted": 6,
    ...
  },
  "data": [
    {
      "id": "...",
      // userId field removed - provided in user context above
      // userEmail field removed - provided in user context above
      "type": "...",
      "language": "...",
      ...
    }
  ],
  "pagination": {...}
}
```

This LiveLesson model provides comprehensive tracking of live lesson bookings, attendance, cancellations, and no-shows for enterprise LMS integrations with aggregated summary statistics!

---

<a id="060-increment-add-certificate-endpoints"></a>
## 🏅 0.6.0 Increment: Add Certificate Endpoints

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7456849923/0.6.0+Increment+Add+Certificate+Endpoints

**Version Notice**

This page documents v0.6.0 which used `id` and `userId` fields.  
Current version (v0.8.0) uses a refined, singular `institutionUserId` for clarity.

See [0.8.0 Refinement: Refactor user ID fields](#080-refinement-refactor-user-id-fields) for details.

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | DESIGN |
| **Version** | 0.6.0 |
| **Design Date** | 10/11/2025 |
| **Status** | DRAFT |
| **Authors** | @Dan Martinez |

---

## Overview

Version 0.6.0 extends the Busuu Nexus Core API with comprehensive certificate tracking and digital credentialing capabilities. This version adds three new endpoints for managing and monitoring certificates earned by users across all language courses, with support for certificate status tracking (active, expired, revoked), CEFR level association, and third-party integration via external certificate URLs and thumbnail images.

**Note:** This API has not been implemented yet. This document represents a design specification iteration.

---

## Summary of Changes

### 1. Certificate Tracking Endpoints

**What Changed:**

* Added `GET /certificates` endpoint to list all certificates with comprehensive filtering
* Added `GET /certificates/{id}` endpoint to retrieve specific certificate details (removed in v0.10.0)
* Added `GET /users/{id}/certificates` endpoint to retrieve user-specific certificates with summary statistics
* Added `CertificateId` path parameter for certificate UUID identification

**Why:**

Certificate tracking is a useful metric for some third-party integrations and institutional reporting. The three-endpoint structure mirrors the existing patterns for users, progress, and live lessons, providing consistent API design. The user-specific endpoint includes aggregated statistics to support certificate dashboard views and reporting requirements.

**Impact:**

New functionality that extends the API's capabilities without affecting existing endpoints. Clients can now track certificate issuance, expiration, and status across all users and courses. The design follows established patterns (user context separation, summary statistics, filtering) ensuring consistency with existing API behaviour.

---

### 2. Certificate Schema

**What Changed:**

* Added `Certificate` schema with full certificate details including userId
* Added `CertificateWithoutUserId` schema for user-specific responses
* Added `CertificateSummary` schema with aggregated statistics
* Added `UserCertificatesResponse` schema for structured user certificate responses

**Why:**

The schema design follows the established pattern from live lessons where user-specific endpoints provide user context separately to eliminate redundancy. The summary object provides essential statistics (total, active, expired, revoked counts) for dashboard and reporting views without requiring client-side aggregation.

**Impact:**

New schemas that follow existing API patterns. The dual-schema approach (with/without userId) reduces payload size for user-specific queries whilst maintaining complete data in cross-user lists. This architectural consistency makes the API more predictable and easier to integrate.

---

### 3. Certificate Data Model

**What Changed:**

* Certificate identifiers: `id` (UUID), `userId` (UUID), `userEmail`, `courseId`
* Certificate metadata: `title`, `language` (14 languages), `level` (CEFR A1-C1)
* Status tracking: `status` (active, expired, revoked)
* Date management: `issuedAt`, `expiresAt` (nullable for non-expiring certificates)
* Integration support: `url` (certificate link), `providerId` (issuer identifier), `thumbnailUrl` (optional image for LMS display)
* Standard timestamps: `createdAt`, `updatedAt`
* **NEW**: Added `grade` field (enum: A+, A, A-, B+, B, B-, C+, C, C-, F) - immutable snapshot of achievement
* **NEW**: Added `progressId` field (UUID) - links certificate to source Progress record

**Why:**

The comprehensive field set supports both internal tracking and external LMS integration. The status field enables proper lifecycle management (tracking active certifications, handling expirations, managing revocations). The optional expiration date accommodates both time-limited and permanent certificates. The URL and thumbnail support seamless LMS integration where certificates are displayed or linked. The `grade` field provides credential-specific assessment data that is immutable at issuance time, while `progressId` maintains traceability to the source learning progress record.

**Impact:**

The certificate model provides complete information for institutional reporting and LMS badging/credentialing features. The nullable `expiresAt` and `thumbnailUrl` fields offer flexibility without requiring unnecessary data. The addition of `grade` and `progressId` enables comprehensive credential tracking while maintaining clear separation between learning progress (operational data) and certificates (immutable credentials). This design enables institutions to track credential attainment and display digital badges in their learning management systems.

---

### 4. Certificate Query Parameters

**What Changed:**

* Added filtering by: `userId`, `userEmail`, `courseId`, `language`, `level`, `status`
* Added date range filtering: `dateFrom`, `dateTo` (ISO 8601 format)
* Standard pagination: `page`, `limit`, `sort` (consistent with existing endpoints)

**Why:**

Comprehensive filtering enables diverse reporting and monitoring use cases. Institutions need to track certificates by user, course, language, and status. Date range filtering supports time-based reporting (e.g., certificates issued this quarter). The parameters align with existing filtering patterns across users, progress, and live lessons endpoints.

**Impact:**

The filtering capabilities support institutional reporting requirements without requiring clients to fetch and filter large datasets. Queries like "all expired French B1 certificates issued in Q1" can be executed server-side efficiently. This reduces network overhead and simplifies client implementation.

---

### 5. API Documentation Updates

**What Changed:**

* Updated API description to include "Certificate tracking with digital credentialing support"
* Added "Certificates" tag with description: "Certificate tracking and digital credentialing with language, CEFR level, status, and expiration dates. Supports external display of certifications."
* Added comprehensive endpoint documentation with common use cases, query parameters, and related endpoints
* Updated health check endpoint version to "0.6.0"
* Added update log entry for 06 November 2025

**Why:**

Documentation completeness ensures developers understand the new certificate capabilities and how they integrate with existing API features. The tag description clearly communicates the certificate tracking scope and external integration support.

**Impact:**

Enhanced API documentation that maintains consistency with existing patterns whilst clearly explaining new functionality. Developers can quickly understand certificate tracking capabilities and integration points with other API resources.

---

## Design Decision: Certificate Language and Level Storage

### Context

With the introduction of certificates in v0.6.0, a key design question emerged: should certificates store `language` and `level` when `courseId` is already available? Additionally, should the Progress model adopt the same denormalised approach?

### Options Considered

**Option 1: Store Language and Level in Certificates Only**

* Certificates include `language` and `level` alongside `courseId`
* Progress remains normalised with only `courseId`

**Option 2: Normalise Certificates to courseId Only**

* Certificates reference only `courseId`
* Language and level derived from course lookup or courseId parsing

**Option 3: Denormalise Both Certificates and Progress**

* Both models store language and level alongside `courseId`
* Consistent approach across all models

### Decision

**Selected: Option 1 - Denormalise Certificates, Keep Progress Normalised**

### Rationale

**Certificate Denormalisation Benefits:**

* **Immutable Attestation**: Certificates represent a stable snapshot of achievement at issuance time. Storing language and level ensures the certificate remains accurate even if course metadata or naming conventions change later
* **Query Performance**: Enables first-class filtering and reporting (e.g., "all B2 certificates in French") without parsing courseId strings or joining to the Courses table
* **Data Stability**: Once issued, certificate details should reflect what was certified at that moment, independent of future course catalogueue changes

**Progress Normalisation Benefits:**

* **Avoid Data Drift**: Progress records are operational and high-churn. Language and level are owned by the Courses model; duplicating them in Progress creates consistency risks
* **Reduce Write Amplification**: Progress records update frequently. Denormalised fields would require additional updates whenever course metadata changes
* **Simpler Maintenance**: Keeping Progress normalised to courseId reduces data duplication and maintenance complexity
* **Derivable Data**: Clients needing language/level can derive these via courseId lookup or request course expansion

### Implementation Notes

* **Certificate Issuance Validation**: At certificate creation, validate that `language` and `level` match the course metadata for the given `courseId`
* **Issuance-Time Snapshot**: Once stored, certificate language and level values are authoritative and immutable
* **Progress Expansion (Future)**: Consider adding optional expansion parameters (e.g., `?expand=course`) to include course attributes in Progress responses without persisting duplicates

### Future Consideration

If Progress queries frequently require language and level filtering, a future version could add read-time expansion or projection capabilities (e.g., `?fields=course.language,course.level`) to provide these attributes without data duplication.

---

## Design Decision: Certificate Grade and Progress Relationship

### Context

With the addition of grading capabilities to the Certificate model in v0.6.0, several design questions emerged:

* Should `grade` be stored in the Certificate model, the Progress model, or both?
* How should assessment data (`score`, `result`) be distributed between Progress and Certificate?
* How should Certificate link to its source Progress record?
* Should multiple certificates be allowed for the same user and course?

These decisions impact data integrity, immutability requirements, and the separation between learning progress tracking and credential representation.

### Options Considered

**Option 1: Store All Assessment Data in Certificate Only**

* Certificate includes `grade`, `score`, and `result`
* Progress tracks only completion status and lesson progress
* Certificate is self-contained

**Option 2: Store All Assessment Data in Progress Only**

* Progress includes `grade`, `score`, and `result`
* Certificate references Progress to derive assessment data
* Single source of truth for assessment data

**Option 3: Store Grade in Certificate, Score/Result in Progress (Selected)**

* Certificate includes `grade` (immutable snapshot)
* Progress includes `score` and `result` (operational data)
* Certificate links to Progress via `progressId`
* Clear separation: Progress = learning data, Certificate = credential data

**Option 4: Store All Assessment Data in Both Models**

* Both Certificate and Progress include `grade`, `score`, and `result`
* Maximum data availability
* Highest redundancy and consistency risk

### Decision

**Selected: Option 3 - Store Grade in Certificate, Score/Result in Progress, with progressId Linkage**

### Rationale

**Separation of Concerns:**

* **Progress Model**: Tracks ongoing learning progress (completion status, lessons completed, learning duration, assessment scores). The `score` and `result` fields are operational learning data that may change during the learning process.
* **Certificate Model**: Represents an immutable credential issued at a specific point in time. The `grade` field is credential-specific and should not change after issuance.

**Immutability of Credentials:**

* Certificates are attestations of achievement at issuance time. The `grade` on a Certificate must remain fixed even if:
    * The source Progress record is updated
    * The grading scale changes
    * The course assessment is modified
    
* Storing `grade` in Certificate creates a snapshot that preserves the credential's integrity over time.

**Data Redundancy Minimization:**

* `score` and `result` are stored only in Progress (single source of truth for operational learning data)
* `grade` is stored only in Certificate (credential-specific display value)
* `progressId` links Certificate to Progress without duplicating assessment data
* This approach minimizes redundancy while maintaining traceability

**LMS Integration Requirements:**

* LMS systems need `score` and `result` in Progress for completion endpoints and reporting
* Certificates need `grade` for display and credentialing purposes
* Keeping them separate allows each model to serve its specific purpose without unnecessary duplication

**Multiple Certificates Support:**

* The design allows multiple certificates for the same user/course combination (e.g., retakes with improved grades)
* Each certificate has its own immutable `grade` and links to its source Progress via `progressId`
* This supports scenarios where users retake assessments and receive new certificates with different grades

**Self-Contained Certificate Display:**

* Certificate can be displayed without joining to Progress
* `grade` is directly available for credential display
* `progressId` provides traceability when needed

### Implementation Notes

**Certificate Issuance Process:**

1. When a certificate is issued, derive `grade` from the Progress record's `score` using the documented grading scale
2. Store `grade` in the Certificate as an immutable snapshot
3. Store `progressId` to link Certificate to the source Progress record
4. The `grade` on the Certificate does not change, even if the Progress `score` is later updated

**Grading Scale:**

The grade is derived from the completion score using the following scale:

* A+: 95-100
* A: 93-94
* A-: 90-92
* B+: 87-89
* B: 83-86
* B-: 80-82
* C+: 77-79
* C: 73-76
* C-: 70-72
* F: 0-69

**Multiple Certificates:**

* The specification allows multiple certificates for the same user/course combination
* Each certificate represents a separate issuance with its own immutable grade
* `progressId` may reference the same or different Progress records, depending on implementation
* This design supports retake scenarios where users improve their grades

### Future Considerations

If there is a need to filter Progress records by grade (e.g., "show all users who achieved A+ in any course"), consider:

* Adding a computed/derived `grade` field to Progress responses (not persisted)
* Adding optional expansion parameters to include grade in Progress responses
* Maintaining the principle that persisted `grade` exists only in Certificate for credential integrity

---

## API Response Examples

This section documents the complete response structures returned by each API endpoint. Version 0.6.0 adds comprehensive inline examples to the OpenAPI specification for the certificate endpoints. These examples show actual payloads clients receive, including wrapper objects, pagination, and certificate metadata.

### Certificate Responses

#### GET `/certificates` - List All Certificates

```json
{
  "data": [
    {
      "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
      "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "userEmail": "john.doe@example.com",
      "courseId": "pack_level_en_b2",
      "progressId": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "title": "English Upper Intermediate (B2)",
      "language": "EN",
      "level": "B2",
      "grade": "A",
      "status": "active",
      "issuedAt": "2025-01-20T10:00:00Z",
      "expiresAt": null,
      "url": "https://certificates.busuu.com/68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
      "providerId": "Busuu Premium Language Learning",
      "thumbnailUrl": "https://cdn.busuu.com/certificates/en-b2-thumbnail.jpg",
      "createdAt": "2025-01-20T10:00:00Z",
      "updatedAt": "2025-01-20T10:00:00Z"
    },
    {
      "id": "78246e5f-gb78-38fa-e75e-9440b2c3d4e5",
      "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "userEmail": "john.doe@example.com",
      "courseId": "pack_level_es_a1",
      "progressId": "3fe54d89-c6b7-5d8e-9f0a-1b2c3d4e5f6a7",
      "title": "Spanish Beginner (A1)",
      "language": "ES",
      "level": "A1",
      "grade": "B+",
      "status": "active",
      "issuedAt": "2025-01-15T14:30:00Z",
      "expiresAt": "2026-01-15T14:30:00Z",
      "url": "https://certificates.busuu.com/78246e5f-gb78-38fa-e75e-9440b2c3d4e5",
      "providerId": "Busuu Premium Language Learning",
      "thumbnailUrl": "https://cdn.busuu.com/certificates/es-a1-thumbnail.jpg",
      "createdAt": "2025-01-15T14:30:00Z",
      "updatedAt": "2025-01-15T14:30:00Z"
    },
    {
      "id": "88257f6g-hc89-49gb-f86f-0551c3d4e5f6",
      "userId": "a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d",
      "userEmail": "jane.smith@example.com",
      "courseId": "pack_level_fr_b1",
      "progressId": "4gf65e9a-d7c8-6e9f-0a1b-2c3d4e5f6a7b8",
      "title": "French Intermediate (B1)",
      "language": "FR",
      "level": "B1",
      "grade": "B",
      "status": "expired",
      "issuedAt": "2024-01-10T08:00:00Z",
      "expiresAt": "2025-01-10T08:00:00Z",
      "url": "https://certificates.busuu.com/88257f6g-hc89-49gb-f86f-0551c3d4e5f6",
      "providerId": "Busuu Premium Language Learning",
      "thumbnailUrl": null,
      "createdAt": "2024-01-10T08:00:00Z",
      "updatedAt": "2025-01-10T08:00:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 150,
    "totalPages": 6,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* Standard list response with data array and pagination object
* All `id` and `userId` fields use UUID format
* Certificate includes `userId` since this is a cross-user list
* `progressId` links certificate to source Progress record
* `grade` is an immutable snapshot at issuance time
* `expiresAt` is nullable (null for non-expiring certificates)
* `thumbnailUrl` is nullable (optional image for LMS display)
* Supports extensive filtering by user, course, language, level, status, and date range

---

#### GET `/certificates/{id}` - Get Specific Certificate

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "courseId": "pack_level_en_b2",
  "progressId": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "title": "English Upper Intermediate (B2)",
  "language": "EN",
  "level": "B2",
  "grade": "A",
  "status": "active",
  "issuedAt": "2025-01-20T10:00:00Z",
  "expiresAt": null,
  "url": "https://certificates.busuu.com/68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "providerId": "Busuu Premium Language Learning",
  "thumbnailUrl": "https://cdn.busuu.com/certificates/en-b2-thumbnail.jpg",
  "createdAt": "2025-01-20T10:00:00Z",
  "updatedAt": "2025-01-20T10:00:00Z"
}
```

**Response Structure Notes:**

* Direct Certificate object (not wrapped in data array)
* Complete certificate details including all metadata
* Includes `userId` for cross-referencing to user endpoint
* `progressId` provides traceability to source Progress record
* `grade` is immutable and represents achievement at issuance time

---

#### GET `/users/{id}/certificates` - Get User Certificates

```json
{
  "user": {
    "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
    "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
    "email": "john.doe@example.com"
  },
  "summary": {
    "totalCertificates": 5,
    "totalCertificatesActive": 3,
    "totalCertificatesExpired": 1,
    "totalCertificatesRevoked": 1
  },
  "data": [
    {
      "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
      "courseId": "pack_level_en_b2",
      "progressId": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
      "title": "English Upper Intermediate (B2)",
      "language": "EN",
      "level": "B2",
      "grade": "A",
      "status": "active",
      "issuedAt": "2025-01-20T10:00:00Z",
      "expiresAt": null,
      "url": "https://certificates.busuu.com/68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
      "providerId": "Busuu Premium Language Learning",
      "thumbnailUrl": "https://cdn.busuu.com/certificates/en-b2-thumbnail.jpg",
      "createdAt": "2025-01-20T10:00:00Z",
      "updatedAt": "2025-01-20T10:00:00Z"
    },
    {
      "id": "78246e5f-gb78-38fa-e75e-9440b2c3d4e5",
      "courseId": "pack_level_es_a1",
      "progressId": "3fe54d89-c6b7-5d8e-9f0a-1b2c3d4e5f6a7",
      "title": "Spanish Beginner (A1)",
      "language": "ES",
      "level": "A1",
      "grade": "B+",
      "status": "active",
      "issuedAt": "2025-01-15T14:30:00Z",
      "expiresAt": "2026-01-15T14:30:00Z",
      "url": "https://certificates.busuu.com/78246e5f-gb78-38fa-e75e-9440b2c3d4e5",
      "providerId": "Busuu Premium Language Learning",
      "thumbnailUrl": "https://cdn.busuu.com/certificates/es-a1-thumbnail.jpg",
      "createdAt": "2025-01-15T14:30:00Z",
      "updatedAt": "2025-01-15T14:30:00Z"
    },
    {
      "id": "88257f6g-hc89-49gb-f86f-0551c3d4e5f6",
      "courseId": "pack_level_fr_b1",
      "progressId": "4gf65e9a-d7c8-6e9f-0a1b-2c3d4e5f6a7b8",
      "title": "French Intermediate (B1)",
      "language": "FR",
      "level": "B1",
      "grade": "B",
      "status": "expired",
      "issuedAt": "2024-01-10T08:00:00Z",
      "expiresAt": "2025-01-10T08:00:00Z",
      "url": "https://certificates.busuu.com/88257f6g-hc89-49gb-f86f-0551c3d4e5f6",
      "providerId": "Busuu Premium Language Learning",
      "thumbnailUrl": null,
      "createdAt": "2024-01-10T08:00:00Z",
      "updatedAt": "2025-01-10T08:00:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 5,
    "totalPages": 1,
    "hasNext": false,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* User context provided once at top level (id, userId, email)
* Summary statistics aggregated across all user's certificates
* Certificates array excludes `userId` field (eliminates redundancy)
* Each certificate includes `progressId` and `grade`
* Multiple certificates allowed for same user/course (e.g., retakes with improved grades)
* Standard pagination object for multi-page results
* Follows the same pattern as `/users/{id}/live-lessons` endpoint

---

## Data Model Examples

### Certificate Model

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "courseId": "pack_level_en_b2",
  "progressId": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "title": "English Upper Intermediate (B2)",
  "language": "EN",
  "level": "B2",
  "grade": "A",
  "status": "active",
  "issuedAt": "2025-01-20T10:00:00Z",
  "expiresAt": null,
  "url": "https://certificates.busuu.com/68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "providerId": "Busuu Premium Language Learning",
  "thumbnailUrl": "https://cdn.busuu.com/certificates/en-b2-thumbnail.jpg",
  "createdAt": "2025-01-20T10:00:00Z",
  "updatedAt": "2025-01-20T10:00:00Z"
}
```

**Key Points:**

* **Certificate Identity**: `id` (UUID), `userId` (UUID), `userEmail`, `courseId`
* **Progress Linkage**: `progressId` (UUID) - references source Progress record
* **Certificate Details**: `title`, `language` (14 languages: EN, ES, FR, DE, IT, PT, NL, JA, KO, PL, RU, TR, ZH, AR), `level` (CEFR: A1, A2, B1, B2, C1)
* **Assessment**: `grade` (enum: A+, A, A-, B+, B, B-, C+, C, C-, F) - immutable snapshot derived from Progress score at issuance time
* **Status Management**: `status` values - "active" (valid certificate), "expired" (past expiration), "revoked" (invalidated)
* **Date Tracking**: `issuedAt` (when issued), `expiresAt` (nullable - null for non-expiring certificates)
* **External Integration**: `url` (link to certificate), `providerId` (issuer identifier, default "Busuu Premium Language Learning"), `thumbnailUrl` (nullable - optional image for LMS display)
* **Audit Trail**: `createdAt`, `updatedAt` timestamps
* **Nullable Fields**: `expiresAt` (for permanent certificates), `thumbnailUrl` (when no image available)
* **Multiple Certificates**: Multiple certificates allowed for same user/course - each represents separate issuance with own immutable grade

---

### CertificateWithoutUserId Model (New in v0.6.0)

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "courseId": "pack_level_en_b2",
  "progressId": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "title": "English Upper Intermediate (B2)",
  "language": "EN",
  "level": "B2",
  "grade": "A",
  "status": "active",
  "issuedAt": "2025-01-20T10:00:00Z",
  "expiresAt": null,
  "url": "https://certificates.busuu.com/68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "providerId": "Busuu Premium Language Learning",
  "thumbnailUrl": "https://cdn.busuu.com/certificates/en-b2-thumbnail.jpg",
  "createdAt": "2025-01-20T10:00:00Z",
  "updatedAt": "2025-01-20T10:00:00Z"
}
```

**Key Points:**

* **Identical to Certificate**: Contains all fields from Certificate model except `userId` and `email`
* **Eliminates Redundancy**: Since user information is provided once at top level in `/users/{id}/certificates` response
* **Used In**: `/users/{id}/certificates` endpoint responses only
* **Maintains Email**: Retains `userEmail` for data completeness even though user context is separate
* **Includes Grade and ProgressId**: Both `grade` and `progressId` are included for complete certificate information

---

### CertificateSummary Model (New in v0.6.0)

```json
{
  "totalCertificates": 5,
  "totalCertificatesActive": 3,
  "totalCertificatesExpired": 1,
  "totalCertificatesRevoked": 1
}
```

**Key Points:**

* **Aggregated Statistics**: Provides certificate counts by status
* **New in v0.6.0**: Introduced to support certificate dashboard and reporting views
* **Used In**: `/users/{id}/certificates` endpoint responses only
* **Status Breakdown**: Separate counts for active, expired, and revoked certificates
* **All Counts**: All values are integers with minimum 0

---

## Design Benefits

### Advantages

* **Consistent Architecture**: Certificate endpoints follow the same three-endpoint pattern (list all, get specific, get user-specific) established by users, progress, and live lessons
* **Digital Credentialing Support**: Comprehensive certificate metadata including URLs and thumbnails enables seamless LMS integration for displaying digital badges and credentials
* **Flexible Expiration Model**: Nullable `expiresAt` accommodates both time-limited and permanent certificates without requiring workarounds
* **Status Lifecycle Management**: Three-state status model (active, expired, revoked) supports complete certificate lifecycle tracking
* **Reduced Redundancy**: User-specific endpoint eliminates repetitive userId fields by providing user context separately, following established pattern
* **Aggregated Statistics**: Summary object in user-specific responses provides instant insights without requiring client-side aggregation
* **Comprehensive Filtering**: Extensive query parameters support diverse institutional reporting requirements without over-fetching data
* **Multi-Language Support**: 14 language codes cover major global languages for international deployment
* **Immutable Credentials**: Grade stored in Certificate provides stable snapshot of achievement at issuance time
* **Progress Traceability**: `progressId` links certificates to source Progress records while maintaining data separation

### Design Considerations

* **Non-Expiring Certificates**: The `expiresAt` field is nullable to accommodate certificates that don't expire, requiring API consumers to handle null values appropriately
* **Status Management**: Certificate expiration is tracked via status field; implementations will need business logic to update status from "active" to "expired" when expiration date is reached
* **Thumbnail Availability**: The optional `thumbnailUrl` field means LMS integrations must gracefully handle certificates without images
* **CEFR Level Limitation**: Certificate levels are limited to A1-C1 (excluding C2), aligning with current course offerings but may require schema extension for C2 support
* **Provider Identifier**: Currently defaults to "Busuu Premium Language Learning"; may need to accommodate multiple issuers in future versions
* **Grade Immutability**: Certificate grade is immutable after issuance - it represents achievement at issuance time and does not change even if source Progress record is updated
* **Multiple Certificates**: The design allows multiple certificates per user/course, supporting retake scenarios where users improve their grades

### Future Evolution

* **Certificate Verification**: Potential addition of digital signature or verification endpoint for third-party certificate validation
* **Badge Integration**: Possible future integration with Open Badges or similar digital credentialing standards
* **Batch Operations**: May add bulk certificate issuance or status update endpoints for administrative efficiency
* **Advanced Filtering**: Could extend filtering to support complex queries (e.g., "certificates expiring within 30 days")
* **C2 Level Support**: May add C2 to CEFR levels as advanced courses are introduced
* **Grade Filtering**: If needed, could add grade-based filtering to certificate endpoints

---

## API Endpoints Overview

| Method | Endpoint | Description | Changes in v0.6.0 |
| --- | --- | --- | --- |
| POST | `/auth/token` | Obtain access token | No changes |
| GET | `/users` | List all users | No changes |
| GET | `/users/{id}` | Get specific user | No changes |
| GET | `/courses` | List all courses | No changes |
| GET | `/courses/{id}` | Get specific course | No changes |
| GET | `/progress` | List all progress | No changes |
| GET | `/progress/{id}` | Get specific progress | No changes |
| GET | `/users/{id}/progress` | Get user progress | No changes |
| GET | `/live-lessons` | List all live lessons | No changes |
| GET | `/live-lessons/{id}` | Get specific live lesson | No changes |
| GET | `/users/{id}/live-lessons` | Get user live lessons | No changes |
| GET | `/certificates` | List all certificates | **NEW in v0.6.0** |
| GET | `/certificates/{id}` | Get specific certificate | **NEW in v0.6.0** (removed in v0.10.0) |
| GET | `/users/{id}/certificates` | Get user certificates | **NEW in v0.6.0** |
| GET | `/utilities/health` | API health check | Version number updated to 0.6.0 |

---

## Complete OpenAPI Specification

The complete OpenAPI specification for this version is maintained in a separate YAML file:

**File:** `Busuu_Nexus_Core_API_v0_6_0.yml`

**Location:** [View YAML specification](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7454359586) _(link to be added when file is uploaded)_

For human-readable documentation and examples, refer to the sections above in this document.

---

<a id="v060-openapi-yaml-spec"></a>
## ⚙️ v0.6.0 OpenAPI YAML Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7454359586/v0.6.0+OpenAPI+YAML+Spec

**Note:** This page contains OpenAPI YAML code blocks. For the complete OpenAPI 3.1 specification, see the Confluence page directly.

---

<a id="v060-swaggerhub-docs"></a>
## 🔗 v0.6.0 Swaggerhub Docs

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7454359587/v0.6.0+Swaggerhub+Docs

**SwaggerHub:** https://app.swaggerhub.com/apis-docs/arlobarlo/busuu-nexus-core-api/0.6.0

**Note:** This page links to SwaggerHub. For interactive API documentation, see the Confluence page directly.

---

<a id="v060-certificate-model-spec"></a>
## 🏅 v0.6.0 Certificate Model Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7453605893/v0.6.0+Certificate+Model+Spec

**Version Notice**

This page documents v0.6.0 which used `id` and `userId` fields.  
Current version (v0.8.0) uses a refined, singlular `institutionUserId` for clarity.

See [6. Refinement: Refactor user ID fields](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7643529283) for details.

---

Here's the Certificate model with detailed examples and explanations:

---

## 📋 Certificate Model Structure

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "courseId": "pack_level_en_b2",
  "progressId": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "title": "English Upper Intermediate (B2)",
  "language": "EN",
  "level": "B2",
  "status": "active",
  "issuedAt": "2025-01-20T10:00:00Z",
  "expiresAt": null,
  "url": "https://certificates.busuu.com/68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "providerId": "Busuu Premium Language Learning",
  "thumbnailUrl": "https://cdn.busuu.com/certificates/en-b2-thumbnail.jpg",
  "grade": "A",
  "createdAt": "2025-01-20T10:00:00Z",
  "updatedAt": "2025-01-20T10:00:00Z"
}
```

---

## 🔍 Field-by-Field Breakdown

### 🆔 Identity Fields

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `id` | string (UUID) | `"68235e4f-fa67-27e9-d64d-8339a1b2c3d4"` | **Unique certificate identifier** |
| `userId` | string (UUID) | `"f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f"` | **User identifier** - Links to User model |
| `userEmail` | string (email) | `"john.doe@example.com"` | **User's email address** - Enables flexible querying |
| `courseId` | string | `"pack_level_en_b2"` | **Course identifier** - Links to Course model |
| `progressId` | string (UUID) | `"2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f"` | **Reference to source progress record** - Links to Progress model that this certificate is based on |

### 🏅 Certificate Details

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `title` | string | `"English Upper Intermediate (B2)"` | **Title of the certificate** |
| `language` | enum | `"EN"` | **Language code**: `EN`, `ES`, `FR`, `DE`, `IT`, `PT`, `NL`, `JA`, `KO`, `PL`, `RU`, `TR`, `ZH`, `AR` |
| `level` | enum | `"B2"` | **CEFR language level**: `A1`, `A2`, `B1`, `B2`, `C1` |

### 🎯 Assessment

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `grade` | enum | `"A"` | **Grade assigned to certificate** - Immutable snapshot derived from completion score in associated progress record at time of issuance. Values: `A+`, `A`, `A-`, `B+`, `B`, `B-`, `C+`, `C`, `C-`, `F` |

**Grading Scale:**

* **A+**: 95-100
* **A**: 93-94
* **A-**: 90-92
* **B+**: 87-89
* **B**: 83-86
* **B-**: 80-82
* **C+**: 77-79
* **C**: 73-76
* **C-**: 70-72
* **F**: 0-69

**Important:** The `grade` field is **immutable** - it is a snapshot at issuance time and does not change after the certificate is issued, even if the source progress record is updated.

### 📊 Status Tracking

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `status` | enum | `"active"` | **Certificate status**: `active`, `expired`, `revoked` |

### 📅 Date Information

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `issuedAt` | date-time | `"2025-01-20T10:00:00Z"` | **Date when the certificate was issued** |
| `expiresAt` | date-time (nullable) | `null` or `"2026-01-20T10:00:00Z"` | **Date when the certificate expires** (null if non-expiring) |

### 🔗 Certificate Metadata

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `url` | string (URI) | `"https://certificates.busuu.com/68235e4f-fa67-27e9-d64d-8339a1b2c3d4"` | **URL to the online certificate or issuer** |
| `providerId` | string | `"Busuu Premium Language Learning"` | **Certificate issuer/provider identifier** (default: "Busuu Premium Language Learning") |
| `thumbnailUrl` | string (URI, nullable) | `"https://cdn.busuu.com/certificates/en-b2-thumbnail.jpg"` or `null` | **URL of an image which will be shown in the LMS** (optional) |

### 📅 Record Lifecycle

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `createdAt` | date-time | `"2025-01-20T10:00:00Z"` | **Certificate creation** timestamp |
| `updatedAt` | date-time | `"2025-01-20T10:00:00Z"` | **Last record update** timestamp |

---

## 📝 Example Variations

### Active Certificate (status: active, non-expiring, Grade A)

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "courseId": "pack_level_en_b2",
  "progressId": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "title": "English Upper Intermediate (B2)",
  "language": "EN",
  "level": "B2",
  "status": "active",
  "issuedAt": "2025-01-20T10:00:00Z",
  "expiresAt": null,
  "url": "https://certificates.busuu.com/68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "providerId": "Busuu Premium Language Learning",
  "thumbnailUrl": "https://cdn.busuu.com/certificates/en-b2-thumbnail.jpg",
  "grade": "A",
  "createdAt": "2025-01-20T10:00:00Z",
  "updatedAt": "2025-01-20T10:00:00Z"
}
```

---

### Active Certificate (status: active, with expiration, Grade B+)

```json
{
  "id": "78246e5f-gb78-38fa-e75e-9440b2c3d4e5",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "courseId": "pack_level_es_a1",
  "progressId": "3fe54d89-c6b7-4d8e-9f0a-1b2c3d4e5f6a",
  "title": "Spanish Beginner (A1)",
  "language": "ES",
  "level": "A1",
  "status": "active",
  "issuedAt": "2025-01-15T14:30:00Z",
  "expiresAt": "2026-01-15T14:30:00Z",
  "url": "https://certificates.busuu.com/78246e5f-gb78-38fa-e75e-9440b2c3d4e5",
  "providerId": "Busuu Premium Language Learning",
  "thumbnailUrl": "https://cdn.busuu.com/certificates/es-a1-thumbnail.jpg",
  "grade": "B+",
  "createdAt": "2025-01-15T14:30:00Z",
  "updatedAt": "2025-01-15T14:30:00Z"
}
```

---

### Expired Certificate (status: expired, Grade B)

```json
{
  "id": "88257f6g-hc89-49gb-f86f-0551c3d4e5f6",
  "userId": "a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d",
  "userEmail": "jane.smith@example.com",
  "courseId": "pack_level_fr_b1",
  "progressId": "4af65e90-d7c8-4e9f-0a1b-2c3d4e5f6a7b",
  "title": "French Intermediate (B1)",
  "language": "FR",
  "level": "B1",
  "status": "expired",
  "issuedAt": "2024-01-10T08:00:00Z",
  "expiresAt": "2025-01-10T08:00:00Z",
  "url": "https://certificates.busuu.com/88257f6g-hc89-49gb-f86f-0551c3d4e5f6",
  "providerId": "Busuu Premium Language Learning",
  "thumbnailUrl": null,
  "grade": "B",
  "createdAt": "2024-01-10T08:00:00Z",
  "updatedAt": "2025-01-10T08:00:00Z"
}
```

---

### Revoked Certificate (status: revoked)

```json
{
  "id": "99268g0h-id90-5ahc-g97g-1662d4e5f6g7",
  "userId": "b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e",
  "userEmail": "maria.garcia@example.com",
  "courseId": "pack_level_de_a2",
  "progressId": "5bg76f01-e7d8-4f9a-0b1c-2d3e4f5a6b7c",
  "title": "German Elementary (A2)",
  "language": "DE",
  "level": "A2",
  "status": "revoked",
  "issuedAt": "2024-06-15T09:00:00Z",
  "expiresAt": "2025-06-15T09:00:00Z",
  "url": "https://certificates.busuu.com/99268g0h-id90-5ahc-g97g-1662d4e5f6g7",
  "providerId": "Busuu Premium Language Learning",
  "thumbnailUrl": "https://cdn.busuu.com/certificates/de-a2-thumbnail.jpg",
  "grade": "C+",
  "createdAt": "2024-06-15T09:00:00Z",
  "updatedAt": "2024-12-01T11:30:00Z"
}
```

---

## 📊 Field Behavior Summary Table

| Field | Active (Non-expiring) | Active (Expiring) | Expired | Revoked |
| --- | --- | --- | --- | --- |
| `status` | `"active"` | `"active"` | `"expired"` | `"revoked"` |
| `expiresAt` | `null` | Future date-time | Past date-time | Past/future date-time |
| `issuedAt` | Issue timestamp | Issue timestamp | Issue timestamp | Issue timestamp |
| `grade` | Grade value (A+, A, A-, B+, B, B-, C+, C, C-, F) | Grade value | Grade value | Grade value |
| `thumbnailUrl` | URL or `null` | URL or `null` | URL or `null` | URL or `null` |

---

## 📝 Key Observations

1. **Grade Immutability:**

    * `grade` is a snapshot at issuance time
    * Derived from completion score in the associated progress record (via `progressId`)
    * Does not change after certificate issuance, even if source progress record is updated
    * Values: `A+`, `A`, `A-`, `B+`, `B`, `B-`, `C+`, `C`, `C-`, `F`
    
2. **Progress Relationship:**

    * Each certificate references its source progress record via `progressId`
    * Assessment data (`result`, `score`) is stored in Progress model, not duplicated in Certificate
    * Certificate focuses on credential-specific data; Progress tracks learning and assessment
    
3. **Expiration Handling:**

    * `expiresAt` can be `null` for non-expiring certificates
    * When `expiresAt` is in the past, `status` should be `"expired"`
    * Non-expiring certificates have `expiresAt: null`
    
4. **Status Transitions:**

    * `active` → `expired` (automatic when expiration date passes)
    * `active` → `revoked` (manual invalidation)
    * Once `revoked`, certificate cannot return to `active`
    * Once `expired`, certificate cannot return to `active` without re-issuance
    
5. **User Identification:**

    * Includes both `userId` (UUID) and `userEmail` for flexible querying
    * Enables filtering by either identifier without requiring joins
    
6. **Language and Level:**

    * `language`: Restricted enum (EN, ES, FR, DE, IT, PT, NL, JA, KO, PL, RU, TR, ZH, AR)
    * `level`: CEFR levels (A1, A2, B1, B2, C1) - no C2
    
7. **Provider ID:**

    * Default value: "Busuu Premium Language Learning"
    * Configurable per certificate for different issuers
    
8. **Thumbnail:**

    * Optional field - can be `null`
    * Used for LMS display purposes
    * Note: Degreed deprecated image upload capability
    

---

## 📊 Certificate Status Breakdown

### Status Values

| Status | Description | Typical Use Case |
| --- | --- | --- |
| `active` | Certificate is valid and not expired | Current, valid certificates |
| `expired` | Certificate has passed its expiration date | Certificates past expiration date |
| `revoked` | Certificate has been revoked (invalidated) | Certificates manually invalidated |

### Status Lifecycle

```
active
  ├── expired (automatic when expiration date passes)
  └── revoked (manual invalidation)
```

---

## 🔗 Relationships

### Certificate → User

* Each certificate belongs to one user
* Linked via `userId` field (UUID)
* Also includes `userEmail` for flexible querying
* User can have multiple certificate records

### Certificate → Course

* Each certificate is associated with one course
* Linked via `courseId` field
* Certificate represents completion/attainment of that course
* Course can have multiple certificates (different users)

### Certificate → Progress

* Each certificate references its source progress record
* Linked via `progressId` field (UUID)
* Certificate `grade` is derived from Progress `score` at issuance time
* Assessment data (`result`, `score`) stored in Progress model, not Certificate
* Certificate `grade` is immutable snapshot; Progress data can change

### Certificate → Language & Level

* `language`: Language code (restricted enum)
* `level`: CEFR level (A1, A2, B1, B2, C1)
* Used for filtering and reporting by language/level

### Related Models

* **CertificateWithoutUserId**: Same as Certificate but without `userId` field (used in `/users/{id}/certificates` endpoint where user context is provided separately)
* **CertificateSummary**: Aggregated statistics for user's certificates (total, active, expired, revoked counts)
* **Progress**: Contains assessment data (`result`, `score`) - Certificate references via `progressId`

---

## 📊 Field Constraints

| Field | Required | Format | Validation |
| --- | --- | --- | --- |
| `id` | ✅ | UUID | Unique certificate identifier |
| `userId` | ✅ | UUID | Must reference valid user |
| `userEmail` | ✅ | email | Valid email format |
| `courseId` | ✅ | string | Must reference valid course |
| `progressId` | ✅ | UUID | Must reference valid progress record |
| `title` | ✅ | string | Title of the certificate |
| `language` | ✅ | enum | `EN`, `ES`, `FR`, `DE`, `IT`, `PT`, `NL`, `JA`, `KO`, `PL`, `RU`, `TR`, `ZH`, `AR` |
| `level` | ✅ | enum | `A1`, `A2`, `B1`, `B2`, `C1` |
| `status` | ✅ | enum | `active`, `expired`, `revoked` |
| `issuedAt` | ✅ | date-time | ISO 8601 format |
| `expiresAt` | ❌ | date-time (nullable) | ISO 8601 format, nullable for non-expiring |
| `url` | ✅ | URI | Valid URL to certificate or issuer |
| `providerId` | ✅ | string | Certificate issuer (default: "Busuu Premium Language Learning") |
| `thumbnailUrl` | ❌ | URI (nullable) | Valid URL to image, optional |
| `grade` | ✅ | enum | `A+`, `A`, `A-`, `B+`, `B`, `B-`, `C+`, `C`, `C-`, `F` - Immutable snapshot |
| `createdAt` | ✅ | date-time | ISO 8601 format |
| `updatedAt` | ✅ | date-time | ISO 8601 format |

---

## 🎯 Usage Examples

### API Endpoints Using Certificate Model

* `GET /certificates` - Returns array of Certificate objects (includes `userId`)
* `GET /certificates/{id}` - Returns single Certificate object (includes `userId`)
* `GET /users/{id}/certificates` - Returns user's certificates with summary (uses `CertificateWithoutUserId` - no `userId` field)

### Filtering Examples

```
# Filter by user
GET /certificates?userId=f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f

# Filter by user email
GET /certificates?userEmail=john.doe@example.com

# Filter by course
GET /certificates?courseId=pack_level_en_b2

# Filter by language
GET /certificates?language=EN

# Filter by CEFR level
GET /certificates?level=B2

# Filter by status
GET /certificates?status=active

# Filter by date range
GET /certificates?dateFrom=2025-01-01T00:00:00Z&dateTo=2025-01-31T23:59:59Z

# Combine filters
GET /certificates?status=active&language=FR&level=B1
```

### User-Specific Certificates

```
# Get user's certificates with summary
GET /users/{id}/certificates

# Response includes:
# - user: UserContext (id, userId, email)
# - summary: CertificateSummary (aggregated statistics)
# - data: Array of CertificateWithoutUserId (no userId field)
# - pagination: Pagination metadata
```

---

## 📈 CertificateSummary Model

The `CertificateSummary` model provides aggregated statistics for a user's certificates:

```json
{
  "totalCertificates": 5,
  "totalCertificatesActive": 3,
  "totalCertificatesExpired": 1,
  "totalCertificatesRevoked": 1
}
```

### Summary Fields

| Field | Type | Description | Calculation |
| --- | --- | --- | --- |
| `totalCertificates` | integer | Total number of certificates | Count of all certificates |
| `totalCertificatesActive` | integer | Count of active certificates | Status = "active" |
| `totalCertificatesExpired` | integer | Count of expired certificates | Status = "expired" |
| `totalCertificatesRevoked` | integer | Count of revoked certificates | Status = "revoked" |

**Note:** `totalCertificates = totalCertificatesActive + totalCertificatesExpired + totalCertificatesRevoked`

---

## 📈 CertificateWithoutUserId Model

The `CertificateWithoutUserId` model is identical to `Certificate` except it does not include the `userId` field. This is used in the `/users/{id}/certificates` endpoint where user context is provided separately at the top level, eliminating redundancy.

**Example:**

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "courseId": "pack_level_en_b2",
  "progressId": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "title": "English Upper Intermediate (B2)",
  "language": "EN",
  "level": "B2",
  "status": "active",
  "issuedAt": "2025-01-20T10:00:00Z",
  "expiresAt": null,
  "url": "https://certificates.busuu.com/68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "providerId": "Busuu Premium Language Learning",
  "thumbnailUrl": "https://cdn.busuu.com/certificates/en-b2-thumbnail.jpg",
  "grade": "A",
  "createdAt": "2025-01-20T10:00:00Z",
  "updatedAt": "2025-01-20T10:00:00Z"
}
```

**Key Difference:**

* `Certificate`: Includes `userId` field (used in `/certificates` and `/certificates/{id}`)
* `CertificateWithoutUserId`: Excludes `userId` and `userEmail` fields (used in `/users/{id}/certificates`)

---

## ⚠️ Business Rules

### Data Consistency

* `expiresAt` can be `null` for non-expiring certificates
* When `expiresAt` is in the past, `status` should be `"expired"`
* `level` must be a valid CEFR level (A1, A2, B1, B2, C1) - no C2
* `language` must be from restricted enum (EN, ES, FR, DE, IT, PT, NL, JA, KO, PL, RU, TR, ZH, AR)
* `userEmail` must match the user identified by `userId`
* `courseId` must reference a valid course
* `progressId` must reference a valid progress record
* `grade` is immutable - set at issuance and never changes

### Grade Immutability

* `grade` is derived from completion `score` in the associated progress record at issuance time
* Once set, `grade` does not change, even if the source progress record is updated
* This ensures certificate integrity and prevents retroactive grade changes
* Assessment data (`result`, `score`) remains in Progress model for tracking and analytics

### Status State Machine

* `active`: Initial state when certificate is issued
* `expired`: Automatic transition when `expiresAt` passes (if expiration date exists)
* `revoked`: Manual invalidation of certificate
* Once `revoked`, certificate cannot return to `active`
* Once `expired`, certificate cannot return to `active` without re-issuance

### Expiration Logic

* If `expiresAt` is `null`, certificate never expires
* If `expiresAt` is set, certificate expires on that date
* Status should automatically update to `"expired"` when expiration date passes

---

## 📈 Certificate States Timeline

### Typical Certificate Flow

```
1. Certificate Issued
   ├── status: "active"
   ├── issuedAt: issue timestamp
   ├── expiresAt: null or future timestamp
   ├── grade: derived from progress.score (immutable snapshot)
   ├── progressId: reference to source progress record
   ├── createdAt: issue timestamp
   └── updatedAt: issue timestamp

2. Certificate Active
   ├── status: "active"
   ├── grade: unchanged (immutable)
   └── updatedAt: last update timestamp

3a. Certificate Expires (if expiration date exists)
   ├── status: "expired"
   ├── expiresAt: past timestamp
   ├── grade: unchanged (immutable)
   └── updatedAt: expiration timestamp

3b. Certificate Revoked (manual)
   ├── status: "revoked"
   ├── grade: unchanged (immutable)
   └── updatedAt: revocation timestamp
```

---

## 🔗 Related API Endpoints

### Endpoints Using Certificate Model

* **GET /certificates** - List all certificates (returns `Certificate` objects with `userId`)
* **GET /certificates/{id}** - Get specific certificate (returns `Certificate` object with `userId`)
* **GET /users/{id}/certificates** - Get user's certificates with summary (returns `CertificateWithoutUserId` objects without `userId`)

### Response Structure Examples

**GET /certificates:**

```json
{
  "data": [
    {
      "id": "...",
      "userId": "...",  // Included in cross-user list
      "userEmail": "...",
      "courseId": "...",
      "progressId": "...",
      "grade": "A",
      ...
    }
  ],
  "pagination": {...}
}
```

**GET /users/{id}/certificates:**

```json
{
  "user": {
    "id": "...",
    "userId": "...",
    "email": "..."
  },
  "summary": {
    "totalCertificates": 5,
    "totalCertificatesActive": 3,
    "totalCertificatesExpired": 1,
    "totalCertificatesRevoked": 1
  },
  "data": [
    {
      "id": "...",
      // userId field removed - provided in user context above
      // userEmail field removed - provided in user context above
      "courseId": "...",
      "progressId": "...",
      "grade": "A",
      ...
    }
  ],
  "pagination": {...}
}
```

---

## 💡 Integration Notes

### LMS Integration (Degreed)

* Certificates can be automatically uploaded to user profiles on Degreed
* **Note:** Degreed deprecated the ability to upload digital images of certifications
* `thumbnailUrl` field is optional and may not be supported by all LMS platforms
* `url` field provides link to online certificate for verification
* `grade` field provides assessment result for LMS display

### Digital Credentialing

* Certificates represent digital credentials similar to LinkedIn badges
* Enables users to display professional certifications on their profiles
* Supports automatic upload to LMS platforms via API integration
* Grade provides standardised assessment result for credential display

### Separation of Concerns

* **Certificate Model**: Focuses on credential-specific data (grade, status, issuance)
* **Progress Model**: Tracks learning progress and assessment data (result, score)
* Certificate references Progress via `progressId` but does not duplicate assessment data
* This design ensures single source of truth for assessment data while maintaining credential immutability

---

This Certificate model provides comprehensive tracking of certificate attainment with language, CEFR level, status, expiration, and grade assessment for enterprise LMS integrations and digital credentialing!

---

<a id="decision-defer-tests-endpoint"></a>
## 🧪 Decision: Defer Tests Endpoint

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7470415967/Decision+Defer+Tests+Endpoint

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | FUTURE CONSIDERATION |
| **Version** | N/A |
| **Analysis Date** | January 2025 |
| **Status** | DEFERRED - PENDING CLIENT DEMAND |
| **Authors** | @Dan Martinez |

---

## Overview

This document consolidates all analysis, discussions, and decisions regarding the proposed tests endpoint for the Busuu Nexus Core API. After rigorous analysis examining REST resource boundaries, data overlap patterns, and client value propositions, the decision has been made to **defer implementation of a tests endpoint** at this time.

The analysis identified two distinct test types: placement tests (taken before course enrolment to determine starting level) and end-of-level tests (taken at course completion to evaluate proficiency). While placement tests present a clear technical case with minimal overlap, end-of-level tests significantly duplicate existing Progress endpoint functionality. Most critically, neither test type has validated client demand or confirmed use cases.

**Note:** This represents a design decision rather than an implementation specification. The decision prioritises validated client needs over speculative endpoint additions.

---

## Executive Summary

### Key Insights

**Design Philosophy**

* Progress and Certificates work well** because they serve different purposes (state vs. artifact)
* Tests and Progress overlap** because end-of-level tests ARE the completion event
* Following patterns is good, but not at the cost of unnecessary complexity

**Value-Driven Design**

* Don't add endpoints without clear demand
* Validate use cases before building
* Start simple, add complexity only when needed

**The Uncertainty**

* Initial analysis created uncertainity about design direction
* Multiple valid approaches, but unclear which solves real problems

### Decision

**Tests endpoint implementation deferred pending client demand.**

### Rationale

**End-of-level tests:**

* Significant overlap with existing Progress endpoint
* Score and result data already available in progress records
* End-of-level test IS the completion event, not a separate resource

**Placement tests:**

* Clear technical case with no overlap
* **Unvalidated business need** - no evidence of client demand
* Strong separation of concerns (pre-enrolment vs post-completion)

**Design principle:**

* Don't add endpoints without clear client demand and validated use cases
* Avoid unnecessary data duplication without strong justification
* Start simple, add complexity only when needed

### Future Consideration

If client demand emerges, placement tests have a stronger technical case than end-of-level tests due to clearer separation of concerns and minimal overlap with existing endpoints.

---

## Design Decision: Tests Endpoint Implementation

### Context

From Confluence: [Beyond the LMS Connector Usecase](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292813495)

Two types of tests were identified for potential API support:

**Placement Tests:**

* Taken before course enrolment to determine starting level
* Result: Language & Level (e.g., "EN", "A2")
* Not tied to a specific course
* Independent lifecycle from course progress

**End-of-Level Tests:**

* Taken at course completion to evaluate proficiency
* Result: Score (0-100), Result (pass/fail), Grade (A+, A, etc.)
* Closely tied to course completion
* Triggers progress record update

### Key Observation

**Overlap identified:**

* End-of-level test results (`score`, `result`, `grade`) already exist in:

    * **Progress endpoint** (`score` (0-100), `result` (pass/fail))
    * **Certificates endpoint** (`grade`) (A+, A, A-, etc.) derived from progress score
    

---

### Options Considered

#### Option 1: Separate `/tests` Endpoint (Both Types)

**Structure:**

* `/tests` - All test attempts (placement + end-of-level)
* `/progress` - Course completion state
* `/certificates` - Credential artefacts

**Pros:**

* Clear separation: Tests = events, Progress = state
* Historical tracking: All test attempts preserved
* Handles placement tests elegantly

**Cons:**

* Significant data overlap for end-of-level tests
* Three sources of truth for end-of-level results (tests, progress, certificates)
* Increased query complexity for clients
* Unclear which endpoint is authoritative for completion scores

**Example of overlap concern:**

```
Test:        score: 85, result: pass, progressId: <uuid>
Progress:    score: 85, result: pass
Certificate: grade: A, progressId: <uuid>
```

**Verdict:**

Rejected due to overlap concerns.

---

#### Option 2: Tests as a sub-resource of Progress

**Structure:**

* `/progress/{id}/tests` - Test attempts for specific progress record
* `/users/{id}/placement-tests` - Placement tests (separate)

**Pros:**

* End-of-level tests naturally grouped with progress
* Clear ownership of test data
* Reduces confusion about data location

**Cons:**

* Placement tests don't fit pattern (no progress record exists)
* Still requires separate endpoint for placement tests
* Adds complexity to progress resource hierarchy

**Verdict:**

Doesn't solve placement test problem.

---

#### Option 3: Separate Placement Tests, Embed End-of-Level Tests in Progress

**Structure:**

* `/placement-tests` - Placement test results only
* `/progress` - Enhanced with optional end-of-level test metadata
* `/certificates` - Unchanged

**Pros:**

* Minimal overlap between endpoints
* Single source of truth for end-of-level scores
* Clear resource boundaries

**Cons:**

* Progress model becomes more complex
* Historical test attempts unclear (if retakes allowed)
* Adds optional fields that may never be populated

**Verdict:**

Considered but rejected on the grounds that it adds complexity without clear benefit.

---

#### Option 4: Separate Tests Enspoint following current CertificatesP[attern

**Structure:**

* `/tests` - All tests attempts
* Links to Progress via `progressId`
* Progress links back via `testId` (optional)

**Pros:**

* Follows established pattern
* Records all tests
* Clear relationships

**Cons:**

* Overlap with progress for end-of-level
* Unclear of clients need this

**Verdict:**

Rejected as pattern doesn't justify overlap without clear client demand.

---

#### Option 5: No Tests Endpoint - Use Existing Structure

**Structure:**

* `/progress` - Contains end-of-level test results (score, result)
* `/certificates` - Contains grade derived from test score
* No placement test support until validated

**Pros:**

* No data duplication
* Leverages existing, working endpoints
* Simpler client integration (fewer endpoints to query)
* Maintains clean data model
* Only adds endpoints when client demand validated

**Cons:**

* Cannot support placement tests (if needed)
* No separate test metadata (testId, testDateTime)
* No historical test attempt tracking (if required)

---

### Decision

**Selected: Option 5 - Defer Tests Endpoint Implementation**

---

### Rationale

#### Data Overlap Concerns

**End-of-Level Tests:**

The Progress endpoint already provides:

* Course completion status
* Completion score (0-100)
* Completion result (pass/fail)
* Completion timestamp (`completedAt`)
* Links to course (via `courseId`)

The Certificates endpoint already provides:

* Certificate grade (A+, A, A-, etc.)
* Certificate issuance date
* Links to progress via `progressId`
* Immutable snapshot of completion assessment

**What would be unique in a tests endpoint:**

* Test ID (separate identifier)
* Test-specific timestamp (vs `completedAt`)
* Historical test attempts (if retakes allowed)

**Analysis:** The unique data points (testId, separate timestamp) do not justify creating a separate endpoint when the core assessment data (score, result, grade) already exists in two places.

#### REST Resource Boundary Analysis

**Placement Tests:**

* Lifecycle: Independent (exists before course enrolment)
* Query patterns: Queried separately from course progress
* Update frequency: Immutable (historical record)
* Access patterns: Different context (pre-enrolment decisions)
* **Verdict:** Would be a distinct resource (if demand validated)

**End-of-Level Tests:**

* Lifecycle: Dependent (tied to course completion)
* Query patterns: Often queried with progress
* Update frequency: Same as progress update
* Access patterns: Same context as progress tracking
* **Verdict:** Questionable as separate resource

#### Domain Model Flow

Understanding the learning journey clarifies why end-of-level tests are tightly coupled to progress:

```
User enrols in Course
  ↓
[Optional] Placement Test → Determines starting level (independent event)
  ↓
User progresses through Course
  ↓
User completes Course
  ↓
[Optional] End-of-Level Test → Generates score/result (triggers progress update)
  ↓
Progress record updated (score, result, status=completed)
  ↓
Certificate issued (grade derived from score)
```

**Key insight:** End-of-level test IS the completion event. It's not a separate event that happens to coincide with completion—it's the mechanism that triggers completion status.

#### Unvalidated Client Demand

**Critical gap in analysis:** No evidence that clients are requesting test data.

**Questions not answered:**

* Do any LMS integrations need placement test data?
* Do clients need historical test attempt tracking?
* Is separate testId needed for audit/compliance?
* Would clients query tests independently from progress?

**Design principle:** Don't build endpoints speculatively. Validate demand first.

#### Design Pattern Comparison

**Working Pattern (Progress ↔ Certificates):**

Certificate is a separate resource because:

* Different purpose: Credential artefact vs progress state
* Different lifecycle: Issued once, immutable
* Different use cases: Sharing credentials vs tracking learning

**Overlap is intentional:** Grade derived from progress score, but certificate serves distinct purpose.

**Proposed Pattern (Tests ↔ Progress):**

Test would be a separate resource because:

* Different purpose: Assessment event vs progress state
* Same lifecycle: Updates with progress completion
* Same use cases: Tracking course completion

**Overlap is problematic:** Score duplicated without distinct purpose.

**Conclusion:** The certificate pattern works because of clear separation of concerns. The tests pattern doesn't offer the same separation for end-of-level tests.

---

### Future Consideration

### If Client Demand Emerges for Placement Tests

**Recommended Approach:**

Follow the established certificates pattern with a focused `/placement-tests` endpoint:

**Structure:**

```
GET /placement-tests
Query parameters:
  - userId
  - language
  - dateFrom/dateTo

Response:
  - testId: UUID
  - userId: UUID
  - userEmail: string
  - language: enum
  - level: enum (A1-C1)
  - testDateTime: date-time
  - courseId: null  # Always null for placement tests
```

**Rationale:**

* Clear separation (pre-enrolment vs post-completion)
* No overlap with existing endpoints
* Follows established API patterns
* Simple, focused resource
* Independent lifecycle from courses

**Prerequisites before implementation:**

* Validate client demand with specific use cases
* Confirm data availability in Busuu systems
* Define access patterns and query requirements
* Document integration scenarios

---

### If Client Demand Emerges for End-of-Level Tests

**Questions to answer first:**

1. What specific data do clients need that Progress endpoint doesn't provide?
2. Do they need historical test attempts (retakes)?
3. Is `testId` needed for audit/compliance requirements?
4. Is separate `testedAt` needed beyond `completedAt`?
5. How would clients query this data differently from progress?

**Possible approaches (in order of preference):**

**1. Enhance Progress Model (if only metadata needed):**

* Add optional `testId` and `testedAt` fields to Progress schema
* Minimal change, single source of truth maintained
* Use when: Clients need test identifiers but not separate resource

**2. Separate Tests Endpoint (if historical tracking critical):**

* Create `/tests` endpoint for assessment history
* Link to progress via `progressId`
* Progress remains authoritative for current state
* Use when: Clients need complete test attempt history, retake tracking

**3. Hybrid Approach (if both needs exist):**

* Tests endpoint for historical records
* Progress for current/latest state
* Clear documentation on which is authoritative for what
* Use when: Different clients have different query patterns

**Key principle:** Only implement if there's a clear, validated need that the Progress endpoint cannot satisfy.

---

## Analysis Performed

### Current State Review

**Progress Endpoint (**`/progress`):

* Course completion status
* Completion score (0-100)
* Completion result (pass/fail)
* Completion timestamp (`completedAt`)
* Links to course (via `courseId`)

**Certificates Endpoint (**`/certificates`):

* Certificate grade (A+, A, A-, etc.)
* Certificate issuance date
* Links to progress via `progressId`
* Immutable snapshot of completion assessment

**What's Missing:**

* Placement test results (language & level)
* Test-specific metadata (testId, testDateTime separate from completedAt)
* Historical test attempts (if user retakes)

---

### Use Case Analysis

#### Placement Tests

**Use case:** "What level should this user start at?"

* **Current solution:** Not available
* **Value:** High - Unique data, no overlap with existing endpoints
* **Justification:** Strong technical case for separate resource

**Client value questions:**

* Do LMS integrations need to display placement test results?
* Should placement tests influence course recommendations?
* Is this data needed for reporting/analytics?

---

#### End-of-Level Tests

**Use case 1:** "Did the user pass?"

* **Current solution:** Available in Progress endpoint (`result`)

**Use case 2:** "What score did they get?"

* **Current solution:** Available in Progress endpoint (`score`)

**Use case 3:** "Show all test attempts"

* **Current solution:** Depends on retake policy (not currently supported)

**Use case 4:** "Test-specific timestamp"

* **Current solution:** `completedAt` in Progress may be sufficient

**Value:** Low - Mostly redundant with existing Progress endpoint

---

### Query Pattern Complexity Analysis

**Scenario: "Get user's complete learning journey"**

**With Separate Tests Endpoint:**

```
GET /users/{id}/placement-tests
GET /users/{id}/progress
GET /users/{id}/tests?type=end-of-level
GET /users/{id}/certificates
```

**Complexity:** 4 endpoints, potential confusion about which has authoritative score

**With Current Structure:**

```
GET /users/{id}/placement-tests  (if implemented)
GET /users/{id}/progress         (includes end-of-level results)
GET /users/{id}/certificates
```

**Complexity:** 3 endpoints (or 2 if placement not needed), clear ownership

---

### Cohesion Analysis

**Placement Tests:**

* High cohesion (completely separate concern)
* Independent lifecycle
* Different query patterns
* Different access context

**End-of-Level Tests:**

* Lower cohesion (tightly coupled to progress)
* Same lifecycle as progress
* Same query patterns
* Same access context

---

## Design Principles Established

1. **Validate before building:** Don't add endpoints without clear client demand
2. **Avoid unnecessary overlap:** Don't duplicate data without strong justification
3. **Follow patterns, but not blindly:** Patterns are guides, not absolute rules
4. **Start simple:** Add complexity only when needed
5. **Value-driven:** Every endpoint must solve a validated problem

---

## Query Pattern Examples

### Current State (Without Tests Endpoint)

**"Did user pass the course?"**

```
GET /progress?userId={id}&courseId={id}
→ Check result: "pass" or "fail"
```

**"What score did they get?"**

```
GET /progress?userId={id}&courseId={id}
→ Check score: 0-100
```

**"What certificate did they earn?"**

```
GET /certificates?userId={id}&courseId={id}
→ Check grade: A+, A, A-, etc.
```

**"What level should user start at?"**

```
Not available - would need placement test endpoint
```

---

### With Tests Endpoint (Hypothetical)

**"Show all tests user took"**

```
GET /tests?userId={id}
→ Returns placement + end-of-level tests
```

**"Did user pass?"**

```
Option 1: GET /progress?userId={id}&courseId={id} → check result
Option 2: GET /tests?userId={id}&type=end-of-level&courseId={id} → check result

Two sources of truth - which is authoritative?
```

This ambiguity is a key reason for deferring the tests endpoint for end-of-level tests.

---

## Data Model Examples

### Current Progress Model

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "courseId": "pack_level_en_a1",
  "status": "completed",
  "progressPercentage": 100,
  "lessonsCompleted": 20,
  "lessonsTotal": 20,
  "score": 85,
  "result": "pass",
  "learningDuration": 1110,
  "startedAt": "2025-01-15T10:00:00Z",
  "completedAt": "2025-02-20T15:30:00Z",
  "lastAccessedAt": "2025-02-20T15:30:00Z",
  "createdAt": "2025-01-15T10:00:00Z",
  "updatedAt": "2025-02-20T15:30:00Z"
}
```

**Key Points:**

* Contains end-of-level test result (`score`, `result`)
* Completion timestamp available (`completedAt`)
* Single source of truth for course completion

---

### Current Certificate Model

```json
{
  "id": "c1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "progressId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "courseId": "pack_level_en_a1",
  "grade": "A",
  "issuedAt": "2025-02-20T15:30:00Z",
  "certificateUrl": "https://certificates.busuu.com/c1e2d3c4...",
  "createdAt": "2025-02-20T15:30:00Z"
}
```

**Key Points:**

* Grade derived from progress score
* Links to progress via `progressId`
* Immutable credential artefact

---

### Hypothetical Placement Test Model (Future)

```json
{
  "testId": "t1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "userEmail": "john.doe@example.com",
  "language": "EN",
  "level": "A2",
  "testDateTime": "2025-01-10T09:00:00Z",
  "courseId": null
}
```

**Key Points:**

* Independent from course progress
* No overlap with existing endpoints
* Clear separation of concerns
* **Note:** Would only be implemented if client demand validated

---

## Design Benefits

### Advantages of Current Decision

* **Simplicity:** Fewer endpoints reduce integration complexity
* **Single Source of Truth:** No ambiguity about where completion data lives
* **No Data Duplication:** End-of-level test results stored once in Progress
* **Clear Ownership:** Progress endpoint owns all completion-related data
* **Reduced Maintenance:** Fewer endpoints to maintain and version
* **Faster Integration:** Clients learn fewer endpoints

### Design Considerations

* **Flexibility for Future:** Decision can be reversed if client demand emerges
* **Placement Tests Viable:** Strong technical case if business need validated
* **Focus on Value:** Resources directed toward validated client needs
* **Pattern Awareness:** Understands when patterns apply vs when they don't

### Future Evolution

* **Validation Phase:** Monitor client feedback and feature requests
* **Incremental Addition:** Can add placement tests without affecting existing endpoints
* **Demand-Driven:** Only implement when clear use cases identified
* **Backward Compatible:** Future additions won't break existing integrations

---

## Related Documentation

**Source Documents (consolidated into this decision):**

* `Tests_Endpoint_Analysis.md` - Initial overlap analysis
* `Tests_Endpoint_Design_Analysis.md` - REST resource boundary analysis
* `Tests_Endpoint_Clarification.md` - Clarification on recording tests
* `Tests_Endpoint_Value_Proposition.md` - Use case and value analysis
* `Tests_Endpoint_Decisive_Design.md` - Pattern-matching approach

**External References:**

* Confluence requirements: [Beyond the LMS Connector Usecase](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7292813495)

---

## Conclusion

The decision to defer tests endpoint implementation maintains API clarity and focuses resources on validated client needs. The analysis revealed that:

* **End-of-level tests** are tightly coupled to course completion and duplicate existing Progress endpoint functionality
* **Placement tests** have a clear technical case but unvalidated business need
* **Design quality** is better served by waiting for confirmed requirements than building speculatively

If client demand emerges in the future, placement tests offer a clean implementation path with minimal overlap. End-of-level test requirements would need thorough validation to justify separate endpoint creation.

**Design quality maintained:** By not rushing into implementation, we've preserved the API's decisiveness and clarity. The uncertainty felt during analysis was valid—it indicated we were trying to solve problems we hadn't fully defined. Better to wait and build the right thing than rush and build the wrong thing.

---

**Status:** Decision documented, ready for future reference

---

<a id="070-increment-add-localisation-support-to-courses-endpoints"></a>
## 🌍 0.7.0 Increment: Add Localisation Support to Courses Endpoints

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7544078373/0.7.0+Increment+Add+Localisation+Support+to+Courses+Endpoints

**Version Notice**

This page documents v0.7.0 which used `id` and `userId` fields.  
Current version (v0.8.0) uses a refined, singular `institutionUserId` for clarity.

See [6. Refinement: Refactor user ID fields](#080-refinement-refactor-user-id-fields) for details.

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | DESIGN |
| **Version** | 0.7.0 |
| **Design Date** | 26/12/2025 |
| **Status** | DRAFT |
| **Authors** | @Dan Martinez |

---

## Overview

Version 0.7.0 introduces comprehensive localisation support for the Course model, enabling multi-language course metadata to support international LMS integrations. This update allows course titles and descriptions to be provided in multiple locales, with a flexible structure to accommodate future language additions.

The API maintains backward compatibility by making the localisation field optional and nullable, ensuring existing integrations continue to function without modification.

**Note:** This API has not been implemented yet. This document represents a design specification iteration.

---

## Summary of Changes

### 1. Course Localisation Support

**What Changed:**

* Added `localisation` field to Course model (nullable object)
* Added `Localisation` schema defining locale metadata structure
* Added `LocalisedCourse` schema for translated field values
* Added `includeAllLocales` query parameter to `/courses` and `/courses/{id}` endpoints
* Updated inline examples to demonstrate localisation structure

**Why:**

Strategic LMS partners (360Learning, Cornerstone, SAP SuccessFactors) require course metadata in their platform's default language. For language learning content, it's critical to distinguish between the language being taught (e.g., English) and the language used to describe the course (e.g., French UI for French-speaking learners). The localisation structure provides this separation whilst avoiding data duplication and maintaining a single source of truth.

**Impact:**

Non-breaking enhancement. Existing clients see `localisation: null` for courses without translations. Clients implementing localisation can:

* Discover available locales via `availableLocales` array
* Access translations for `title` and `description` fields
* Reduce payload size with `includeAllLocales=false` query parameter
* Implement client-side locale selection for optimal caching

---

### 2. Query Parameter Addition

**What Changed:**

* Added `includeAllLocales` boolean parameter (default: `true`) to course endpoints
* When `false`, omits localisation object from response
* Reduces payload size by approximately 60% when translations not needed

**Why:**

Performance optimisation for integrations that don't support localisation or only work with English content. Single response can be cached and served to all clients regardless of their localisation needs.

**Impact:**

Optional parameter with sensible default. Clients automatically receive full localisation data unless they explicitly opt out. No client changes required for existing integrations.

---

### 3. Enhanced Inline Examples

**What Changed:**

* Added complete localisation object to course response examples
* Demonstrated French, Spanish, and German translations
* Included realistic translated course titles and descriptions
* Added example showing course without localisation

**Why:**

Comprehensive examples improve developer understanding and reduce integration errors. Realistic data (actual French/Spanish/German translations) helps developers test client-side locale selection logic.

**Impact:**

Documentation improvement only. Helps partners understand expected data structures and implement localisation handling correctly.

---

## Design Evolution in v0.7.0

### Course Model with Localisation

The v0.7.0 design introduces localisation support for course metadata, enabling multi-language course descriptions whilst maintaining a single canonical course record.

**Previous Design (v0.6.0 and earlier):**

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "language": "English",
  "level": "A1",
  "status": "active"
}
```

**New Design (v0.7.0):**

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "language": "English",
  "level": "A1",
  "status": "active",
  "localisation": {
    "defaultLocale": "en",
    "availableLocales": ["en", "fr", "es", "de"],
    "translations": [
      {
        "locale": "fr",
        "title": "Anglais A1 - Débutant",
        "description": "Cours complet pour débutants en anglais"
      },
      {
        "locale": "es",
        "title": "Inglés A1 - Principiante",
        "description": "Curso completo para principiantes de inglés"
      },
      {
        "locale": "de",
        "title": "Englisch A1 - Anfänger",
        "description": "Vollständiger Anfängerkurs für Englisch"
      }
    ]
  }
}
```

**Design Benefits:**

* **Zero duplication**: Default locale values remain in root fields, not duplicated in translations array
* **Backward compatible**: Nullable field, existing clients unaffected
* **Explicit discovery**: `availableLocales` array clearly lists supported languages
* **Client-controlled**: API serves canonical data; clients implement locale selection logic
* **Cache-friendly**: Single response serves all locales (when `includeAllLocales=true`)
* **Scalable**: Easy to add new locales without schema changes

---

## Design Decision: Localisation Structure

### Context

During design, we needed to determine how to represent multi-language course metadata. Analysis of three major LMS partner APIs (360Learning v2, Cornerstone, SAP SuccessFactors) revealed they all support localisation but use different patterns.

### Options Considered

**Option 1: Embedded Translations Array (Selected)**

```json
{
  "title": "English - Beginner A1",
  "localisation": {
    "defaultLocale": "en",
    "translations": [
      {"locale": "fr", "title": "Anglais - Débutant A1"}
    ]
  }
}
```

**Pros:**

* Zero duplication (default in root, translations in array)
* Clear default locale
* Backward compatible
* Aligns with 360Learning pattern (most developer-friendly)

**Cons:**

* Requires client-side locale selection

**Option 2: Server-Side Locale Merge (Rejected)**

```
GET /courses?locale=fr → Returns French in root fields
```

**Pros:**

* Simpler client code

**Cons:**

* Multiple cache entries (one per locale)
* Complex server-side merge logic
* Response structure varies by query parameter
* Poor caching characteristics

**Option 3: Separate Localised Fields (Rejected)**

```json
{
  "title": {"en": "...", "fr": "...", "es": "..."}
}
```

**Pros:**

* All locales visible at once

**Cons:**

* Breaking change (title becomes object not string)
* Verbose for every field
* Poor readability

### Decision

**Selected: Option 1 - Embedded Translations Array**

### Rationale

**Data Integrity:**

* Root fields always contain valid default locale (English)
* No duplication reduces risk of inconsistency
* Single source of truth for each locale
* Nullable field maintains backward compatibility

**Performance:**

* Single API response serves all locales
* CDN can cache one response for all clients
* Clients implement locale selection (5-10 lines of code)
* No server-side merge complexity

**Architectural Principles:**

* API serves data, not presentation logic
* Clients control presentation (locale selection)
* Standard pattern (GitHub, Stripe, Shopify use similar approaches)
* Easy to extend (add new locales without schema changes)

**Language Learning Context:**

* Clear separation: `course.language` (what we teach) vs `localisation.defaultLocale` (UI language)
* Critical for Busuu: teaching English whilst describing course in French
* Avoids confusion between learning language and interface language

### Future Consideration

If partner demand emerges for server-side merge, could add optional `locale` query parameter in v0.8.0 whilst maintaining canonical structure as default. This would be opt-in for partners who cannot implement client-side locale selection.

---

## Design Decision: Translatable Fields

### Context

The v0.6.0 Course schema contains multiple text fields. We needed to determine which fields should support localisation in v0.7.0.

### Options Considered

**Option A: Title and Description Only (Selected)**

* Only `title` and `description` translatable
* Other fields remain language-neutral

**Option B: Include other fields such as 'Subjects' and/or 'Keywords' Taxonomy**

* Add `subjects` and `keywords` fields to Course model
* Include in translatable fields
* Support localised taxonomies (e.g., "Language" → "Langue")

### Decision

**Selected: Option A - Title and Description Only**

### Rationale

**Scope Control:**

* v0.6.0 Course schema (i.e Nexus Core API) does not currently support such fields
* Cannot translate fields that don't exist
* v0.7.0 focuses on localisation feature, not new field additions
* Keep changes focused and testable

**Future Path:**

* If `subject/keywords` taxonomy added to Course model in future version
* Then localisation support can be added simultaneously
* Avoids scope creep in v0.7.0

**Practical Considerations:**

* `title` and `description` are the primary user-facing fields
* `level` (A1, A2, B1, etc.) is standardised and doesn't require translation
* `language` field indicates what's being taught (business data, not UI)
* `status` is an enum with standard values

---

## Design Decision: Schema Validation Approach

### Context

During v0.7.0 development, we needed to validate locale format (ISO 639-1 language codes with optional ISO 3166-1 region codes, e.g., "en", "fr-CA", "es-MX"). Previous API versions (v0.4.0-v0.6.0) used explicit enum lists for validation (e.g., enum: \[EN, ES, FR, DE, ...\] for certificate language codes).

### Options Considered

**Option 1: Explicit Enum List**

```
locale:
  type: string
  enum: [en, fr, es, de, en-GB, en-US, fr-CA, es-MX, ...]
```

**Pros:**

* Consistent with previous versions (v0.4.0-v0.6.0)
* Explicitly documents supported values
* Clear validation errors

**Cons:**

* Must update schema for every new locale
* Cannot support regional variants without schema changes
* Long enum lists reduce readability

**Option 2: Regex Pattern Validation (Selected)**

```
locale:
  type: string
  pattern: '^[a-z]{2}(-[A-Z]{2})?$'
```

**Pros:**

* Validates format without enumerating every value
* Supports future locales without schema changes
* Enables regional variants (en-GB, fr-CA) automatically
* Follows OpenAPI best practices

**Cons:**

* Less explicit than enum
* Requires understanding of regex pattern

### Decision

Selected: Option 2 - Regex Pattern Validation

### Rationale

**Scalability:**

* Busuu supports 14 languages with potential regional variants
* 14 base languages × 3-4 regions each = 40-56 possible locale codes
* Pattern validation scales without schema maintenance

**Best Practice:**

* Follows guidelines from "Designing APIs with Swagger and OpenAPI" (Ponelat & Rosenstock, 2021)
* Industry-standard approach for format validation (email, URLs, dates, locale codes)
* OpenAPI 3.x specifically supports pattern validation for this use case

**Flexibility:**

* Future locale additions (e.g., hi-IN, pt-BR) work immediately without API version bump
* Regional variants automatically supported
* Aligns with ISO 639-1 and ISO 3166-1 standards

**Precedent:**

* This represents an evolution in validation approach from v0.6.0's enum lists
* Future schemas will use patterns for format validation where appropriate
* Enum lists remain appropriate for true enumerations (status values, roles, etc.)

### Implementation Notes

**Pattern Explanation:**

* ^\[a-z\]{2}: Two lowercase letters (ISO 639-1 language code)
* (-\[A-Z\]{2})?: Optional hyphen followed by two uppercase letters (ISO 3166-1 region code)
* Examples: en, fr, es-MX, en-GB, fr-CA

**When to Use Each Approach:**

* Pattern validation: Format-based constraints (locales, emails, UUIDs, dates)
* Enum validation: True enumerations (status, role, level, difficulty)

### Future Consideration

If partners require explicit documentation of supported locales, we could add a supplementary enum alongside pattern in future versions. However, the pattern-only approach is recommended for maintainability.

---

## API Response Examples

This section documents the complete response structures returned by each API endpoint. Version 0.7.0 adds localisation support to course endpoints. These examples show actual payloads clients receive, including localisation objects where applicable.

### Course Responses

#### GET `/courses` - List All Courses (with Localisation)

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://path/to/logo.jpg"
  },
  "data": [
    {
      "id": "pack_level_en_a1",
      "title": "English A1 - Beginner",
      "description": "Complete beginner course for English language learning",
      "level": "A1",
      "difficulty": {
        "value": "beginner",
        "label": "Beginner",
        "order": 1
      },
      "launchUrl": "https://sso.busuu.com/saml/{{busuuInstitutionId}}/login?course={{courseId}}",
      "duration": 1110,
      "language": "English",
      "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
      "status": "active",
      "localisation": {
        "defaultLocale": "en",
        "availableLocales": ["en", "fr", "es", "de"],
        "translations": [
          {
            "locale": "fr",
            "title": "Anglais A1 - Débutant",
            "description": "Cours complet pour débutants en anglais"
          },
          {
            "locale": "es",
            "title": "Inglés A1 - Principiante",
            "description": "Curso completo para principiantes de inglés"
          },
          {
            "locale": "de",
            "title": "Englisch A1 - Anfänger",
            "description": "Vollständiger Anfängerkurs für Englisch"
          }
        ]
      },
      "publishedAt": "2025-01-20T21:01:58Z",
      "createdAt": "2025-01-20T21:01:58Z",
      "updatedAt": "2025-01-20T21:01:58Z"
    },
    {
      "id": "pack_level_en_a2",
      "title": "English A2 - Elementary",
      "description": "Elementary English course for language learners",
      "level": "A2",
      "difficulty": {
        "value": "elementary",
        "label": "Elementary",
        "order": 2
      },
      "launchUrl": "https://sso.busuu.com/saml/{{busuuInstitutionId}}/login?course={{courseId}}",
      "duration": 1200,
      "language": "English",
      "thumbnailUrl": "https://cdn.busuu.com/courses/en-a2-thumbnail.jpg",
      "status": "active",
      "localisation": null,
      "publishedAt": "2025-01-20T21:01:58Z",
      "createdAt": "2025-01-20T21:01:58Z",
      "updatedAt": "2025-01-20T21:01:58Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 85,
    "totalPages": 4,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **Localisation Field**: New in v0.7.0, nullable (see second course with `null`)
* **Root Fields**: `title` and `description` always contain default locale (English)
* **Translations Array**: Contains non-default locales only (English not duplicated)
* **Available Locales**: Array lists all supported locales including default
* **Backward Compatible**: Courses without translations show `localisation: null`

---

#### GET `/courses/{id}` - Get Specific Course (with Localisation)

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://path/to/logo.jpg"
  },
  "course": {
    "id": "pack_level_en_a1",
    "title": "English A1 - Beginner",
    "description": "Complete beginner course for English language learning",
    "level": "A1",
    "difficulty": {
      "value": "beginner",
      "label": "Beginner",
      "order": 1
    },
    "launchUrl": "https://sso.busuu.com/saml/{{busuuInstitutionId}}/login?course={{courseId}}",
    "duration": 1110,
    "language": "English",
    "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
    "status": "active",
    "localisation": {
      "defaultLocale": "en",
      "availableLocales": ["en", "fr", "es", "de"],
      "translations": [
        {
          "locale": "fr",
          "title": "Anglais A1 - Débutant",
          "description": "Cours complet pour débutants en anglais"
        },
        {
          "locale": "es",
          "title": "Inglés A1 - Principiante",
          "description": "Curso completo para principiantes de inglés"
        },
        {
          "locale": "de",
          "title": "Englisch A1 - Anfänger",
          "description": "Vollständiger Anfängerkurs für Englisch"
        }
      ]
    },
    "publishedAt": "2025-01-20T21:01:58Z",
    "createdAt": "2025-01-20T21:01:58Z",
    "updatedAt": "2025-01-20T21:01:58Z"
  }
}
```

**Response Structure Notes:**

* **Single Course Object**: Wrapped in `course` key with `provider` context
* **Full Localisation**: Complete localisation object with all translations
* **Locale Discovery**: `availableLocales` array enables client-side locale selection

---

#### GET `/courses?includeAllLocales=false` - Reduced Payload

```json
{
  "provider": {
    "id": "busuu",
    "name": "Busuu",
    "description": "Language learning platform",
    "logoUrl": "https://path/to/logo.jpg"
  },
  "data": [
    {
      "id": "pack_level_en_a1",
      "title": "English A1 - Beginner",
      "description": "Complete beginner course for English language learning",
      "level": "A1",
      "difficulty": {
        "value": "beginner",
        "label": "Beginner",
        "order": 1
      },
      "launchUrl": "https://sso.busuu.com/saml/{{busuuInstitutionId}}/login?course={{courseId}}",
      "duration": 1110,
      "language": "English",
      "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
      "status": "active",
      "localisation": null,
      "publishedAt": "2025-01-20T21:01:58Z",
      "createdAt": "2025-01-20T21:01:58Z",
      "updatedAt": "2025-01-20T21:01:58Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 25,
    "total": 85,
    "totalPages": 4,
    "hasNext": true,
    "hasPrevious": false
  }
}
```

**Response Structure Notes:**

* **Omitted Localisation**: `localisation` field set to `null` for all courses
* **Payload Reduction**: Approximately 60% smaller response
* **Use Case**: Integrations that only support English or don't need translations
* **Root Fields Still Present**: `title` and `description` contain default locale

---

## Data Model Examples

### Course Model (Updated in v0.7.0)

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "level": "A1",
  "difficulty": {
    "value": "beginner",
    "label": "Beginner",
    "order": 1
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 1110,
  "language": "English",
  "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
  "status": "active",
  "localisation": {
    "defaultLocale": "en",
    "availableLocales": ["en", "fr", "es", "de"],
    "translations": [
      {
        "locale": "fr",
        "title": "Anglais A1 - Débutant",
        "description": "Cours complet pour débutants en anglais"
      }
    ]
  },
  "publishedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

**Key Points:**

* **New Field**: `localisation` object (nullable) added in v0.7.0
* **CEFR Levels**: Six standard levels supported (A1, A2, B1, B2, C1)
* **Difficulty Object**: Structured difficulty with value, human-readable label, and numeric order (1-5)
* **Templated URL**: `launchUrl` uses placeholders `{{institutionId}}` and `{{courseId}}` for SSO integration
* **Duration**: Specified in minutes
* **Course Status**: Can be "active" or "archived"
* **Language Field**: Indicates language being taught (not UI language)

---

### Localisation Model (New in v0.7.0)

```json
{
  "defaultLocale": "en",
  "availableLocales": ["en", "fr", "es", "de"],
  "translations": [
    {
      "locale": "fr",
      "title": "Anglais A1 - Débutant",
      "description": "Cours complet pour débutants en anglais"
    },
    {
      "locale": "es",
      "title": "Inglés A1 - Principiante",
      "description": "Curso completo para principiantes de inglés"
    },
    {
      "locale": "de",
      "title": "Englisch A1 - Anfänger",
      "description": "Vollständiger Anfängerkurs für Englisch"
    }
  ]
}
```

**Key Points:**

* **Default Locale**: ISO 639-1 language code (e.g., "en", "fr", "es", "de")
* **Available Locales**: Array of all supported locales including default
* **Translations Array**: Contains non-default locales only (nullable)
* **Locale Pattern**: Supports optional region codes (e.g., "en-GB", "fr-CA")
* **Discovery Mechanism**: Clients check `availableLocales` before selecting locale

---

### LocalisedCourse Model (New in v0.7.0)

```json
{
  "locale": "fr",
  "title": "Anglais A1 - Débutant",
  "description": "Cours complet pour débutants en anglais"
}
```

**Key Points:**

* **Locale Required**: Must be present in parent `availableLocales` array
* **Translatable Fields**: Only `title` and `description` in v0.7.0
* **Nullable Fields**: Both `title` and `description` can be null (partial translations)
* **Fallback Strategy**: Clients should fallback to root fields when translation field is null
* **Max Lengths**: Title 500 chars, description 2000 chars

---

## New Schemas

### Localisation Schema

**Purpose:** Encapsulates all localisation metadata for a course, including default locale, available locales, and translation array.

```yaml
Localisation:
  type: object
  required:
    - defaultLocale
    - availableLocales
  properties:
    defaultLocale:
      type: string
      pattern: '^[a-z]{2}(-[A-Z]{2})?$'
      description: Default UI locale (ISO 639-1, optionally with ISO 3166-1 region)
      example: "en"
    availableLocales:
      type: array
      items:
        type: string
        pattern: '^[a-z]{2}(-[A-Z]{2})?$'
      minItems: 1
      uniqueItems: true
      description: List of all supported locales including default
      example: ["en", "fr", "es", "de"]
    translations:
      type: array
      items:
        $ref: '#/components/schemas/LocalisedCourse'
      nullable: true
      description: Array of translations for non-default locales
```

**Usage:**

* Embedded in Course model as nullable field
* Required fields: `defaultLocale`, `availableLocales`
* Translations array is nullable (supports courses with no translations)

---

### LocalisedCourse Schema

**Purpose:** Represents translated course fields for a specific locale.

```yaml
LocalisedCourse:
  type: object
  required:
    - locale
  properties:
    locale:
      type: string
      pattern: '^[a-z]{2}(-[A-Z]{2})?$'
      description: Locale identifier (must be in availableLocales)
      example: "fr"
    title:
      type: string
      maxLength: 500
      nullable: true
      description: Translated course title
      example: "Anglais A1 - Débutant"
    description:
      type: string
      maxLength: 2000
      nullable: true
      description: Translated course description
      example: "Cours complet pour débutants en anglais"
```

**Usage:**

* Array item in `Localisation.translations`
* Only required field: `locale`
* Both `title` and `description` nullable (supports partial translations)
* Clients fallback to root Course fields when translation field is null

---

## Design Comparison: v0.6.0 vs v0.7.0

| Aspect | v0.6.0 | v0.7.0 | Rationale |
| --- | --- | --- | --- |
| **Course localisation** | Not supported | Localisation object with translations array | Strategic LMS partner requirement for multi-language support |
| **Translatable fields** | N/A | title, description | These are the primary user-facing text fields |
| **Query parameters** | None added | includeAllLocales boolean | Performance optimisation for clients not using localisation |
| **Backward compatibility** | N/A | Maintained (nullable field) | Existing integrations unaffected |
| **Response size** | Standard | Larger (+40%) with translations, reducible with query param | Trade-off between functionality and payload size |
| **Locale discovery** | N/A | availableLocales array | Enables client-side locale selection |
| **Default locale** | Implicit (English) | Explicit (defaultLocale field) | Clear indication of root field language |
| **New schemas** | None | Localisation, LocalisedCourse | Reusable schema components |

---

## Design Benefits

### Advantages

* **Strategic Partner Support**: Enables integration with major LMS platforms (360Learning, Cornerstone, SAP SuccessFactors) that require localised course metadata
* **Language Learning Clarity**: Clear separation between `course.language` (what's being taught) and `localisation.defaultLocale` (UI language)
* **Zero Duplication**: Default locale values in root fields, translations in array - no redundancy
* **Cache-Friendly Architecture**: Single API response serves all locales; clients implement locale selection
* **Explicit Discovery**: `availableLocales` array tells clients exactly what's supported
* **Graceful Degradation**: Courses without translations show `localisation: null`; existing clients unaffected
* **Future-Proof**: Easy to add new locales without schema changes; supports regional variants (en-GB, fr-CA)
* **Performance Optimisation**: `includeAllLocales=false` reduces payload by ~60% when translations not needed
* **Client Control**: API serves canonical data; clients control presentation logic
* **Partial Translation Support**: Nullable fields allow gradual translation rollout

### Design Considerations

* **Client Implementation Required**: Clients must implement 5-10 lines of locale selection logic (simple helper function)
* **Payload Size Increase**: Responses with translations are ~40% larger (mitigated by includeAllLocales parameter)
* **Translation Management**: Busuu responsible for maintaining translation accuracy and completeness
* **Locale Coverage**: Initial support for 4 languages (en, fr, es, de); additional locales require content team resources

### Future Evolution

* Add optional `subjects/keywords` taxonomy fields to Course model with localisation support
* Regional variants (en-GB vs en-US, fr-FR vs fr-CA) if partner demand emerges
* Additional translatable fields based on partner feedback
* Server-side locale merge as opt-in feature if partners cannot implement client-side selection

---

## API Endpoints Overview

| Method | Endpoint | Description | Changes in v0.7.0 |
| --- | --- | --- | --- |
| POST | `/auth/token` | Obtain access token | No changes |
| GET | `/users` | List all users | No changes |
| GET | `/users/{id}` | Get specific user | No changes |
| GET | `/courses` | List all courses | Added localisation field in response, added includeAllLocales query parameter |
| GET | `/courses/{id}` | Get specific course | Added localisation field in response, added includeAllLocales query parameter, added inline example |
| GET | `/progress` | List all progress | No changes |
| GET | `/progress/{id}` | Get specific progress | No changes |
| GET | `/users/{id}/progress` | Get user progress | No changes |
| GET | `/live-lessons` | List all live lessons | No changes |
| GET | `/live-lessons/{id}` | Get specific live lesson | No changes |
| GET | `/users/{id}/live-lessons` | Get user live lessons | No changes |
| GET | `/certificates` | List all certificates | No changes |
| GET | `/certificates/{id}` | Get specific certificate | No changes |
| GET | `/users/{id}/certificates` | Get user certificates | No changes |
| GET | `/utilities/health` | API health check | Version number updated to 0.7.0 |

---

## Complete OpenAPI Specification

The complete OpenAPI specification for this version is maintained in a separate YAML file:

**File:** `Busuu_Nexus_Core_API_v0_7_0.yml`

**Location:** [View YAML specification](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7642873857/v0.7.0+OpenAPI+YAML+Spec) _(link to be added when file is uploaded)_

For human-readable documentation and examples, refer to the sections above in this document.

---

<a id="v070-openapi-yaml-spec"></a>
## ⚙️ v0.7.0 OpenAPI YAML Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7642873857/v0.7.0+OpenAPI+YAML+Spec

**Note:** This page contains OpenAPI YAML code blocks. For the complete OpenAPI 3.1 specification, see the Confluence page directly.

---

<a id="v070-swaggerhub-docs"></a>
## 🔗 v0.7.0 Swaggerhub Docs

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7642873860/v0.7.0+Swaggerhub+Docs

**SwaggerHub:** https://app.swaggerhub.com/apis-docs/arlobarlo/busuu-nexus-core-api/0.7.0

**Note:** This page links to SwaggerHub. For interactive API documentation, see the Confluence page directly.

---

<a id="v070-course-model-spec"></a>
## 🌍 v0.7.0 Course Model Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7642906625/v0.7.0+Course+Model+Spec

---

Here's the Course model with localisation support and detailed examples:

## 📋 Course Model Structure (v0.7.0)

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "level": "A1",
  "difficulty": {
    "value": "beginner",
    "label": "Beginner",
    "order": 1
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 1110,
  "language": "English",
  "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
  "status": "active",
  "localisation": {
    "defaultLocale": "en",
    "availableLocales": ["en", "fr", "es", "de"],
    "translations": [
      {
        "locale": "fr",
        "title": "Anglais A1 - Débutant",
        "description": "Cours complet pour débutants en anglais"
      },
      {
        "locale": "es",
        "title": "Inglés A1 - Principiante",
        "description": "Curso completo para principiantes de inglés"
      },
      {
        "locale": "de",
        "title": "Englisch A1 - Anfänger",
        "description": "Vollständiger Anfängerkurs für Englisch"
      }
    ]
  },
  "publishedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

---

## 🔍 Field-by-Field Breakdown

### 🆔 Identity Fields

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `id` | string | `"pack_level_en_a1"` | **Unique course identifier** - Used in API calls |

### 📖 Content Information

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `title` | string | `"English A1 - Beginner"` | **Course title** - Display name in default locale (English) |
| `description` | string | `"Complete beginner course..."` | **Course description** - Detailed info in default locale (English) |
| `language` | string | `"English"` | **Target language** being learned (NOT the UI language) |

### 🎯 Learning Level

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `level` | enum | `"A1"` | **CEFR level**: `A1`, `A2`, `B1`, `B2`, `C1` |

### 📊 Difficulty Rating (Embedded Object)

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `difficulty.value` | enum | `"beginner"` | **Difficulty value**: `beginner`, `elementary`, `intermediate`, `upper_intermediate`, `advanced` |
| `difficulty.label` | string | `"Beginner"` | **Human-readable label** |
| `difficulty.order` | integer | `1` | **Difficulty order** (1-5, where 1=easiest) |

### 🔗 Access & Launch

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `launchUrl` | URI | `"https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}"` | **SSO launch URL** with templated IDs |

### ⏱️ Duration & Media

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `duration` | integer | `1110` | **Course duration in minutes** (18.5 hours) |
| `thumbnailUrl` | URI | `"https://cdn.busuu.com/courses/en-a1-thumbnail.jpg"` | **Course thumbnail image** |

### 📅 Status & Lifecycle

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `status` | enum | `"active"` | **Course status**: `active`, `archived` |
| `publishedAt` | date-time | `"2025-01-20T21:01:58Z"` | **Publication timestamp** |
| `createdAt` | date-time | `"2025-01-20T21:01:58Z"` | **Creation timestamp** |
| `updatedAt` | date-time | `"2025-01-20T21:01:58Z"` | **Last update timestamp** |

### 🌍 NEW: Localisation (Embedded Object)

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `localisation` | object/null | See below | **Multi-language translations** - Optional localisation for course metadata |
| `localisation.defaultLocale` | string | `"en"` | **Default UI locale** (ISO 639-1 code) - Language of root fields |
| `localisation.availableLocales` | array | `["en", "fr", "es", "de"]` | **Available locales** - List of all supported translations |
| `localisation.translations` | array/null | See below | **Translation array** - Translations for non-default locales |

### 🌍 Localised Course Fields (Within translations array)

| Field | Type | Example | Description |
| --- | --- | --- | --- |
| `locale` | string | `"fr"` | **Locale identifier** (ISO 639-1 code) - Must be in availableLocales |
| `title` | string/null | `"Anglais A1 - Débutant"` | **Translated title** - If null, fallback to root title |
| `description` | string/null | `"Cours complet pour débutants en anglais"` | **Translated description** - If null, fallback to root description |

---

## 📝 Example Variations

### English A1 with Full Localisation

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "level": "A1",
  "difficulty": {
    "value": "beginner",
    "label": "Beginner",
    "order": 1
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 1110,
  "language": "English",
  "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
  "status": "active",
  "localisation": {
    "defaultLocale": "en",
    "availableLocales": ["en", "fr", "es", "de"],
    "translations": [
      {
        "locale": "fr",
        "title": "Anglais A1 - Débutant",
        "description": "Cours complet pour débutants en anglais"
      },
      {
        "locale": "es",
        "title": "Inglés A1 - Principiante",
        "description": "Curso completo para principiantes de inglés"
      },
      {
        "locale": "de",
        "title": "Englisch A1 - Anfänger",
        "description": "Vollständiger Anfängerkurs für Englisch"
      }
    ]
  },
  "publishedAt": "2025-01-20T21:01:58Z",
  "createdAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-20T21:01:58Z"
}
```

### Spanish B1 with Partial Localisation

```json
{
  "id": "pack_level_es_b1",
  "title": "Spanish B1 - Intermediate",
  "description": "Intermediate Spanish course focusing on conversation and complex grammar",
  "level": "B1",
  "difficulty": {
    "value": "intermediate",
    "label": "Intermediate",
    "order": 3
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 2100,
  "language": "Spanish",
  "thumbnailUrl": "https://cdn.busuu.com/courses/es-b1-thumbnail.jpg",
  "status": "active",
  "localisation": {
    "defaultLocale": "en",
    "availableLocales": ["en", "fr"],
    "translations": [
      {
        "locale": "fr",
        "title": "Espagnol B1 - Intermédiaire",
        "description": null
      }
    ]
  },
  "publishedAt": "2024-12-01T09:00:00Z",
  "createdAt": "2024-12-01T09:00:00Z",
  "updatedAt": "2025-01-10T16:45:00Z"
}
```

### German C1 without Localisation

```json
{
  "id": "pack_level_de_c1",
  "title": "German C1 - Advanced",
  "description": "Advanced German course for fluent communication and professional use",
  "level": "C1",
  "difficulty": {
    "value": "advanced",
    "label": "Advanced",
    "order": 5
  },
  "launchUrl": "https://sso.busuu.com/saml/{{institutionId}}/login?course={{courseId}}",
  "duration": 3600,
  "language": "German",
  "thumbnailUrl": "https://cdn.busuu.com/courses/de-c1-thumbnail.jpg",
  "status": "active",
  "localisation": null,
  "publishedAt": "2024-10-15T11:00:00Z",
  "createdAt": "2024-10-15T11:00:00Z",
  "updatedAt": "2025-01-05T13:30:00Z"
}
```

---

## 🌍 Localisation Breakdown

### How Localisation Works

**1. Default Locale (Root Fields)**

* Root `title` and `description` are **always in English** (default locale)
* This is indicated by `localisation.defaultLocale: "en"`
* Provides consistent fallback for all clients

**2. Available Locales**

* `availableLocales` array lists ALL supported locales (including default)
* Use this to check what translations are available
* Example: `["en", "fr", "es", "de"]`

**3. Translations Array**

* Contains translations for **non-default locales only**
* Each translation has `locale`, `title`, `description`
* If field is `null`, fallback to root field

**4. Nullable Localisation**

* `localisation` field can be `null` for courses without translations
* Backwards compatible with v0.4.0 clients

### Language vs Locale

| Field | Meaning | Example | Purpose |
| --- | --- | --- | --- |
| `language` | Language being **TAUGHT** | `"English"` | The course subject |
| `localisation.defaultLocale` | Language of **METADATA** | `"en"` | The UI language |

**Example:** A Spanish course (`language: "Spanish"`) can have French UI (`defaultLocale: "fr"`).

### Client-Side Locale Selection

```javascript
// Helper function to get localised field
function getLocalisedField(course, field, preferredLocale) {
  // Try to find translation for preferred locale
  const translation = course.localisation?.translations
    ?.find(t => t.locale === preferredLocale);
  
  // Return translated field if available, otherwise fallback to default
  return translation?.[field] || course[field];
}

// Usage example
const userLocale = 'fr';  // User's preferred language
const courseTitle = getLocalisedField(course, 'title', userLocale);
// Returns: "Anglais A1 - Débutant" (French)
```

---

## 🔗 Relationships

### Course → Provider

* Courses belong to a provider (Busuu)
* Provider info included in response wrapper
* Provider provides branding and context

### Course → Progress

* Users create progress records for courses
* Progress linked via `courseId` field
* Tracks completion and learning time

### Course → Institution

* Courses launched via institution-specific SSO
* `{{institutionId}}` template in launch URL
* Institution provides access context

### Course → Localisation

* **NEW in v0.7.0:** Courses can have localised metadata
* Translations embedded in `localisation` object
* Client-side locale selection for optimal caching

---

## 📊 Field Constraints

| Field | Required | Format | Validation |
| --- | --- | --- | --- |
| `id` | ✅ | string | Unique course identifier |
| `title` | ✅ | string | Non-empty, descriptive (default locale) |
| `description` | ✅ | string | Non-empty, detailed (default locale) |
| `level` | ✅ | enum | `A1`, `A2`, `B1`, `B2`, `C1` |
| `difficulty` | ✅ | object | Required: value, label, order |
| `difficulty.value` | ✅ | enum | `beginner`, `elementary`, `intermediate`, `upper_intermediate`, `advanced` |
| `difficulty.label` | ✅ | string | Human-readable |
| `difficulty.order` | ✅ | integer | 1-5 range |
| `launchUrl` | ✅ | URI | Valid URL with templates |
| `duration` | ✅ | integer | ≥0 minutes |
| `language` | ✅ | string | Target language name |
| `thumbnailUrl` | ✅ | URI | Valid image URL |
| `status` | ✅ | enum | `active`, `archived` |
| `localisation` | ❌ | object/null | **Optional** - Nullable localisation object |
| `localisation.defaultLocale` | ✅ (if present) | string | ISO 639-1 code (e.g., "en", "fr") |
| `localisation.availableLocales` | ✅ (if present) | array | Min 1, must include defaultLocale |
| `localisation.translations` | ❌ | array/null | Optional translation array |
| `localisation.translations[].locale` | ✅ | string | Must be in availableLocales |
| `localisation.translations[].title` | ❌ | string/null | Max 500 chars, nullable |
| `localisation.translations[].description` | ❌ | string/null | Max 2000 chars, nullable |
| `publishedAt` | ✅ | date-time | ISO 8601 format |
| `createdAt` | ✅ | date-time | ISO 8601 format |
| `updatedAt` | ✅ | date-time | ISO 8601 format |

---

## 🎯 Usage Examples

### API Endpoints Using Course Model

* `GET /courses` - Returns CourseListResponse with courses array
* `GET /courses/{id}` - Returns CourseDetailResponse with single course

### NEW: Query Parameter

`includeAllLocales` (boolean, default: true)

```
# Default - includes all locales
GET /courses

# Exclude localisation (reduced payload)
GET /courses?includeAllLocales=false

# Get specific course with locales
GET /courses/pack_level_en_a1

# Get specific course without locales
GET /courses/pack_level_en_a1?includeAllLocales=false
```

### Filtering Examples

```
# Filter by CEFR level
GET /courses?level=A1

# Filter by difficulty
GET /courses?difficulty=beginner

# Filter by status
GET /courses?status=active

# Search by title/description (searches in default locale)
GET /courses?search=english

# Combine filters with localisation control
GET /courses?level=A1&status=active&includeAllLocales=false
```

### Client-Side Locale Selection

```javascript
// Fetch course once (cacheable for all locales)
const response = await fetch('/courses/pack_level_en_a1');
const course = response.course;

// Check available locales
const availableLocales = course.localisation?.availableLocales || ['en'];
console.log('Available locales:', availableLocales);

// Get localised field
function getLocalisedField(course, field, preferredLocale) {
  const translation = course.localisation?.translations
    ?.find(t => t.locale === preferredLocale);
  return translation?.[field] || course[field];
}

// Usage
const userLocale = 'fr';
const courseTitle = getLocalisedField(course, 'title', userLocale);
const courseDescription = getLocalisedField(course, 'description', userLocale);
```

---

## 🆕 What's New in v0.7.0?

### Added Features

✅ **Localisation Support**

* Multi-language translations for course metadata
* Client-side locale selection
* CDN-friendly caching (one response serves all locales)

✅ **New Field:** `localisation`

* Nullable object containing translation metadata
* `defaultLocale`: Language of root fields
* `availableLocales`: List of supported locales
* `translations[]`: Array of translated course data

✅ **New Query Parameter:** `includeAllLocales`

* Controls whether localisation object is included
* Default: `true` (includes all translations)
* Set to `false` for reduced payload

✅ **Translatable Fields**

* `title` - Course title
* `description` - Course description

❌ **Non-Translatable Fields** (remain the same)

* All other fields (id, level, duration, URLs, timestamps, etc.)

### Backward Compatibility

✅ **Fully Compatible with v0.4.0**

* All existing fields unchanged
* `localisation` field is nullable (can be null/omitted)
* Existing clients work without modifications
* No breaking changes

### Migration Path

**From v0.4.0 to v0.7.0:**

1. No changes required for basic integration
2. Optionally implement client-side locale selection
3. Use `includeAllLocales=false` if translations not needed

---

## ⚡ Performance & Caching

### Caching Strategy

**Single Response Serves All Locales:**

* One API response contains all translations
* Highly cacheable (CDN-friendly)
* No cache fragmentation from locale-specific requests
* Clients select locale client-side

**When to Use** `includeAllLocales=false`:

* Clients that don't support localisation
* Integrations that only work in English
* Performance-sensitive scenarios requiring reduced payload

### Payload Size Comparison

| Scenario | `localisation` Field | Payload Size |
| --- | --- | --- |
| No translations | `null` | Baseline |
| With 3 translations | Full object | +40-60% |
| `includeAllLocales=false` | `null` | Baseline |

---

## 🔍 Validation Rules

### Localisation Object Validation

* `defaultLocale`: Required (if localisation present), pattern `^[a-z]{2}(-[A-Z]{2})?$`
* `availableLocales`: Required (if localisation present), minimum 1 item, must include `defaultLocale`
* `translations`: Optional, can be null or empty array

### Translation Validation

* `locale`: Required, must be in `availableLocales`, must NOT equal `defaultLocale`
* `title`: Optional (nullable), max 500 characters
* `description`: Optional (nullable), max 2000 characters
* If translation field is `null`, fallback to root field

### Important Notes

* Root fields (`title`, `description`) are ALWAYS in `defaultLocale`
* Translations array does NOT include default locale
* Empty translations array `[]` means only default locale available
* `localisation: null` means no translations exist

---

## 📈 Duration Examples

| Duration (minutes) | Hours | Typical Course |
| --- | --- | --- |
| `900` | 15 hours | A1 Beginner |
| `1110` | 18.5 hours | A1 Complete |
| `1440` | 24 hours | A2 Elementary |
| `2100` | 35 hours | B1 Intermediate |
| `3600` | 60 hours | C1 Advanced |

---

## 🔄 Change Log

### v0.7.0 (26 December 2025) - Current

* ✅ Added `localisation` field for multi-language support
* ✅ Added `includeAllLocales` query parameter
* ✅ Support for translating `title` and `description` fields
* ✅ Client-side locale selection pattern
* ✅ Fully backward compatible with v0.4.0

### v0.4.0 (Previous)

* Initial Course model specification
* See [v0.4.0 Course Model Spec](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7381417985) for details

---

This Course model provides comprehensive learning content information with proper difficulty classification, SSO integration, **and multi-language localisation support** for enterprise LMS systems!

---

<a id="080-refinement-refactor-user-id-fields"></a>
## 👤 0.8.0 Refinement: Refactor user ID fields

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7643529283/0.8.0+Refinement+Refactor+user+ID+fields

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | DESIGN |
| **Version** | 0.8.0 |
| **Design Date** | 27/12/2024 |
| **Status** | DRAFT |
| **Authors** | @Dan Martinez |

---

## Overview

Version 0.8.0 refactors the user identification system to use a single, semantically clear identifier (`institutionUserId`) throughout the API. This change replaces the previous dual-ID approach that used both `id` and `userId` fields, improving API clarity and better representing the institutional context of user data.

**Note:** This API has not been implemented yet. This document represents a design specification iteration.

---

## Summary of Changes

### 1. User Schema - Single Identifier Approach

**What Changed:**

* Removed the `id` field from the User schema
* Renamed `userId` to `institutionUserId` as the sole primary identifier
* Updated field description to explicitly state "Use this ID for all Nexus API operations"
* Maintained UUID format for the identifier

**Why:**

The previous dual-identifier approach (`id` and `userId`) created unnecessary confusion for API consumers, as both were UUIDs with unclear semantic differences. The new `institutionUserId` name makes it immediately clear that users exist within an institutional context and this is the identifier to use throughout the API. This aligns with the Nexus API's architectural principle that all user data is scoped to institutions.

**Impact:**

Breaking change. All existing API consumers must update their code to use `institutionUserId` instead of `id` or `userId` when referencing users. This affects path parameter construction, response parsing, and any stored user references.

---

### 2. User Endpoint Path Parameters

**What Changed:**

* Updated path parameter from generic `{id}` to semantic `{institutionUserId}` in documentation
* Created new `InstitutionUserId` parameter component with explicit semantics
* Updated all endpoint descriptions and examples to reference `institutionUserId`
* Path definitions: `GET /users/{institutionUserId}`, `GET /users/{institutionUserId}/progress`, `GET /users/{institutionUserId}/live-lessons`, `GET /users/{institutionUserId}/certificates`

**Why:**

Generic `{id}` parameters don't communicate the identifier's scope or purpose. Using `{institutionUserId}` in the parameter name makes API paths self-documenting and immediately communicates that the identifier is institution-specific. This reduces integration errors and improves developer experience.

**Impact:**

None as still in pre-release, therefore not introducing a breaking change. This is primarily a documentation change as the parameter values remain UUIDs in the same format.

---

### 3. Progress Schema Foreign Key

**What Changed:**

* Renamed `Progress.userId` field to `Progress.institutionUserId`
* Updated field description to "(foreign key to User.institutionUserId)"
* Renamed `ProgressWithoutUserId` schema to `ProgressWithoutInstitutionUserId`
* Updated all progress endpoint responses to use new field name

**Why:**

Foreign key fields should match the primary key they reference for clarity and consistency. Using `institutionUserId` in the Progress schema makes the relationship explicit and prevents confusion about which User field the reference points to. This is a fundamental data modelling best practice that improves API comprehension.

**Impact:**

None as still in pre-release, therefore not introducing a breaking change.

If the API had been in release then any client code parsing Progress objects would have to be updated to look for `institutionUserId` instead of `userId`. The `ProgressWithoutInstitutionUserId` schema rename would have affected the structure of responses from `GET /users/{institutionUserId}/progress`.

---

### 4. LiveLesson Schema Foreign Key

**What Changed:**

* Renamed `LiveLesson.userId` field to `LiveLesson.institutionUserId`
* Updated field description to "(foreign key to User.institutionUserId)"
* Renamed `LiveLessonWithoutUserId` schema to `LiveLessonWithoutInstitutionUserId`
* Updated all live lesson endpoint responses to use new field name

**Why:**

Maintains consistency with the Progress schema changes and ensures all child records use uniform naming for user references. Consistent foreign key naming across all schemas reduces cognitive load and makes the API easier to learn and use correctly.

**Impact:**

None as still in pre-release, therefore not introducing a breaking change.

If the API had been in release then any client code parsing LiveLesson objects would have to be updated to use `institutionUserId`. Would affect responses from `GET /live-lessons` and `GET /users/{institutionUserId}/live-lessons`.

---

### 5. Certificate Schema Foreign Key

**What Changed:**

* Renamed `Certificate.userId` field to `Certificate.institutionUserId`
* Updated field description to "(foreign key to User.institutionUserId)"
* Renamed `CertificateWithoutUserId` schema to `CertificateWithoutInstitutionUserId`
* Updated all certificate endpoint responses to use new field name

**Why:**

Completes the consistent naming pattern across all user-related schemas. Every record that references a user now uses `institutionUserId`, creating a predictable pattern that developers can rely on throughout the API.

**Impact:**

None as still in pre-release, therefore not introducing a breaking change.

If the API had been in release then any client code parsing Certificate objects would have to be updated to use `institutionUserId`. Would affect responses from `GET /certificates` and `GET /users/{institutionUserId}/certificates`.

---

### 6. Endpoint Documentation Updates

**What Changed:**

* Updated all "Related Endpoints" sections to use `{institutionUserId}` syntax
* Updated all "Common Use Cases" examples to use `institutionUserId`
* Updated cross-references throughout the specification
* Updated parameter descriptions to reference institution-specific user identifiers

**Why:**

Documentation consistency is critical for API usability. Comprehensive updates ensure that every reference to user identifiers throughout the specification uses the same terminology, preventing confusion and reducing integration errors.

**Impact:**

Non-breaking documentation improvement. Helps developers understand and correctly implement the new identifier system. Reduces support burden by making the API self-documenting.

---

## Design Decision: Single Identifier vs Dual Identifier

### Context

The v0.7.0 design included both `id` and `userId` fields in the User schema, both as UUIDs. This created ambiguity about which identifier should be used for API operations and what semantic difference (if any) existed between them.

### Options Considered

**Option 1: Keep Dual Identifiers**

* Maintain both `id` and `userId` fields
* Add documentation clarifying when to use each
* Pros: No breaking changes, maintains backwards compatibility
* Cons: Perpetuates confusion, doesn't address root cause, increases cognitive load

**Option 2: Consolidate to Single Generic Identifier**

* Use only `id` field
* Keep it generic and simple
* Pros: Simpler schema, familiar pattern
* Cons: Loses semantic meaning, doesn't reflect institutional context

**Option 3: Consolidate to Semantic Identifier**

* Use single `institutionUserId` field
* Name explicitly reflects scope and purpose
* Pros: Self-documenting, reflects architecture, prevents confusion
* Cons: Breaking change, requires migration

### Decision

**Selected: Option 3 - Consolidate to Semantic Identifier (`institutionUserId`)**

### Rationale

**Semantic Clarity:**

* The name `institutionUserId` immediately communicates that users are scoped to institutions
* Self-documenting API reduces need for external documentation
* Prevents common integration errors from using wrong identifier
* Makes multi-tenancy explicit in the data model

**Architectural Alignment:**

* Nexus API serves institutional clients exclusively
* User data always accessed through institutional boundaries
* Identifier name reflects this architectural reality

**Foreign Key Consistency:**

* Single identifier simplifies foreign key relationships
* Child schemas (Progress, LiveLesson, Certificate) use matching field name
* Clear that all `institutionUserId` fields reference the same concept
* Reduces implementation errors in database schemas

**Developer Experience:**

* No ambiguity about which ID to use in API calls
* Field name provides context without consulting documentation
* Consistent naming pattern across all schemas
* Easier to teach and onboard new developers

**Long-term Maintainability:**

* Leaves room for internal user IDs if ever needed
* Makes future schema evolution clearer
* Better foundation for potential multi-institution features
* Reduces technical debt from ambiguous naming

### Trade-offs Accepted

While this could have been a breaking change requiring migration effort, the long-term benefits of clarity and consistency outweigh the short-term migration cost. The v0.x.x design phase is the appropriate time to make this change before implementation locks in the schema.

### Future Consideration

If future requirements introduce true global user identifiers spanning multiple institutions, those could be added as a separate field (e.g., `globalUserId`) without conflicting with `institutionUserId`. The semantic naming makes the distinction clear.

---

## Design Evolution in v0.8.0

### Simplified User Identification

Version 0.8.0 eliminates the confusing dual-identifier pattern in favour of a single, semantically clear identifier.

**Previous Design (v0.7.0):**

```json
{
  "id": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "a2b3c4d5-e6f7-4a8b-9c0d-1e2f3a4b5c6d",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "email": "john.doe@example.com"
}
```

**New Design (v0.8.0):**

```json
{
  "institutionUserId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "status": "active",
  "email": "john.doe@example.com"
}
```

**Design Benefits:**

* Single identifier eliminates "which ID should I use?" questions
* Semantic naming makes institutional scope explicit
* Reduced cognitive load for API consumers
* Clearer foreign key relationships in child schemas
* Self-documenting field names improve developer experience

---

### Consistent Foreign Key Naming

All schemas that reference users now use uniform field naming.

**Previous Design (v0.7.0):**

```json
{
  "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "courseId": "pack_level_en_a1",
  "status": "in_progress"
}
```

**New Design (v0.8.0):**

```json
{
  "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "institutionUserId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "courseId": "pack_level_en_a1",
  "status": "in_progress"
}
```

**Design Benefits:**

* Foreign key field name matches primary key it references
* Consistent pattern across Progress, LiveLesson, Certificate schemas
* Clear relationship to User.institutionUserId
* Follows database design best practices
* Makes schema relationships immediately apparent

---

## Design Benefits

### Advantages

* **Semantic Clarity**: Field name `institutionUserId` immediately communicates scope and purpose
* **Foreign Key Consistency**: All child schemas use matching field names
* **Reduced Cognitive Load**: Single identifier eliminates decision-making overhead
* **Self-Documenting API**: Clear naming reduces integration errors
* **Architectural Alignment**: Naming reflects institutional multi-tenancy architecture
* **Future-Proof Design**: Leaves room for additional identifier types

### Design Considerations

* **Breaking Change Impact**: All v0.7.0 API consumers must update code
* **Migration Effort**: Updates required for path parameters, response parsing, foreign keys
* **Documentation Burden**: All examples and guides must be updated
* **Timing**: v0.x.x design phase is appropriate for this change

### Future Evolution

* **Implementation Phase**: v1.0.0 will implement this design
* **Additional Identifiers**: Could add global user IDs alongside `institutionUserId`
* **Multi-Institution Users**: Design supports users in multiple institutions
* **Extended Metadata**: Clear identifier separation simplifies extensions

---

## API Endpoints Overview

| Method | Endpoint | Description | Changes in v0.8.0 |
| --- | --- | --- | --- |
| POST | `/auth/token` | Obtain access token | No changes |
| GET | `/users` | List all users | User objects use `institutionUserId` |
| GET | `/users/{institutionUserId}` | Get specific user | Path parameter changed |
| GET | `/courses` | List all courses | No changes |
| GET | `/courses/{id}` | Get specific course | No changes |
| GET | `/progress` | List all progress | Uses `institutionUserId` |
| GET | `/progress/{id}` | Get specific progress | Response uses `institutionUserId` |
| GET | `/users/{institutionUserId}/progress` | Get user progress | Path changed, uses new schema |
| GET | `/live-lessons` | List all live lessons | Uses `institutionUserId` |
| GET | `/live-lessons/{id}` | Get specific live lesson | Response uses `institutionUserId` |
| GET | `/users/{institutionUserId}/live-lessons` | Get user live lessons | Path changed, uses new schema |
| GET | `/certificates` | List all certificates | Uses `institutionUserId` |
| GET | `/certificates/{id}` | Get specific certificate | Response uses `institutionUserId` |
| GET | `/users/{institutionUserId}/certificates` | Get user certificates | Path changed, uses new schema |
| GET | `/utilities/health` | API health check | Version updated to 0.8.0 |

---

## Complete OpenAPI Specification

The complete OpenAPI specification for this version is maintained in a separate YAML file:

**File:** `Busuu_Nexus_Core_API_v0_8_0.yml`

**Location:** [View YAML specification](https://busuucom.atlassian.net/wiki/spaces/BP/pages/7643627591) _(link to be added when file is uploaded)_

For human-readable documentation and examples, refer to the sections above in this document.

---

<a id="v080-openapi-yaml-spec"></a>
## ⚙️ v0.8.0 OpenAPI YAML Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7643627591/v0.8.0+OpenAPI+YAML+Spec

**Note:** This page contains OpenAPI YAML code blocks. For the complete OpenAPI 3.1 specification, see the Confluence page directly.

---

<a id="v080-swaggerhub-docs"></a>
## 🔗 v0.8.0 Swaggerhub Docs

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7643627592/v0.8.0+Swaggerhub+Docs

**SwaggerHub:** https://app.swaggerhub.com/apis-docs/arlobarlo/busuu-nexus-core-api/0.8.0

**Note:** This page links to SwaggerHub. For interactive API documentation, see the Confluence page directly.

---

<a id="090-refinement-schema-quality-improvements"></a>
## 🌟 0.9.0 Refinement: Schema Quality Improvements

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7642906651/0.9.0+Refinement+Schema+Quality+Improvements

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | DESIGN |
| **Version** | 0.9.0 |
| **Design Date** | 28/12/2025 |
| **Status** | DRAFT |
| **Authors** | @Dan Martinez, Claude (Anthropic) |

---

## Overview

Version 0.9.0 represents a comprehensive schema quality improvement release, focusing on field ordering, validation enhancements, timestamp refinements, and architectural consistency. This version reorganises schema field structures for improved readability, adds validation constraints where needed, refines timestamp semantics to distinguish business events from system metadata, and standardises section comments across all major schemas.

**Note:** This API has not been implemented yet. This document represents a design specification iteration.

---

## Summary of Changes

### 1. Timestamp Semantic Refinements

**What Changed:**

* Renamed `User.createdAt` → `User.registeredAt` to reflect business event (user registration/provisioning)
* Renamed `LiveLesson.createdAt` → `LiveLesson.bookedAt` to reflect user action (lesson booking)
* Added `Certificate.revokedAt` for explicit revocation tracking
* Removed `Progress.createdAt` (redundant with `startedAt`)
* Removed `Certificate.createdAt` (redundant with `issuedAt`)
* Added `Course.archivedAt` for lifecycle tracking
* Kept `updatedAt` in Course (content freshness) and removed from Progress/Certificate

**Why:**

Previous timestamp strategy mixed business events with system metadata. Generic `createdAt` fields indicated when records were created in the database, not when meaningful business events occurred. For a public-facing read-only API, consumers care about business events (when user registered, when lesson was booked) rather than internal system housekeeping (when database record was created). This change distinguishes between:

* **Business Events**: `registeredAt`, `bookedAt`, `startedAt`, `issuedAt`, `revokedAt` - meaningful domain events
* **System Metadata**: `createdAt`, `updatedAt` - internal record tracking (removed from most schemas)
* **Engagement Tracking**: `lastActiveAt`, `lastAccessedAt` - user interaction timestamps

**Impact:**

Breaking changes for renamed fields. Non-breaking for removed fields where more specific timestamps exist. Significantly improves API semantic clarity by exposing only meaningful business timestamps.

---

### 2. Schema Field Ordering & Organisation

**What Changed:**

* Reorganised field order in Course, Progress, Certificate, and LiveLesson schemas for logical grouping
* Added section comments to all major schemas (following User schema pattern from v0.8.0)
* Grouped related fields together: identifiers first, relationships second, core content third, metadata fourth, timestamps last
* Fixed LiveLesson timestamps to chronological order (`bookedAt` before `scheduledAt`)

**Why:**

Schema fields were previously organised without clear structure, making schemas difficult to scan and understand. By grouping related fields and adding section comments, we improve developer experience and code generation quality. The changes demonstrate the value of clear organisation, with this pattern applied consistently across all schemas.

**Impact:**

Non-breaking change for API consumers (JSON objects are unordered). Improves documentation readability, generated code organisation, and developer comprehension.

---

### 3. Course Schema Validation & Bug Fixes

**What Changed:**

* Added enum validation to `Course.language` field with full language names (English, Spanish, French, etc.)
* Removed `Course.archivedAt` from required array (field is nullable)
* Reorganised Course fields into logical sections: Identifier → Core Content → Classification → Metadata → Integration → Localisation → Timestamps

**Why:**

The Course.language field previously had no validation constraints, allowing any string value without standardisation. The archivedAt field was incorrectly marked as required despite being nullable (only present when status is "archived"), creating an OpenAPI validation error. Field reorganisation groups classification metadata (language, level, difficulty) together for improved scannability.

**Impact:**

Breaking change: Course.language now restricted to enum values. Critical bug fix: Course.archivedAt validation now correct.

---

### 4. Progress Schema Refinement

**What Changed:**

* Reorganised fields into sections: Identifier → Relationships → Status → Progress Metrics → Completion Outcome → Timestamps
* Grouped all progress metrics together (`progressPercentage`, `lessonsCompleted`, `lessonsTotal`, `learningDuration`)
* Separated completion outcome fields (`result`, `score`) as distinct nullable section
* Removed `createdAt` field (redundant with `startedAt`)
* Added clear section comments

**Why:**

Progress metrics were previously scattered throughout the schema, making it difficult to understand the complete progress tracking picture at a glance. The `createdAt` timestamp represented when the database record was created, while `startedAt` represents when the user actually began the course - the meaningful business event. For a read-only API, consumers need business events, not system metadata. Grouping metrics together and separating completion outcomes creates clearer semantic boundaries.

**Impact:**

Breaking change: `Progress.createdAt` removed (use `startedAt` instead). Non-breaking: Improves schema comprehension.

---

### 5. Certificate Schema Organisation

**What Changed:**

* Reorganised fields into sections: Identifier → Relationships → Core Content → Classification & Achievement → Provider & Media → Timestamps
* Grouped all foreign key relationships together (`institutionUserId`, `userEmail`, `courseId`, `progressId`)
* Combined classification fields with grade (language, level, grade) in Achievement section
* Grouped provider/delivery fields (`providerId`, `url`, `thumbnailUrl`)
* Removed `createdAt` field (redundant with `issuedAt`)
* Added `revokedAt` field for explicit revocation tracking

**Why:**

Certificate schema had foreign keys scattered and classification separated from achievement grade. Certificates represent credentials, so grouping language/level/grade together emphasises the achievement aspect. The `createdAt` timestamp was system metadata (when record was created in database), while `issuedAt` represents the meaningful business event (when certificate was awarded to user). The addition of `revokedAt` provides explicit tracking of revocation events rather than relying on generic `updatedAt`.

**Impact:**

Breaking changes: `Certificate.createdAt` removed (use `issuedAt` instead), `Certificate.revokedAt` added. Non-breaking: Significantly improves schema organisation.

---

### 6. LiveLesson Schema Timestamp Correction

**What Changed:**

* Reordered timestamps to chronological sequence: `bookedAt` now appears before `scheduledAt`
* Renamed `createdAt` → `bookedAt` to reflect user action
* Added section comments for clarity
* Organised fields: Identifier → Relationships → Lesson Classification → Status → Timestamps

**Why:**

Timestamps were in reverse chronological order (scheduledAt before bookedAt), which was logically incorrect since booking happens before the scheduled lesson time. The `createdAt` field represented system metadata (record creation) rather than the meaningful business event (user booking the lesson). Renaming to `bookedAt` makes the timestamp semantically clear and chronological ordering matches the actual event sequence.

**Impact:**

Breaking change: `LiveLesson.createdAt` renamed to `bookedAt`. Non-breaking: Corrects logical ordering.

---

## Design Decision: Timestamp Philosophy - Business Events vs System Metadata

### Context

During schema refinement, we reviewed all timestamp fields to determine their purpose and semantic meaning. The question arose: should a public-facing read-only API expose internal system timestamps (when database records were created/updated), or should it focus solely on business-relevant events?

### The Analysis

**Timestamp Categories Identified:**

| Category | Purpose | Examples | API Relevance |
| --- | --- | --- | --- |
| **Business Events** | Domain-significant moments | `registeredAt`, `startedAt`, `issuedAt` | High - consumers need these |
| **System Metadata** | Database housekeeping | `createdAt`, `updatedAt` | Low - internal concern |
| **Engagement Tracking** | User interaction | `lastActiveAt`, `lastAccessedAt` | High - actionable insights |
| **Lifecycle Control** | State transitions | `expiresAt`, `revokedAt` | High - business logic |

**The Problem: Generic `createdAt` Fields**

Several schemas had `createdAt` timestamps alongside more specific business event timestamps:

**Progress Schema:**

```yaml
Progress:
  startedAt: "2025-01-15T10:00:00Z"  # When user started course (business event)
  createdAt: "2025-01-15T10:00:00Z"  # When record was created (system metadata)
```

**Question:** Are these ever different? If always the same, why expose both?

**Certificate Schema:**

```yaml
Certificate:
  issuedAt: "2025-01-20T10:00:00Z"  # When certificate was awarded (business event)
  createdAt: "2025-01-20T10:00:00Z" # When record was created (system metadata)
```

**Question:** Does API consumer care when the database record was created?

**LiveLesson Schema:**

```yaml
LiveLesson:
  createdAt: "2025-01-15T08:00:00Z"  # When record was created (ambiguous!)
  scheduledAt: "2025-01-20T10:00:00Z" # When lesson occurs (business event)
```

**Question:** Does `createdAt` mean when slot was created or when user booked it?

### Decision

**Selected:** Expose only meaningful business events in public API

### Rationale

**API Purpose Alignment:**

* **Read-Only API**: No consumer write operations means no concurrency control needed
* **External Consumers**: LMS integrations care about business events, not internal record management
* **Semantic Clarity**: Specific event names (`bookedAt`, `issuedAt`) are self-documenting

**Context-Specific Approach:**

| Schema | `createdAt` Decision | Reason |
| --- | --- | --- |
| **User** | Rename to `registeredAt` | "User registered" is business event |
| **Course** | Keep as `createdAt` | No alternative business event exists |
| **Progress** | Remove entirely | `startedAt` is the business event |
| **Certificate** | Remove entirely | `issuedAt` is the business event |
| **LiveLesson** | Rename to `bookedAt` | "User booked lesson" is business event |

**Generic `updatedAt` Analysis:**

| Schema | `updatedAt` Decision | Reason |
| --- | --- | --- |
| **User** | Remove | `lastActiveAt` tracks meaningful engagement |
| **Course** | Keep | Content updates indicate course freshness |
| **Progress** | Remove | `lastAccessedAt` tracks user activity |
| **Certificate** | Remove | Certificates are immutable; use `revokedAt` for revocation |
| **LiveLesson** | Remove | No meaningful update events; `scheduledAt` is current state |

### Implementation

**Renamed for Clarity:**

```yaml
# User
createdAt → registeredAt  # "User was provisioned/registered"

# LiveLesson  
createdAt → bookedAt      # "User booked the lesson"
```

**Removed as Redundant:**

```yaml
# Progress
createdAt: REMOVED        # Use startedAt (business event)

# Certificate
createdAt: REMOVED        # Use issuedAt (business event)
```

**Added for Specificity:**

```yaml
# Certificate
revokedAt: ADDED          # Explicit revocation event (not generic update)

# Course
archivedAt: ADDED         # Explicit archival event
```

### Benefits

* **Self-Documenting API**: Timestamp names clearly indicate what business event occurred
* **No Ambiguity**: Removed generic timestamps that mixed business and system concerns
* **Cleaner Responses**: Fewer fields, each with clear purpose
* **Better Analytics**: Business event timestamps enable meaningful reporting
* **Architectural Consistency**: Public API exposes business domain, not database implementation

### Example Impact

**Before v0.9.0 (Mixed Concerns):**

```json
{
  "id": "cert-123",
  "issuedAt": "2025-01-20T10:00:00Z",
  "createdAt": "2025-01-20T10:00:00Z",  // System metadata
  "updatedAt": "2025-01-20T10:00:00Z"   // System metadata
}
```

**After v0.9.0 (Business Events Only):**

```json
{
  "id": "cert-123",
  "issuedAt": "2025-01-20T10:00:00Z",   // Clear: certificate awarded
  "expiresAt": "2026-01-20T10:00:00Z",  // Clear: expiration date
  "revokedAt": null                     // Clear: not revoked
}
```

**Clarity Improvement:** Consumer immediately understands certificate lifecycle without system metadata noise.

---

## Design Decision: Course Language Field Format

### Context

During schema validation improvements, we discovered the Course.language field had no validation constraints (no enum, no pattern), while Certificate and LiveLesson schemas used ISO 639-1 two-character codes (EN, ES, FR, etc.) with enums. This inconsistency raised the question: should Course also use two-character codes for consistency?

### The Debate

**Initial Suggestion:** Add enum with ISO 639-1 codes

```yaml
language:
  type: string
  enum: [EN, ES, FR, DE, IT, PT, NL, JA, KO, PL, RU, TR, ZH, AR]
```

**Counter-Argument:** ISO codes are not immediately clear

* ❌ "TR" → Not immediately obvious (Turkish)
* ❌ "ZH" → Cryptic (Chinese/Zhōngwén)
* ❌ "AR" → Unclear (Arabic)
* ✅ "Turkish", "Chinese", "Arabic" → Self-documenting

**Different Use Cases:**

| Schema | Purpose | Language Use | Reasoning |
| --- | --- | --- | --- |
| **Course** | Content catalogue/discovery | Descriptive metadata | Meant to be browsed, discovered, understood at a glance |
| **LiveLesson** | Operational booking | System identifier | Operational classification for booking/scheduling |
| **Certificate** | Credential document | Standardised identifier | International credential standards |

### Decision

**Selected:** Full language names with enum validation

```yaml
language:
  type: string
  enum: [English, Spanish, French, German, Italian, Portuguese, Dutch, Japanese, Korean, Polish, Russian, Turkish, Chinese, Arabic]
  description: Language being learned
  example: "English"
```

### Rationale

**User Experience:**

* Course language is **descriptive metadata** for content discovery
* Users browse course catalogues to find courses - clarity matters
* "English A1 - Beginner" is immediately understandable
* "EN A1 - Beginner" requires translation step

**Context-Appropriate Design:**

* Courses are for **human consumption** (browsing, selection)
* LiveLessons are for **operational systems** (booking, scheduling)
* Certificates use **international standards** (ISO codes expected on credentials)

**Consistency Within Purpose:**

* Course title: "English A1 - Beginner" (full language name)
* Course description: "Complete beginner course for English language learning" (full name)
* Course language field should match: "English" (full name)

**Validation Benefits:**

* Enum still provides validation (constrained set of values)
* Clear, self-documenting values in API responses
* No lookup table needed for API consumers

### Implementation

The decision maintains **semantic consistency** across schemas while recognising that **context determines format**. Course metadata prioritises clarity and discoverability, while operational and credential schemas appropriately use standardised codes.

---

## API Response Examples

\[Course responses remain unchanged from v0.8.0 except for field ordering and timestamp naming - not repeated here for brevity. The course response structure, provider context, and pagination remain identical.\]

---

## Data Model Examples

### User Model (v0.9.0 Timestamps)

```json
{
  "institutionUserId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "institutionId": "550e8400-e29b-41d4-a716-446655440000",
  "email": "john.doe@example.com",
  "username": "johnd123",
  "firstName": "John",
  "lastName": "Doe",
  "status": "active",
  "role": "admin",
  "department": "Accounts",
  "countryCode": "FR",
  "employeeId": "empId12345678",
  "team": "A-team",
  "registeredAt": "2025-01-20T21:01:58Z",
  "expiresAt": "2026-01-20T21:01:58Z",
  "removedAt": null,
  "lastActiveAt": "2025-01-20T21:01:58Z"
}
```

**Timestamp Changes:**

* `createdAt` → `registeredAt`: Reflects user registration/provisioning event
* `updatedAt`: **Removed** - `lastActiveAt` provides meaningful engagement tracking
* All other timestamps unchanged

---

### Course Model (v0.9.0 Field Order)

```json
{
  "id": "pack_level_en_a1",
  "title": "English A1 - Beginner",
  "description": "Complete beginner course for English language learning",
  "status": "active",
  "language": "English",
  "level": "A1",
  "difficulty": {
    "value": "beginner",
    "label": "Beginner",
    "order": 1
  },
  "duration": 1110,
  "thumbnailUrl": "https://cdn.busuu.com/courses/en-a1-thumbnail.jpg",
  "launchUrl": "https://sso.busuu.com/saml/{{busuuInstitutionId}}/login?course={{courseId}}",
  "localisation": null,
  "createdAt": "2025-01-20T21:01:58Z",
  "publishedAt": "2025-01-20T21:01:58Z",
  "updatedAt": "2025-01-25T14:30:00Z",
  "archivedAt": null
}
```

**Field Organisation:**

1. **Primary Identifier:** `id`
2. **Core Content:** `title`, `description`, `status`
3. **Classification:** `language`, `level`, `difficulty`
4. **Metadata:** `duration`, `thumbnailUrl`
5. **Integration:** `launchUrl`
6. **Localisation:** `localisation` (optional)
7. **Lifecycle Timestamps:** `createdAt`, `publishedAt`, `updatedAt`, `archivedAt`

**Timestamp Note:** Course keeps `createdAt` (no alternative business event) and `updatedAt` (content freshness indicator)

---

### Progress Model (v0.9.0 Field Order)

```json
{
  "id": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "institutionUserId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "courseId": "pack_level_en_a1",
  "status": "completed",
  "progressPercentage": 100,
  "lessonsCompleted": 20,
  "lessonsTotal": 20,
  "learningDuration": 1110,
  "result": "pass",
  "score": 92,
  "startedAt": "2025-01-15T10:00:00Z",
  "lastAccessedAt": "2025-01-20T15:30:00Z",
  "completedAt": "2025-01-20T15:30:00Z"
}
```

**Field Organisation:**

1. **Primary Identifier:** `id`
2. **Relationships:** `institutionUserId`, `courseId`
3. **Status & State:** `status`
4. **Progress Metrics:** `progressPercentage`, `lessonsCompleted`, `lessonsTotal`, `learningDuration`
5. **Completion Outcome:** `result`, `score` (nullable, only when completed)
6. **Lifecycle Timestamps:** `startedAt`, `lastAccessedAt`, `completedAt`

**Timestamp Changes:**

* `createdAt`: **Removed** - redundant with `startedAt` (business event)
* `updatedAt`: **Removed** - `lastAccessedAt` tracks user activity
* Result: Only business-relevant timestamps remain

---

### Certificate Model (v0.9.0 Field Order)

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "institutionUserId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "courseId": "pack_level_en_b2",
  "progressId": "2ed43c78-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "title": "English Upper Intermediate (B2)",
  "status": "active",
  "language": "EN",
  "level": "B2",
  "grade": "A",
  "providerId": "Busuu Premium Language Learning",
  "url": "https://certificates.busuu.com/68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "thumbnailUrl": "https://cdn.busuu.com/certificates/en-b2-thumbnail.jpg",
  "issuedAt": "2025-01-20T10:00:00Z",
  "expiresAt": "2026-01-20T10:00:00Z",
  "revokedAt": null
}
```

**Field Organisation:**

1. **Primary Identifier:** `id`
2. **Relationships:** `institutionUserId`, `userEmail`, `courseId`, `progressId`
3. **Core Content:** `title`, `status`
4. **Classification & Achievement:** `language`, `level`, `grade`
5. **Provider & Media:** `providerId`, `url`, `thumbnailUrl`
6. **Lifecycle Timestamps:** `issuedAt`, `expiresAt`, `revokedAt`

**Timestamp Changes:**

* `createdAt`: **Removed** - redundant with `issuedAt` (business event)
* `updatedAt`: **Removed** - certificates are immutable
* `revokedAt`: **Added** - explicit revocation tracking

---

### LiveLesson Model (v0.9.0 Field Order)

```json
{
  "id": "68235e4f-fa67-27e9-d64d-8339a1b2c3d4",
  "institutionUserId": "f1e2d3c4-b5a6-4c7d-8e9f-0a1b2c3d4e5f",
  "userEmail": "john.doe@example.com",
  "type": "group",
  "language": "ES",
  "level": "A1",
  "status": "completed",
  "bookedAt": "2025-01-15T08:00:00Z",
  "scheduledAt": "2025-01-20T10:00:00Z"
}
```

**Field Organisation:**

1. **Primary Identifier:** `id`
2. **Relationships:** `institutionUserId`, `userEmail`
3. **Lesson Classification:** `type`, `language`, `level`
4. **Status:** `status`
5. **Lifecycle Timestamps:** `bookedAt`, `scheduledAt` (chronological order)

**Timestamp Changes:**

* `createdAt` → `bookedAt`: Reflects user booking action (business event)
* `updatedAt`: **Removed** - no meaningful update events
* Chronological ordering: `bookedAt` before `scheduledAt`

---

## Schema Organisation Pattern

Version 0.9.0 establishes a consistent field organisation pattern across all schemas:

### Standard Field Sequence

```yaml
# 1. PRIMARY IDENTIFIER
id: [resource identifier]

# 2. RELATIONSHIPS (if applicable)
[foreign keys to related resources]

# 3. CORE CONTENT/STATUS
[essential resource properties]

# 4. CLASSIFICATION/METADATA
[categorical and descriptive properties]

# 5. TIMESTAMPS
[lifecycle event timestamps]
```

### Section Comment Format

All schemas now include clear section headers:

```yaml
properties:
  # 1. PRIMARY IDENTIFIER
  id:
    type: string
    description: ...
  
  # 2. RELATIONSHIPS
  institutionUserId:
    type: string
    format: uuid
    description: ...
```

### Benefits

* **Scannability:** Developers can quickly locate fields by category
* **Consistency:** Same mental model across all schemas
* **Documentation:** Section comments create natural documentation structure
* **Generated Code:** Auto-generated classes have logically organised properties
* **Maintainability:** Clear structure makes schema updates easier to review

---

## Timestamp Consistency Summary

### Final Timestamp Inventory (v0.9.0)

| Schema | Business Events | Engagement | Lifecycle Control | System Metadata |
| --- | --- | --- | --- | --- |
| **User** | `registeredAt` | `lastActiveAt` | `expiresAt`, `removedAt` | None |
| **Course** | `publishedAt` |  | `archivedAt` | `createdAt`, `updatedAt` |
| **Progress** | `startedAt`, `completedAt` | `lastAccessedAt` |  | None |
| **Certificate** | `issuedAt` |  | `expiresAt`, `revokedAt` | None |
| **LiveLesson** | `bookedAt`, `scheduledAt` |  |  | None |

### Timestamp Naming Conventions Established

* **Business Events**: Past tense verb + "At" (e.g., `registeredAt`, `bookedAt`, `issuedAt`)
* **Engagement**: "last" + action + "At" (e.g., `lastActiveAt`, `lastAccessedAt`)
* **Future State**: Present tense verb + "At" (e.g., `expiresAt`, `scheduledAt`)
* **State Changes**: Past tense verb + "At" (e.g., `removedAt`, `revokedAt`, `archivedAt`)

---

## Design Benefits

### Advantages

* **Improved Developer Experience:** Logical field ordering and section comments dramatically improve schema comprehension and reduce cognitive load when working with API documentation
* **Semantic Clarity:** Timestamp names explicitly indicate business events rather than generic system operations
* **Cleaner API Responses:** Removed redundant system metadata reduces noise and improves signal-to-noise ratio
* **Validation Completeness:** Adding Course.language enum prevents invalid data and provides clear constraints for API consumers
* **Architectural Consistency:** Standardised organisation pattern across all schemas creates predictable, professional API design
* **Bug Prevention:** Fixed Course.archivedAt validation error prevents future implementation issues
* **Code Generation Quality:** Organised schemas produce better structured classes in auto-generated client libraries
* **Business-Focused API:** Public API surface exposes business domain concepts rather than database implementation details

### Design Considerations

* **Field Ordering:** While JSON objects are technically unordered, documentation and generated code benefit significantly from logical field sequences
* **Section Comments:** Comments in OpenAPI schemas improve human readability without affecting machine processing or validation
* **Context-Appropriate Validation:** Different schemas use different validation strategies (ISO codes vs full names) based on their purpose and usage context
* **Timestamp Philosophy:** Public read-only APIs should expose business events, not system metadata, for optimal consumer utility

### Future Evolution

* **Additional Validation Patterns:** Future versions may add regex patterns for format-based fields where enums aren't appropriate
* **Enhanced Descriptions:** Field descriptions may be further standardised for consistency across schemas
* **Length Constraints:** Future refinements may add minLength/maxLength constraints to text fields for additional validation
* **Event Sourcing Consideration:** The business event focus in timestamps positions the API well for potential future event sourcing architectures

---

## API Endpoints Overview

| Method | Endpoint | Description | Changes in v0.9.0 |
| --- | --- | --- | --- |
| POST | `/auth/token` | Obtain access token | No changes |
| GET | `/users` | List all users | Timestamp fields renamed/removed |
| GET | `/users/{institutionUserId}` | Get specific user | Timestamp fields renamed/removed |
| GET | `/courses` | List all courses | Course.language now has enum validation |
| GET | `/courses/{id}` | Get specific course | Course.language now has enum validation |
| GET | `/progress` | List all progress | Timestamp fields removed |
| GET | `/progress/{id}` | Get specific progress | Timestamp fields removed |
| GET | `/users/{institutionUserId}/progress` | Get user progress | Timestamp fields removed |
| GET | `/live-lessons` | List all live lessons | Timestamp fields renamed |
| GET | `/live-lessons/{id}` | Get specific live lesson | Timestamp fields renamed |
| GET | `/users/{institutionUserId}/live-lessons` | Get user live lessons | Timestamp fields renamed |
| GET | `/certificates` | List all certificates | Timestamp fields removed/added |
| GET | `/certificates/{id}` | Get specific certificate | Timestamp fields removed/added |
| GET | `/users/{institutionUserId}/certificates` | Get user certificates | Timestamp fields removed/added |
| GET | `/utilities/health` | API health check | Version number updated to 0.9.0 |

---

## Complete OpenAPI Specification

The complete OpenAPI specification for this version is maintained in a separate YAML file:

**File:** `Busuu_Nexus_Core_API_v0_9_0.yml`

**Location:** [View YAML specification](#) _(link to be added when file is uploaded)_

For human-readable documentation and examples, refer to the sections above in this document.

---

<a id="v090-openapi-yaml-spec"></a>
## ⚙️ v0.9.0 OpenAPI YAML Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7642906651/v0.9.0+OpenAPI+YAML+Spec

**Note:** This page contains OpenAPI YAML code blocks. For the complete OpenAPI 3.1 specification, see the Confluence page directly.

---

<a id="v090-swaggerhub-docs"></a>
## 🔗 v0.9.0 Swaggerhub Docs

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7704150017

**SwaggerHub:** https://app.swaggerhub.com/apis-docs/arlobarlo/busuu-nexus-core-api/0.9.0

**Note:** This page links to SwaggerHub. For interactive API documentation, see the Confluence page directly.

---

<a id="0100-refinement-remove-detail-endpoints"></a>
## 🗄️ 0.10.0 Refinement: Remove Detail Endpoints

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7663353868/0.10.0+Refinement+Remove+Detail+Endpoints

---

## Release Information

| Field | Value |
| --- | --- |
| **Project** | UNIFIED API |
| **Stage** | DESIGN |
| **Version** | 0.10.0 |
| **Design Date** | 07/01/2026 |
| **Status** | DRAFT |
| **Authors** | @Dan Martinez |

---

## Overview

Version 0.10.0 refines the API endpoint structure by applying the YAGNI (You Aren't Gonna Need It) principle to remove unnecessary detail endpoints for transactional resources. After analysing actual integration use cases, detail endpoints for progress records, live lessons, and certificates were found to be unused, as system-to-system integrations rely on list endpoints with filtering and user-specific endpoints provide sufficient detail for individual lookups. This simplification reduces API surface complexity whilst retaining all essential functionality.

**Note:** This API has not been implemented yet. This document represents a design specification iteration.

---

## Summary of Changes

### 1. Endpoint Pattern Refinement

**What Changed:**

* Removed `GET /progress/{id}` endpoint for retrieving individual progress records
* Removed `GET /live-lessons/{id}` endpoint for retrieving individual live lesson details
* Removed `GET /certificates/{id}` endpoint for retrieving individual certificate details
* Removed three corresponding path parameters: `ProgressId`, `LessonId`, and `CertificateId`
* Retained all list endpoints: `GET /progress`, `GET /live-lessons`, `GET /certificates`
* Retained all user-specific endpoints: `GET /users/{institutionUserId}/progress`, `GET /users/{institutionUserId}/live-lessons`, `GET /users/{institutionUserId}/certificates`
* Maintained detail endpoints for reference data: `GET /courses/{courseId}` and `GET /users/{institutionUserId}`

**Why:**

The YAGNI principle was applied after thorough analysis of actual integration patterns. System-to-system integrations (LMS connectors, analytics platforms) consistently use list endpoints with filtering rather than fetching individual transactional records by ID. User-specific endpoints already provide comprehensive detail for individual learner lookups, making detail endpoints redundant. Reference data (courses and users) genuinely requires detail endpoints for lookup operations, but transactional event data (progress updates, lesson bookings, certificate issuance) does not follow the same access pattern.

**Impact:**

The change simplifies the API surface area by removing six endpoint definitions (three endpoints plus three parameters) whilst maintaining all essential functionality through list and user-specific endpoints. API consumers can achieve identical outcomes using existing endpoints: list endpoints with filtering for system queries, and user-specific endpoints for individual learner data. The reduced endpoint count improves API discoverability and reduces implementation complexity for both API maintainers and consumer developers.

---

## Design Decision: Detail Endpoints for Transactional vs Reference Resources

### Context

The initial API design (v0.1.0 through v0.9.0) included detail endpoints for all resource types following a standard RESTful pattern: list endpoints (`GET /resources`) and detail endpoints (`GET /resources/{id}`) for every resource. This symmetrical approach seemed logical during initial design but required validation against actual integration use cases.

### Options Considered

**Option 1: Maintain All Detail Endpoints**

* Provides complete symmetry across all resources
* Follows conventional RESTful API patterns
* Offers maximum flexibility for future use cases
* **Pros:** Familiar pattern, theoretically complete
* **Cons:** Adds unnecessary API surface complexity, increases maintenance burden, violates YAGNI for unused endpoints

**Option 2: Remove All Detail Endpoints**

* Eliminates detail endpoints entirely, relying only on list and user-specific endpoints
* Maximises API simplification
* **Pros:** Extremely simple, minimal API surface
* **Cons:** Makes course and user lookups awkward, forces inefficient list-and-filter operations for reference data

**Option 3: Selective Detail Endpoints Based on Resource Type (SELECTED)**

* Distinguishes between reference data and transactional resources
* Retains detail endpoints only where access patterns demonstrate need
* Removes detail endpoints for transactional event data
* **Pros:** Balances simplicity with real-world requirements, reduces unused endpoints whilst maintaining essential lookups
* **Cons:** Requires careful categorisation of resource types, asymmetrical endpoint structure

### Decision

**Selected: Option 3 - Selective Detail Endpoints Based on Resource Type**

### Rationale

**Access Pattern Analysis:**

* Reference data (courses, users) requires direct lookups by identifier for operations like "get course details for ID X" or "fetch user profile for institution user ID Y"
* Transactional resources (progress, live lessons, certificates) are accessed by filtering the data set (e.g., "show me all progress for user X" or "find certificates issued this month")
* User-specific endpoints already provide detailed individual records for transactional resources, eliminating the need for separate detail endpoints

**YAGNI Application:**

* Detail endpoints for transactional resources were designed "just in case" they might be needed
* Analysis of integration patterns shows these endpoints serve no identified use case
* Keeping unused endpoints increases maintenance burden and cognitive load for API consumers

**Resource Categorisation:**

* **Reference data** (courses, users): Relatively static, frequently looked up by ID, serves as context for other operations → retain detail endpoints
* **Transactional data** (progress, live lessons, certificates): Time-series events, queried by filters or user context, rarely accessed individually → remove detail endpoints

### Future Consideration

If a genuine use case emerges requiring detail endpoints for transactional resources, they can be reintroduced in a future version. However, any such use case should be rigorously validated to ensure it cannot be served by existing list or user-specific endpoints with appropriate filtering.

---

## API Response Examples

This section documents the complete response structures returned by each API endpoint. These examples show actual payloads clients receive, including wrapper objects, pagination, and provider context.

### Authentication Responses

#### POST `/auth/token` - Successful Authentication

```json
{
  "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "token_type": "Bearer",
  "expires_in": 3600,
  "scope": "read:users read:courses read:progress"
}
```

**Response Structure Notes:**

* Standard OAuth2 token response format
* Bearer token should be included in Authorization header for authenticated requests
* Token expires after the time specified in `expires_in` (seconds)

---

### User Responses

\[User responses remain unchanged from v0.9.0 - not repeated here for brevity. See v0.9.0 documentation for complete examples.\]

---

### Course Responses

\[Course responses remain unchanged from v0.9.0 - not repeated here for brevity. See v0.9.0 documentation for complete examples.\]

---

### Progress Responses

#### GET `/progress` - List All Progress Records

\[Progress list response structure remains unchanged from v0.9.0\]

**Response Structure Notes:**

* Standard list response with data array and pagination object
* Filtering options available via query parameters (institutionUserId, courseId, status)
* **Note:** The detail endpoint `GET /progress/{id}` has been removed in v0.10.0

---

#### GET `/users/{institutionUserId}/progress` - Get User Progress

\[User progress response structure remains unchanged from v0.9.0\]

**Response Structure Notes:**

* Returns user context object with full progress array
* Progress records omit `institutionUserId` field (included in user context instead)
* This endpoint provides all necessary detail for individual progress records
* **Note:** This endpoint supersedes the removed `GET /progress/{id}` detail endpoint for user-specific lookups

---

### Live Lesson Responses

#### GET `/live-lessons` - List All Live Lessons

\[Live lessons list response structure remains unchanged from v0.9.0\]

**Response Structure Notes:**

* Standard list response with data array and pagination object
* Filtering options available via query parameters (institutionUserId, language, level, status)
* **Note:** The detail endpoint `GET /live-lessons/{id}` has been removed in v0.10.0

---

#### GET `/users/{institutionUserId}/live-lessons` - Get User Live Lessons

\[User live lessons response structure remains unchanged from v0.9.0\]

**Response Structure Notes:**

* Returns user context object with live lessons array and summary statistics
* Summary statistics include `totalLessonsCompleted`, `totalLessonsCancelled`, `totalLessonsMissed`
* This endpoint provides all necessary detail for individual live lesson records
* **Note:** This endpoint supersedes the removed `GET /live-lessons/{id}` detail endpoint for user-specific lookups

---

### Certificate Responses

#### GET `/certificates` - List All Certificates

\[Certificates list response structure remains unchanged from v0.9.0\]

**Response Structure Notes:**

* Standard list response with data array and pagination object
* Filtering options available via query parameters (institutionUserId, courseId, status)
* **Note:** The detail endpoint `GET /certificates/{id}` has been removed in v0.10.0

---

#### GET `/users/{institutionUserId}/certificates` - Get User Certificates

\[User certificates response structure remains unchanged from v0.9.0\]

**Response Structure Notes:**

* Returns user context object with certificates array and summary statistics
* Summary statistics include `totalCertificatesIssued`, `totalCertificatesActive`, `totalCertificatesExpired`
* This endpoint provides all necessary detail for individual certificate records
* **Note:** This endpoint supersedes the removed `GET /certificates/{id}` detail endpoint for user-specific lookups

---

### Utility Responses

#### GET `/utilities/health` - API Health Check

```json
{
  "status": "healthy",
  "timestamp": "2026-01-07T15:30:00Z",
  "version": "0.10.0",
  "uptime": 86400,
  "checks": {
    "database": "healthy",
    "cache": "healthy",
    "external_services": "healthy"
  }
}
```

**Response Structure Notes:**

* Version field updated to reflect 0.10.0
* All other health check fields remain unchanged

---

## Data Model Examples

\[Data models remain unchanged from v0.9.0. See v0.9.0 documentation for complete schema definitions.\]

### User Model

\[Unchanged from v0.9.0\]

---

### Course Model

\[Unchanged from v0.9.0\]

---

### Progress Model

\[Unchanged from v0.9.0\]

---

### LiveLesson Model

\[Unchanged from v0.9.0\]

---

### Certificate Model

\[Unchanged from v0.9.0\]

---

### Localisation Model

\[Unchanged from v0.9.0\]

---

### UserContext Model

\[Unchanged from v0.9.0\]

---

## Design Benefits

### Advantages

* **Reduced API Surface Complexity**: Removing six endpoint definitions (three detail endpoints plus three path parameters) simplifies the API for both providers and consumers
* **Improved Discoverability**: Fewer endpoints means clearer API structure and easier navigation for new developers
* **Lower Maintenance Burden**: Less code to maintain, test, and document reduces long-term technical debt
* **YAGNI Compliance**: Eliminates speculative features that serve no validated use case
* **Maintained Functionality**: All essential operations remain available through list and user-specific endpoints
* **Clear Resource Categorisation**: Distinguishes between reference data (requires detail endpoints) and transactional data (does not)

### Design Considerations

* **Breaking Change Management**: Consumers using removed endpoints must migrate to list or user-specific endpoints
* **Future Flexibility**: Detail endpoints can be reintroduced if genuine use cases emerge, though this should be avoided unless rigorously validated
* **Asymmetrical Structure**: Different resource types now have different endpoint patterns, which may initially seem inconsistent but reflects actual access patterns

### Future Evolution

* **Pattern Validation**: Continue monitoring integration patterns to validate that removed endpoints remain unnecessary
* **Use Case Discovery**: If new integration scenarios emerge requiring detail endpoint access, evaluate whether they can be served by existing endpoints before reintroducing detail endpoints
* **Documentation Updates**: Ensure all connector documentation and integration guides reflect the new endpoint structure

---

## API Endpoints Overview

| Method | Endpoint | Description | Changes in v0.10.0 |
| --- | --- | --- | --- |
| POST | `/auth/token` | Obtain access token | No changes |
| GET | `/users` | List all users | No changes |
| GET | `/users/{institutionUserId}` | Get specific user | No changes |
| GET | `/courses` | List all courses | No changes |
| GET | `/courses/{courseId}` | Get specific course | No changes |
| GET | `/progress` | List all progress | No changes |
| ~~GET~~ | ~~/progress/{id}~~ | ~~Get specific progress~~ | **REMOVED in v0.10.0** |
| GET | `/users/{institutionUserId}/progress` | Get user progress | No changes |
| GET | `/live-lessons` | List all live lessons | No changes |
| ~~GET~~ | ~~/live-lessons/{id}~~ | ~~Get specific live lesson~~ | **REMOVED in v0.10.0** |
| GET | `/users/{institutionUserId}/live-lessons` | Get user live lessons | No changes |
| GET | `/certificates` | List all certificates | No changes |
| ~~GET~~ | ~~/certificates/{id}~~ | ~~Get specific certificate~~ | **REMOVED in v0.10.0** |
| GET | `/users/{institutionUserId}/certificates` | Get user certificates | No changes |
| GET | `/utilities/health` | API health check | Version number updated to 0.10.0 |

---

## Complete OpenAPI Specification

The complete OpenAPI specification for this version is maintained in a separate YAML file:

**File:** `Busuu_Nexus_Core_API_v0_10_0.yml`

**Location:** [View YAML specification](#) _(link to be added when file is uploaded)_

For human-readable documentation and examples, refer to the sections above in this document.

---

<a id="v0100-openapi-yaml-spec"></a>
## ⚙️ v0.10.0 OpenAPI YAML Spec

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7663353868/v0.10.0+OpenAPI+YAML+Spec

**Note:** This page contains OpenAPI YAML code blocks. For the complete OpenAPI 3.1 specification, see the Confluence page directly.

---

<a id="v0100-swaggerhub-docs"></a>
## 🔗 v0.10.0 Swaggerhub Docs

**Source:** https://busuucom.atlassian.net/wiki/spaces/BP/pages/7702708285

**SwaggerHub:** https://app.swaggerhub.com/apis-docs/arlobarlo/busuu-nexus-core-api/0.10.0

**Note:** This page links to SwaggerHub. For interactive API documentation, see the Confluence page directly.

---

