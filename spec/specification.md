# SAFETY.md Specification

**Version:** 2.0.0-draft
**Status:** Draft
**Authors:** Marcus Baw (@pacharanero)
**Licence:** CC-BY-SA-4.0 International, unless otherwise stated

---

## Overview

SAFETY.md defines a lightweight, convention-driven standard for clinical safety documentation in digital health projects. It is designed to integrate naturally into existing software development workflows — specifically Git-based version control and GitHub — without requiring separate toolchains, build systems, or documentation platforms.

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

SAFETY.md defines four files. All files live at the root of the project repository.

### `SAFETY.md` *(required)*

The root anchor document. The front door to your clinical safety documentation — analogous to `README.md` for safety. It should be short (one to two pages) and link to the other SAFETY.md files.

**Required fields:**

| Field | Description |
|---|---|
| `product-name` | Full name of the digital health product |
| `version` | Version of the product this safety case applies to |
| `standard` | The standard being followed (e.g. `DCB0129`, `DCB0160`, `both`) |
| `clinical-safety-officer` | Name and GMC/NMC/HCPC number of the responsible CSO |
| `organisation` | Organisation responsible for this safety file |
| `role` | One or more of: `manufacturer`, `supplier`, `deployer`, `operator`, `maintainer`, `relevant-it-provider`, `other` |
| `safety-case-status` | One of: `draft`, `under-review`, `approved`, `archived` |
| `hazard-log-url` | Link to `HAZARD-LOG.md` or GitHub Issues hazard log |
| `applicable-standards` | Standards/frameworks in scope, e.g. DCB0129, DCB0160, DTAC, medical-device regulation, information standards |
| `last-reviewed` | ISO 8601 date of last CSO review |

**Example:**

```markdown
# Clinical Safety — My Health App

| Field | Value |
|---|---|
| Product | My Health App |
| Version | 1.4.2 |
| Standard | DCB0129 |
| Clinical Safety Officer | Dr Jane Smith (GMC: 1234567) |
| Organisation | Example Health Software Ltd |
| Role | manufacturer, relevant-it-provider |
| Safety Case Status | approved |
| Hazard Log | [HAZARD-LOG.md](./HAZARD-LOG.md) |
| Last Reviewed | 2025-11-01 |

## Summary

[Brief narrative — what the product does, intended clinical context, summary of safety approach.]

## Documents

- [Safety Case](./SAFETY-CASE.md)
- [Hazard Log](./HAZARD-LOG.md)
- [Clinical Risk Management Plan](./SAFETY-PLAN.md) *(if present)*

## Applicable standards and assurance domains

| Domain | Standard / framework | Applies? | Evidence location | Owner |
|---|---|---:|---|---|
| Clinical risk management — manufacture | DCB0129 | Yes | [Safety Case](./SAFETY-CASE.md) | Manufacturer CSO |
| Clinical risk management — deployment/use | DCB0160 | No | N/A | N/A |
| Health/care information standards | HSC Act 2012 Part 9 as amended | TBD | Evidence pack | Responsible owner |
```

---

### `SAFETY-CASE.md` *(required for Tier 2 and above)*

The clinical safety case. This is the substantive argumentation that the product is acceptably safe for its intended purpose. It should follow a Goal Structuring Notation (GSN)-inspired narrative, even if not using formal GSN diagrams.

**Recommended sections:**

1. **Intended Use** — what the product does and doesn't do; intended user population; clinical context.
2. **Scope** — what is in scope for this safety case; explicit exclusions.
3. **Safety Argument** — structured argument that the product is acceptably safe. Reference specific hazards (by ID) from the Hazard Log.
4. **Evidence** — links to testing, clinical validation, usability studies, code changes, pull requests, incidents, deployment evidence, or other evidence supporting the safety argument.
5. **Residual Risk** — summary of accepted residual risk, with justification.
6. **CSO Sign-off** — name, credentials, date, and explicit statement of approval.

---

### `HAZARD-LOG.md` *(required)*

The hazard log. This file uses YAML frontmatter for machine-readable structured data, with a rendered Markdown table below for human readability on GitHub.

**Severity, Likelihood, and Risk scoring should follow DCB0129 scales** (1–5 for severity and likelihood; risk matrix output of `low`, `medium`, `high`, or `unacceptable`).

**File structure:**

```markdown
---
hazards:
  - id: H001
    description: "Incorrect weight entry leads to erroneous drug dose calculation"
    cause: "Free-text weight input with no validation"
    effect: "Patient receives incorrect drug dose"
    severity: 4
    likelihood: 3
    risk: high
    controls:
      - C001
      - C002
    residual-severity: 4
    residual-likelihood: 1
    residual-risk: low
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

_Generated from structured data above. Keep in sync._

| ID | Description | Sev | Like | Risk | Controls | Residual Risk | Status |
|---|---|---|---|---|---|---|---|
| H001 | Incorrect weight entry leads to erroneous drug dose | 4 | 3 | HIGH | C001, C002 | LOW | Mitigated |
```

> **Note on GitHub Issues as hazard log:** For teams who prefer it, GitHub Issues with the SAFETY.md label schema (Severity, Likelihood, Risk Level) may be used as the canonical hazard log. In this case, `HAZARD-LOG.md` should contain a brief explanation and a link to the Issues view. A static `HAZARD-LOG.md` snapshot can be generated from Issues for archival or submission purposes.

---

### `SAFETY-PLAN.md` *(optional, recommended for Tier 3)*

The Clinical Risk Management Plan. Documents the *process* by which clinical risk is managed — who is responsible, how hazards are identified, how reviews are conducted, how changes trigger re-assessment, and how evidence is maintained. Most small projects do not need this as a separate file; a brief process section in `SAFETY-CASE.md` is sufficient.

---

## Tiering

SAFETY.md defines three tiers to reflect proportionate effort for different product risk levels. These align loosely with DCB0129 risk classifications.

| Tier | Applies to | Required files |
|---|---|---|
| **Tier 1** | Low-risk tools, reference apps, decision support with no direct clinical action | `SAFETY.md` only (single file, may embed hazard table) |
| **Tier 2** | Moderate-risk clinical software, tools informing clinical decisions | `SAFETY.md` + `SAFETY-CASE.md` + `HAZARD-LOG.md` |
| **Tier 3** | High-risk / regulated medical devices, Software as a Medical Device (SaMD) | Full file set including `SAFETY-PLAN.md` |

The CSO is responsible for determining the appropriate tier.

---

## GitHub Issues Label Schema

For teams using GitHub Issues as the hazard log, SAFETY.md defines a standard label schema.

**Severity:**
- `severity:1` — Catastrophic
- `severity:2` — Major
- `severity:3` — Considerable
- `severity:4` — Significant
- `severity:5` — Minor

**Likelihood:**
- `likelihood:1` — Very High
- `likelihood:2` — High
- `likelihood:3` — Medium
- `likelihood:4` — Low
- `likelihood:5` — Very Low

**Risk Level:**
- `risk:unacceptable`
- `risk:high`
- `risk:medium`
- `risk:low`

**Status:**
- `hazard:open`
- `hazard:mitigated`
- `hazard:accepted`
- `hazard:closed`

---

## Relationship to DCB0129 / DCB0160

SAFETY.md does not replace these NHS standards — it provides a modern implementation and evidence pattern for them. Manufacturer/supplier-side responsibilities under DCB0129 should be distinguished from deployment/use-side responsibilities under DCB0160.

| DCB0129 Document | SAFETY.md equivalent |
|---|---|
| Clinical Risk Management Plan | `SAFETY-PLAN.md` |
| Clinical Risk Management File | The repository itself |
| Hazard Log | `HAZARD-LOG.md` (or GitHub Issues) |
| Clinical Safety Case | `SAFETY-CASE.md` |
| Configuration Item (release) | Git tag + `SAFETY.md` version field |

A CSO should not assert compliance merely by pointing to the presence of SAFETY.md files. The files and repository history may support a compliance argument where the underlying clinical safety work has been completed, evidenced, reviewed, and approved.

---

## Relationship to DUAA2025 and information standards

The Data (Use and Access) Act 2025 strengthens the wider framework for health and adult social care information standards in England. In particular, it makes explicit that information standards can relate to information technology and IT services, including software, code, functionality, connectivity, interoperability, portability, storage/access to information, and security of information.

SAFETY.md should therefore support evidence that can sit alongside wider information-standard, interoperability, information-security, and data-governance evidence. This does not mean that the CSO owns every adjacent assurance domain. It means that where those domains can create patient harm, the clinical safety documentation should identify the interface, assumptions, hazards, controls, and responsible owners.

Recommended DUAA2025-aware additions include:

- a role declaration covering manufacturer, supplier, deployer, operator, maintainer, and relevant IT provider status;
- an applicable standards and assurance domains table;
- hazard prompts for interoperability, portability, access to information, information security, analytics, AI/ML, and secondary use of data;
- an exportable evidence-pack convention for standards compliance queries.

---

## Versioning

This spec follows Semantic Versioning. Breaking changes to the required file structure or frontmatter schema increment the major version.

The spec version should be declared in `SAFETY.md` to allow validators to check against the correct version.

---

## Contributing

Contributions to this spec are welcome. Please open an Issue on the SAFETY.md repository to discuss proposed changes before submitting a pull request. Significant changes to required fields or tiering should be discussed with the clinical safety community before adoption.

---

## Acknowledgements

This specification is derived from experience gained on the RCPCH Digital Growth Charts project, the RCPCH Epilepsy12 Audit Platform, and other RCPCH Incubator and Baw Medical Ltd clinical safety projects.
