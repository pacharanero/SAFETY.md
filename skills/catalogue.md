# SAFETY.md Skill Catalogue

Planned skill names use the `safety-md-*` prefix for consistency and discoverability.

## Phase 1 — core clinical safety lifecycle

### `safety-md-csmf`

**Invocation:** user-invoked (`disable-model-invocation: true`).

**Use when:** the user wants to create, initialise, generate, or update a repo-native Clinical Risk Management File / CSMF / SAFETY.md file set for a health software project.

**Primary outputs:**

- `SAFETY.md`
- `SAFETY-CASE.md`
- `HAZARD-LOG.md`
- `SAFETY-PLAN.md` where warranted
- optional `queries.md` entries for missing clinical/safety facts

**Core behaviours:**

- inspect repository purpose and likely clinical context;
- identify manufacturer/supplier/deployer/operator/maintainer/relevant-IT-provider roles;
- distinguish DCB0129 and DCB0160 obligations;
- generate `[PENDING]` placeholders rather than inventing evidence or sign-off;
- include applicable standards and assurance domains;
- include DUAA2025-aware fields where relevant;
- keep default output root-level unless user chooses `docs/safety/` or another structure.

**Common gotchas:**

- Do not assert compliance just because files exist.
- Do not invent CSO details, approvals, clinical validation, or evidence.
- Do not blur supplier and deployer responsibilities.

---

### `safety-md-hazard-workshop`

**Invocation:** user-invoked (`disable-model-invocation: true`).

**Use when:** the user wants to identify hazards, run a hazard workshop, populate a hazard log, or stress-test a product’s clinical safety risks.

**Primary outputs:**

- new or updated `HAZARD-LOG.md` entries;
- hazard workshop notes;
- unanswered clinical questions in `queries.md`.

**Hazard prompt families:**

- patient identity;
- calculation/algorithm error;
- data freshness;
- data integrity;
- interoperability;
- access to information;
- alerting and notifications;
- workflow mismatch;
- usability and misuse;
- configuration;
- deployment and local context;
- downtime/degraded mode;
- auditability;
- security-as-safety;
- data migration;
- secondary use, analytics, and AI/ML;
- decommissioning.

**Core behaviours:**

- ask focused questions where clinical context is genuinely unknown;
- distinguish hazards, causes, effects, controls, and evidence;
- require residual risk and review status;
- avoid substituting generic hazards for product-specific analysis.

---

### `safety-md-review`

**Invocation:** user-invoked (`disable-model-invocation: true`).

**Use when:** the user asks to review, audit, check, or improve existing SAFETY.md/CSMF/clinical safety documentation.

**Primary outputs:**

- review report grouped by Critical / High / Medium / Low;
- suggested patches where safe;
- open questions in `queries.md`.

**Checks:**

- required files and links;
- required fields;
- role clarity;
- CSO review/sign-off status;
- unsupported compliance claims;
- hazards without controls;
- controls without evidence;
- residual risks without acceptance;
- release/configuration traceability;
- stale references to NHSX, Turva, RCPCH, Digital Growth Charts, obsolete NHS Digital present-tense wording;
- DUAA2025-relevant omissions.

---

## Phase 2 — leading-edge assurance checks

### `safety-md-duaa2025-check`

**Invocation:** user-invoked (`disable-model-invocation: true`); may be recommended by `safety-md-review`, but should not auto-run.

**Use when:** the user wants to check whether a health IT repo/safety file set reflects DUAA2025 and amended information-standard implications.

**Primary outputs:**

- DUAA2025 readiness note;
- missing assurance-domain fields;
- suggested hazard prompts;
- evidence-pack recommendations.

**Checks:**

- relevant IT provider status;
- IT service role;
- software/code as information technology;
- functionality/connectivity/interoperability/portability/storage/access/security domains;
- compliance evidence pack readiness;
- public-censure/compliance-notice preparedness;
- accreditation scheme awareness.

---

### `safety-md-mdr-triage`

**Invocation:** user-invoked (`disable-model-invocation: true`).

**Use when:** the user asks whether a product might be a medical device, mentions MDR/MHRA/SaMD/AIaMD, or asks for classification triage.

**Primary outputs:**

- triage note;
- intended-purpose wording risks;
- recommendation whether specialist MDR classification is required;
- handoff suggestion to ArcKit `uk-mdr-classification` or a regulatory specialist.

**Boundary:**

This skill should not pretend to be a full MDR classifier or regulatory opinion. ArcKit’s MDR command is broader; SAFETY.md’s triage exists to prevent missed escalation.

---

### `safety-md-dtac-evidence`

**Invocation:** user-invoked (`disable-model-invocation: true`).

**Use when:** the user wants to prepare clinical-safety evidence for DTAC, especially Section 1 clinical safety.

**Primary outputs:**

- DTAC clinical safety evidence summary;
- links to SAFETY.md, safety case, hazard log, CSO status;
- gaps requiring CSO/deployer/supplier action.

**Boundary:**

This is not a full DTAC generator. ArcKit already covers broad DTAC. SAFETY.md should focus on the clinical safety evidence slice and cross-references.

---

## Phase 3 — migration and maintenance

### `safety-md-template-modernise`

**Invocation:** user-invoked (`disable-model-invocation: true`).

**Use when:** the user wants to migrate old DCB0129/DCB0160/CSMF documentation, Word templates, MkDocs/Docker safety docs, or historical Turva/RCPCH-derived material into SAFETY.md v2 style.

**Primary outputs:**

- migration plan;
- updated root-level SAFETY.md file set;
- preserved provenance/attribution;
- list of discarded boilerplate and retained safety decisions.

**Checks:**

- avoid carrying over stray project-specific references;
- preserve real safety decisions;
- keep attribution and licensing clear;
- mark uncertain migrations in `queries.md`.

---

### `safety-md-release-review`

**Invocation:** user-invoked (`disable-model-invocation: true`).

**Use when:** the user asks whether a code change/release affects clinical safety, or wants to prepare release safety notes.

**Primary outputs:**

- safety-impact note;
- hazards requiring review;
- safety case sections requiring update;
- release/configuration evidence links.

**Checks:**

- dose/calculation/algorithm changes;
- data model changes;
- interoperability/API changes;
- access-control/security changes;
- UI/workflow changes;
- deployment/configuration changes;
- incident fixes.

---

### `safety-md-incident-update`

**Invocation:** user-invoked (`disable-model-invocation: true`).

**Use when:** the user wants to turn an incident into hazard-log updates and safety-case learning.

**Primary outputs:**

- new or updated hazard entries;
- incident-to-hazard traceability;
- controls/evidence update plan;
- CSO review prompts.

**Boundary:**

Do not replace organisational incident reporting or statutory reporting. The skill only updates repository-native safety evidence.

---

## Router

### `safety-md-router`

**Invocation:** user-invoked (`disable-model-invocation: true`).

**Use when:** the user wants help choosing which SAFETY.md skill to run.

**Primary output:**

- recommended next skill;
- one-sentence reason;
- required inputs.

This should stay tiny. It exists to reduce cognitive load if the skill pack grows.
