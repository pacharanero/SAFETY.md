# SAFETY.md Specification

**Version:** 2.0.0-draft.2
**Status:** Draft
**Authors:** Marcus Baw (@pacharanero)
**Licence:** CC-BY-SA-4.0 International, unless otherwise stated

Changes between draft revisions are recorded in [`CHANGELOG.md`](./CHANGELOG.md). Draft revisions are tagged (for example `v2.0.0-draft.2`) so that tools and templates can name the revision they follow.

---

## Overview

SAFETY.md defines a lightweight, convention-driven standard for clinical safety documentation in digital health projects. It is designed to integrate naturally into existing software development workflows — specifically Git-based version control and GitHub — without requiring separate toolchains, build systems, or documentation platforms.

Terms used in this specification should be read alongside the project [`GLOSSARY.md`](../GLOSSARY.md). Where DCB0129, DCB0160, legislation, or another upstream source defines a term, that upstream source remains authoritative.

The core principle is **safety close to code**: clinical safety documentation should sit close to the software, release history, issues, pull requests, tests, and operational evidence that affect patient safety.

The guiding principle is **convention over configuration**: a small set of well-named files at the root of a repository, rendered natively by GitHub, auditable via commit history, and machine-readable enough to be linted and validated by automated tools.

This is the same pattern established by `README.md`, `LICENSE`, `CONTRIBUTING.md`, and `SECURITY.md`. SAFETY.md proposes an equivalent set of conventions for clinical safety.

---

## Motivation

Existing approaches to clinical safety documentation (e.g. NHS DCB0129/DCB0160 Word document templates, or complex MkDocs/Docker-based systems) impose a high ceremony burden on development teams. This has two failure modes:

1. **Adoption failure** — teams skip or minimise safety documentation because the tooling overhead is disproportionate to the size of the project.
2. **Safety theatre** — teams complete documents perfunctorily to satisfy a compliance process, without genuinely integrating safety thinking into development.

SAFETY.md v2 aims to make *doing clinical safety well* the path of least resistance, by meeting developers where they already work.

It is not intended to circumvent, dilute, or replace applicable regulations, information standards, clinical safety standards, medical-device obligations, data-protection duties, or professional Clinical Safety Officer judgement. Its purpose is to reduce wasted documentation effort so teams can spend more time identifying hazards, designing mitigations, evidencing controls, reviewing residual risk, and making software safer for patients.

---

## Design Principles

- **Plain text, version controlled.** All safety documentation lives as Markdown files in the project repository. The commit history is the audit trail.
- **Zero external dependencies.** No frameworks, build steps, or separate documentation platforms required. Just Git and files, and whatever Git hosting platform you use (GitHub, GitLab, Bitbucket, etc).
- **Human-readable and machine-readable.** Files are readable by GitHub users without any tooling, and structured to be parseable by automated tools.
- **Opinionated but tiered.** A small product can satisfy the standard with one file. A complex regulated system uses the full file set.
- **Compatible with existing standards.** SAFETY.md does not replace DCB0129 or DCB0160 — it provides a modern, developer-friendly implementation and evidence pattern that may support compliance with them.
- **Safety close to code.** Safety evidence should be traceable to the code, configuration, release, issue, pull request, test, incident, or operational evidence that supports it.
- **No unsupported compliance claims.** A project is not compliant merely because it contains a `SAFETY.md` file or uses a template. Compliance claims require completed safety work, appropriate evidence, review, and sign-off.

---

## The File Set

SAFETY.md defines four files.

### Location

`SAFETY.md` lives at the root of the repository. The other files may live at the root or in a `safety/` or `docs/safety/` folder, provided `SAFETY.md` links to them.

A repository that holds safety documentation for more than one product, release line, or deployment may keep a complete file set for each in its own folder. The root `SAFETY.md` then acts as an index: it lists each file set with its scope and responsible organisation, and need not carry the required fields itself. Each file set's own `SAFETY.md` carries the required fields.

Where a manufacturer file set and a deployer file set share a folder, tools may give the deployer files distinguishing names (for example `DEPLOYMENT-SAFETY-CASE.md`), provided each `SAFETY.md` links to its own files.

### `SAFETY.md` *(required)*

The root anchor document. The front door to your clinical safety documentation — analogous to `README.md` for safety. It should be short (one to two pages) and link to the other SAFETY.md files.

**Required fields:**

| Key | Table label | Description |
|---|---|---|
| `spec-version` | Spec Version | The SAFETY.md specification revision followed, e.g. `2.0.0-draft.2` |
| `product-name` | Product | Full name of the digital health product |
| `version` | Version | Version of the product this safety case applies to |
| `standard` | Standard | The clinical risk management standard followed: `DCB0129`, `DCB0160`, `both`, or `none` (with the reason recorded in the summary) |
| `clinical-safety-officer` | Clinical Safety Officer | Name and professional registration (e.g. GMC, NMC, HCPC, GPhC) of the responsible CSO |
| `organisation` | Organisation | Organisation responsible for this safety file: the Manufacturer for DCB0129 work, the Health Organisation for DCB0160 work |
| `role` | Role | One or more of: `manufacturer`, `supplier`, `deployer`, `operator`, `maintainer`, `relevant-it-provider`, `other` |
| `safety-case-status` | Safety Case Status | One of: `draft`, `under-review`, `approved`, `archived` |
| `hazard-log-url` | Hazard Log | Link to `HAZARD-LOG.md` or GitHub Issues hazard log |
| `applicable-standards` | Applicable Standards | Standards/frameworks in scope, e.g. DCB0129, DCB0160, DTAC, medical-device regulation, information standards |
| `last-reviewed` | Last Reviewed | ISO 8601 date of last CSO review |

**Recording fields.** Record the required fields in a two-column Markdown table near the top of the file. The first column may use either the key or the table label; validators should accept both, ignoring case. List fields (`role`, `applicable-standards`) take comma-separated values. The `Applicable standards and assurance domains` table expands on `applicable-standards` with evidence locations and owners.

**Role and relevant IT provider status.** `role` lists the roles the organisation holds. Relevant IT provider status under the Data (Use and Access) Act 2025 must also be recorded as `yes`, `no`, `unclear`, or `not-assessed` (see [Relationship to DUAA2025](#relationship-to-duaa2025-and-information-standards)). Include `relevant-it-provider` in `role` only when that status is `yes`.

**Additional fields and content.** Files may contain additional fields, sections, and headers (for example a document-control block or a link to a manufacturer's Clinical Safety Case Report in a deployer file), provided they do not reuse or redefine a field defined here. Additional field keys should be lower-case and hyphenated. Tools that add fields should document them.

**Example:**

```markdown
# Clinical Safety — My Health App

| Field | Value |
|---|---|
| Spec Version | 2.0.0-draft.2 |
| Product | My Health App |
| Version | 1.4.2 |
| Standard | DCB0129 |
| Clinical Safety Officer | Dr Jane Smith (GMC: 1234567) |
| Organisation | Example Health Software Ltd |
| Role | manufacturer, relevant-it-provider |
| Safety Case Status | approved |
| Hazard Log | [HAZARD-LOG.md](./HAZARD-LOG.md) |
| Applicable Standards | DCB0129, UK MDR 2002 (triage pending), HSC Act 2012 Part 9 information standards |
| Last Reviewed | 2025-11-01 |

## Summary

[Brief narrative — what the product does, intended clinical context, summary of safety approach.]

## Documents

- [Safety Case](./SAFETY-CASE.md)
- [Hazard Log](./HAZARD-LOG.md)
- [Clinical Risk Management Plan](./SAFETY-PLAN.md)

## Role declaration

| Role | Applies? | Organisation/person | Evidence / notes |
|---|---:|---|---|
| Manufacturer | Yes | Example Health Software Ltd | This file set |
| Relevant IT provider | yes | Example Health Software Ltd | Evidence pack |

## Applicable standards and assurance domains

| Domain | Standard / framework | Applies? | Evidence location | Owner |
|---|---|---:|---|---|
| Clinical risk management — manufacture | DCB0129 | Yes | [Safety Case](./SAFETY-CASE.md) | Manufacturer CSO |
| Clinical risk management — deployment/use | DCB0160 | No | N/A | N/A |
| Medical-device risk management | ISO 14971 / UK MDR / EU MDR | TBD | MDR/ISO risk-management evidence | Regulatory owner |
| Health/care information standards | HSC Act 2012 Part 9 as amended | TBD | Evidence pack | Responsible owner |
```

---

### `SAFETY-CASE.md` *(required for Tier 2 and above)*

The clinical safety case. This is the substantive argumentation that the product is acceptably safe for its intended purpose. It should follow a Goal Structuring Notation (GSN)-inspired narrative, even if not using formal GSN diagrams.

DCB0129 distinguishes the Clinical Safety Case, which is maintained throughout the life of the system, from Clinical Safety Case Reports, which are CSO-approved reports issued at each lifecycle phase defined in the Clinical Risk Management Plan, each accompanied by an issued Hazard Log (DCB0129 requirements 3.3.3, 3.4 and 3.5). In SAFETY.md, `SAFETY-CASE.md` is the maintained safety case; a Clinical Safety Case Report is the CSO-approved state of `SAFETY-CASE.md` and `HAZARD-LOG.md` at an identified release, for example a Git tag, or an export generated from them.

**Recommended sections:**

1. **Intended Use** — what the product does and doesn't do; intended user population; clinical context.
2. **Scope** — what is in scope for this safety case; explicit exclusions.
3. **Risk Scheme** — the severity, likelihood, risk-matrix and acceptability scheme used, or a link to where the Clinical Risk Management Plan defines it. DTAC form version 2.0 (question C1.2.4) asks the manufacturer to declare this scheme in the Clinical Safety Case Report.
4. **Safety Argument** — structured argument that the product is acceptably safe. Reference specific hazards (by ID) from the Hazard Log.
5. **Evidence** — links to testing, clinical validation, usability studies, code changes, pull requests, incidents, deployment evidence, or other evidence supporting the safety argument.
6. **Residual Risk** — summary of accepted residual risk, with justification, and any related operational constraints or limitations.
7. **Transferred Risks and Outstanding Issues** — hazards and risk-control measures that the deploying organisation or users must address, and outstanding test issues or defects that may affect clinical safety.
8. **CSO Sign-off** — name, credentials, date, and explicit statement of approval.

---

### `HAZARD-LOG.md` *(required)*

The hazard log. This file uses YAML frontmatter for machine-readable structured data, with a rendered Markdown table below for human readability on GitHub.

#### Risk scheme

DCB0129 and DCB0160 do not prescribe a scale. They require the Clinical Risk Management Plan to include risk acceptability criteria (requirement 3.2.1 in both standards), and their implementation guidance gives severity, likelihood, risk-matrix and acceptability tables only as examples, noting that these "may vary across Health IT Systems". DTAC form version 2.0 (question C1.2.4) likewise states that no system for quantifying and stratifying risk is specified for universal use in the NHS.

The hazard log must therefore declare its scheme in a `risk-scheme` field. The value is either `dcb0129-ig-example` or a link to where the project's own scheme is defined (normally the Clinical Risk Management Plan). `severity`, `likelihood`, `risk`, and their residual counterparts are read against that scheme.

**The `dcb0129-ig-example` scheme** is the example scheme in the DCB0129 Implementation Guidance v3.2 (Tables 7–10), which the DCB0160 Implementation Guidance repeats. The guidance names the categories but does not number them. SAFETY.md numbers them so that higher always means more severe, more likely, or more risk, matching the risk matrix:

| Value | Severity (Table 7) | Likelihood (Table 8) |
|---:|---|---|
| 1 | Minor | Very low |
| 2 | Significant | Low |
| 3 | Considerable | Medium |
| 4 | Major | High |
| 5 | Catastrophic | Very high |

Risk class (Table 9), from likelihood and severity:

| Likelihood ↓ / Severity → | 1 Minor | 2 Significant | 3 Considerable | 4 Major | 5 Catastrophic |
|---|---:|---:|---:|---:|---:|
| 5 Very high | 3 | 4 | 4 | 5 | 5 |
| 4 High | 2 | 3 | 3 | 4 | 5 |
| 3 Medium | 2 | 2 | 3 | 3 | 4 |
| 2 Low | 1 | 2 | 2 | 3 | 4 |
| 1 Very low | 1 | 1 | 2 | 2 | 3 |

Example acceptability (Table 10):

| Risk class | Meaning |
|---:|---|
| 4–5 | Unacceptable level of risk. Mandatory elimination of hazard or addition of control measure to reduce risk to an acceptable level. |
| 3 | Undesirable level of risk. Attempts should be made to eliminate the hazard or implement control measures to reduce risk to an acceptable level. Shall only be acceptable when further risk reduction is impractical. |
| 2 | Acceptable where cost of further reduction outweighs benefits gained or where further risk reduction is impractical. |
| 1 | Acceptable, no further action required. |

Adopting the example scheme does not remove the need for the Clinical Risk Management Plan to state the acceptability criteria and for a CSO to approve them. The guidance states that the definition of acceptable clinical risk is a decision for the Manufacturer (or, for DCB0160, the Health Organisation).

**File structure:**

```markdown
---
risk-scheme: dcb0129-ig-example

hazards:
  - id: H001
    description: "Incorrect weight entry leads to erroneous drug dose calculation"
    cause: "Free-text weight input with no validation"
    effect: "Patient receives incorrect drug dose"
    severity: 4        # Major
    likelihood: 3      # Medium
    risk: 3            # Undesirable
    controls:
      - C001
      - C002
    residual-severity: 4
    residual-likelihood: 1
    residual-risk: 2
    status: mitigated   # one of: open | mitigated | accepted | closed
    cso-reviewed: true
    date-raised: 2025-06-01
    date-closed:

controls:
  - id: C001
    description: "Numeric-only input field with min/max range validation (0.5–300 kg)"
  - id: C002
    description: "Confirmation dialog displayed when entered weight is outside expected range for age"
---

# Hazard Log

Risk scheme: DCB0129 Implementation Guidance example (Tables 7–10).

_Generated from structured data above. Keep in sync._

| ID | Description | Severity | Likelihood | Risk | Controls | Residual Risk | Status |
|---|---|---|---|---|---|---|---|
| H001 | Incorrect weight entry leads to erroneous drug dose | 4 Major | 3 Medium | 3 | C001, C002 | 2 | Mitigated |
```

Hazard IDs take the form `H` followed by a number (`H001`) and control IDs `C` followed by a number (`C001`). IDs are stable: once assigned they are not renumbered or reused. A deployer hazard log that sits beside a manufacturer log may use a distinguishing prefix (for example `D-H001`), provided it is used consistently.

> **Note on GitHub Issues as hazard log:** For teams who prefer it, GitHub Issues with the SAFETY.md label schema (Severity, Likelihood, Risk Level) may be used as the canonical hazard log. In this case, `HAZARD-LOG.md` should contain a brief explanation, the `risk-scheme` declaration, and a link to the Issues view. A static `HAZARD-LOG.md` snapshot can be generated from Issues for archival or submission purposes, and an issued snapshot must accompany each Clinical Safety Case Report.

---

### `SAFETY-PLAN.md` *(Clinical Risk Management Plan)*

The Clinical Risk Management Plan. Documents the *process* by which clinical risk is managed — who is responsible, how hazards are identified, the risk scheme and acceptability criteria, how reviews are conducted, how changes trigger re-assessment, and how evidence is maintained.

Wherever DCB0129 or DCB0160 applies, a Clinical Risk Management Plan is required, whatever the tier. It must be produced at the start of the project, include risk acceptability criteria, be approved by a CSO, and be maintained for the life of the system (requirements 3.2.1–3.2.4 in both standards). Its extent should be commensurate with the scale, complexity and clinical risk of the system.

A separate `SAFETY-PLAN.md` is expected at Tier 3. At Tiers 1 and 2 the plan may instead be a section of `SAFETY.md` or `SAFETY-CASE.md`, headed `Clinical Risk Management Plan`, provided its CSO approval is recorded.

---

## Tiering

DCB0129 and DCB0160 do not define tiers. They require the extent of clinical risk management to be commensurate with the scale, complexity and level of clinical risk, and wherever they apply they require the same core deliverables: a Clinical Risk Management File, a CSO-approved Clinical Risk Management Plan with risk acceptability criteria, a Hazard Log, and a Clinical Safety Case with Clinical Safety Case Reports.

SAFETY.md tiers decide how that material is split across files, not whether it is needed:

| Tier | Applies to | Files |
|---|---|---|
| **Tier 1** | Low-risk tools, reference apps, decision support with no direct clinical action | `SAFETY.md` only, with the plan, hazard table, and safety argument embedded as sections |
| **Tier 2** | Moderate-risk clinical software, tools informing clinical decisions | `SAFETY.md` + `SAFETY-CASE.md` + `HAZARD-LOG.md`; plan as a section or as `SAFETY-PLAN.md` |
| **Tier 3** | High-risk / regulated medical devices, Software as a Medical Device (SaMD) | Full file set including `SAFETY-PLAN.md` |

The CSO is responsible for determining the appropriate tier. Tools that generate a file set at a default tier must record the tier as pending CSO decision.

Where neither DCB0129 nor DCB0160 applies, record `standard: none` and the reason. DTAC form version 2.0 (question C1.2.1) asks a manufacturer for this justification, and commissioning organisations can challenge it.

---

## GitHub Issues Label Schema

For teams using GitHub Issues as the hazard log, SAFETY.md defines a standard label schema. The names below assume the `dcb0129-ig-example` risk scheme; a project using its own scheme should use its own category names with the same numbering direction (higher means more), and declare the scheme in `HAZARD-LOG.md`.

**Severity:**
- `severity:1` — Minor
- `severity:2` — Significant
- `severity:3` — Considerable
- `severity:4` — Major
- `severity:5` — Catastrophic

**Likelihood:**
- `likelihood:1` — Very low
- `likelihood:2` — Low
- `likelihood:3` — Medium
- `likelihood:4` — High
- `likelihood:5` — Very high

**Risk class:**
- `risk:1` — Acceptable, no further action required
- `risk:2` — Acceptable where further reduction is impractical or its cost outweighs the benefit
- `risk:3` — Undesirable
- `risk:4` — Unacceptable
- `risk:5` — Unacceptable

**Status:**
- `hazard:open`
- `hazard:mitigated`
- `hazard:accepted`
- `hazard:closed`

---

## Relationship to DCB0129 / DCB0160

SAFETY.md does not replace these NHS standards — it provides a modern implementation and evidence pattern for them. Manufacturer/supplier-side responsibilities under DCB0129 should be distinguished from deployment/use-side responsibilities under DCB0160.

Supplier/manufacturer DCB0129 evidence is an input to deployer DCB0160 work, not a replacement for it. DCB0160 requires the Health Organisation, in procurement, to ensure that the Manufacturer and the Health IT System comply with DCB0129 (requirement 2.5.1). Deploying organisations should be able to record whether they have requested and reviewed supplier DCB0129 Clinical Safety Case Report material, transferred risk-control measures, residual risks, assumptions, known issues, and release/configuration-specific evidence.

A deployer file set uses the same required fields: `standard` is `DCB0160`, `organisation` is the Health Organisation, and `role` includes `deployer`.

| DCB0129 Document | SAFETY.md equivalent |
|---|---|
| Clinical Risk Management Plan | `SAFETY-PLAN.md`, or a `Clinical Risk Management Plan` section at Tiers 1–2 |
| Clinical Risk Management File | The repository itself |
| Hazard Log | `HAZARD-LOG.md` (or GitHub Issues) |
| Clinical Safety Case | `SAFETY-CASE.md` |
| Clinical Safety Case Report | CSO-approved state of `SAFETY-CASE.md` and `HAZARD-LOG.md` at an identified release, or an export generated from them |
| Configuration Item (release) | Git tag + `SAFETY.md` version field |

A CSO should not assert compliance merely by pointing to the presence of SAFETY.md files. The files and repository history may support a compliance argument where the underlying clinical safety work has been completed, evidenced, reviewed, and approved.

---

## Relationship to ISO 14971 and medical-device risk management

ISO 14971 risk-management evidence can be useful input to SAFETY.md, especially for Software as a Medical Device (SaMD) or AI as a Medical Device (AIaMD), but it does not automatically satisfy DCB0129 or DCB0160 where those standards apply.

SAFETY.md should therefore:

- record ISO 14971 / MDR / UK MDR as a separate assurance domain where relevant;
- support mapping from ISO 14971 risk-management files into DCB0129 evidence without claiming equivalence;
- keep DCB patient-clinical-safety hazards distinct from wider medical-device risk records where needed;
- require DCB-specific CSO review/sign-off where DCB0129/DCB0160 evidence is being claimed;
- prompt deployers to request and review supplier DCB0129 Clinical Safety Case Report material and transferred controls;
- trigger MDR/SaMD triage where the software makes clinical claims, performs decision support, or forms part of a medical device or health IT system.

For a fuller working crosswalk, see [`mappings/iso14971-dcb-to-safety-md.md`](./mappings/iso14971-dcb-to-safety-md.md).

---

## Relationship to DUAA2025 and information standards

The Data (Use and Access) Act 2025 strengthens the wider framework for health and adult social care information standards in England. In particular, it makes explicit that information standards can relate to information technology and IT services, including software, code, functionality, connectivity, interoperability, portability, storage/access to information, and security of information.

SAFETY.md should therefore support evidence that can sit alongside wider information-standard, interoperability, information-security, and data-governance evidence. This does not mean that the CSO owns every adjacent assurance domain. It means that where those domains can create patient harm, the clinical safety documentation should identify the interface, assumptions, hazards, controls, and responsible owners.

Required DUAA2025-aware core conventions are:

- a role declaration covering manufacturer, supplier, deployer, operator, maintainer, and relevant IT provider status;
- an applicable standards and assurance domains table in root `SAFETY.md`;
- explicit responsible owners for adjacent assurance domains where they can create patient harm.

`Relevant IT provider` status is **conditional but must be considered**. SAFETY.md documents should record `yes`, `no`, `unclear`, or `not-assessed` rather than silently omitting the field. This keeps the core schema lightweight while avoiding hidden DUAA2025-relevant assumptions.

Recommended DUAA2025-aware additions for higher-risk or more complex projects include:

- hazard prompts for interoperability, portability, access to information, information security, analytics, AI/ML, and secondary use of data;
- an exportable evidence-pack convention for standards compliance queries.

---

## Relationship to DTAC

The NHS Digital Technology Assessment Criteria (DTAC) form version 2.0 (NHS England, February 2026) replaced version 1.0 from 6 April 2026. Clinical safety is section C1. It asks whether the product is Software or AI as a Medical Device (C1.1.1, with a Pre-Acquisition Questionnaire where it is) and, if so, whether it is a standalone medical device (C1.1.2; a standalone device skips the DCB0129 questions), whether DCB0129 applies (C1.2, with a justification at C1.2.1 where it does not), and for the clinical risk management system (C1.2.3), the Clinical Safety Case Report and Hazard Log (C1.2.4), and the CSO's name, profession and registration (C1.2.5).

A SAFETY.md file set can supply the evidence for C1. It does not answer the other DTAC sections (data protection, technical security, interoperability, usability and accessibility), and its presence does not establish that a product passes DTAC.

---

## Current schema decisions

These decisions are part of the current draft and should be revisited before the first non-draft release:

- `SAFETY.md` remains the root repository front door for safety evidence, even if larger projects place detailed material under `safety/` or `docs/safety/`.
- The core file set remains intentionally small: `SAFETY.md`, with `SAFETY-CASE.md`, `HAZARD-LOG.md`, and `SAFETY-PLAN.md` added proportionately by tier and risk. Tiering changes how DCB deliverables are split across files, never whether they exist.
- `Applicable standards and assurance domains` belongs in the core root `SAFETY.md`, because it is the fastest way to prevent DCB0129, DCB0160, ISO 14971/MDR, DUAA2025, security, IG, and interoperability responsibilities from being blurred.
- `relevant-it-provider` status is conditional but must be considered and recorded as `yes`, `no`, `unclear`, or `not-assessed`.
- The hazard log declares its risk scheme. The DCB0129 Implementation Guidance example is offered as a named scheme, numbered so that higher always means more, but is not mandatory.
- Low-risk projects may keep hazard and process material embedded in root `SAFETY.md`, provided the result is still explicit, reviewable, and does not make unsupported compliance claims.

---

## Versioning

This spec follows Semantic Versioning. Breaking changes to the required file structure or frontmatter schema increment the major version.

While the spec is a draft, each revision that changes required fields, field meanings, or the hazard-log schema increments the pre-release number (`2.0.0-draft.1`, `2.0.0-draft.2`, ...), is recorded in [`CHANGELOG.md`](./CHANGELOG.md), and is tagged `v<version>`. Tools and templates should name the revision they follow by tag.

Each `SAFETY.md` declares the revision it follows in the `spec-version` field so that validators can check it against the correct version.

---

## Contributing

Contributions to this spec are welcome. Please open an Issue on the SAFETY.md repository to discuss proposed changes before submitting a pull request. Significant changes to required fields or tiering should be discussed with the clinical safety community before adoption.

---

## Acknowledgements

This specification is derived from experience gained on the RCPCH Digital Growth Charts project, the RCPCH Epilepsy12 Audit Platform, and other RCPCH Incubator and Baw Medical Ltd clinical safety projects.
