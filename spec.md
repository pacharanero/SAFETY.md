# SAFETY.md Specification

**Version:** 2.0.0-draft
**Status:** Draft
**Authors:** Marcus Baw (@pacharanero)
**Licence:** CC-BY-4.0

---

## Overview

SAFETY.md defines a lightweight, convention-driven standard for clinical safety documentation in digital health projects. It is designed to integrate naturally into existing software development workflows — specifically Git-based version control and GitHub — without requiring separate toolchains, build systems, or documentation platforms.

The guiding principle is **convention over configuration**: a small set of well-named files at the root of a repository, rendered natively by GitHub, auditable via commit history, and machine-readable enough to be linted and validated by automated tools.

This is the same pattern established by `README.md`, `LICENSE`, `CONTRIBUTING.md`, and `SECURITY.md`. SAFETY.md proposes an equivalent set of conventions for clinical safety.

---

## Motivation

Existing approaches to clinical safety documentation (e.g. NHS DCB0129/DCB0160 Word document templates, or complex MkDocs/Docker-based systems) impose a high ceremony burden on development teams. This has two failure modes:

1. **Adoption failure** — teams skip or minimise safety documentation because the tooling overhead is disproportionate to the size of the project.
2. **Safety theatre** — teams complete documents perfunctorily to satisfy a compliance process, without genuinely integrating safety thinking into development.

SAFETY.md v2 aims to make *doing clinical safety well* the path of least resistance, by meeting developers where they already work.

---

## Design Principles

- **Plain text, version controlled.** All safety documentation lives as Markdown files in the project repository. The commit history is the audit trail.
- **Zero external dependencies.** No frameworks, build steps, or separate documentation platforms required. Just Git and files, and whatever Git hosting platform you use (GitHub, GitLab, Bitbucket, etc).
- **Human-readable and machine-readable.** Files are readable by GitHub users without any tooling, and structured to be parseable by automated tools.
- **Opinionated but tiered.** A small product can satisfy the standard with one file. A complex regulated system uses the full file set.
- **Compatible with existing standards.** SAFETY.md does not replace DCB0129 or DCB0160 — it provides a modern, developer-friendly implementation path for compliance with them.

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
| `organisation` | Manufacturer name (in the DCB0129 sense) |
| `safety-case-status` | One of: `draft`, `under-review`, `approved`, `archived` |
| `hazard-log-url` | Link to `HAZARD-LOG.md` or GitHub Issues hazard log |
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
| Organisation | Baw Medical Ltd |
| Safety Case Status | approved |
| Hazard Log | [HAZARD-LOG.md](./HAZARD-LOG.md) |
| Last Reviewed | 2025-11-01 |

## Summary

[Brief narrative — what the product does, intended clinical context, summary of safety approach.]

## Documents

- [Safety Case](./SAFETY-CASE.md)
- [Hazard Log](./HAZARD-LOG.md)
- [Clinical Risk Management Plan](./SAFETY-PLAN.md) *(if present)*
```

---

### `SAFETY-CASE.md` *(required for Tier 2 and above)*

The clinical safety case. This is the substantive argumentation that the product is acceptably safe for its intended purpose. It should follow a Goal Structuring Notation (GSN)-inspired narrative, even if not using formal GSN diagrams.

**Recommended sections:**

1. **Intended Use** — what the product does and doesn't do; intended user population; clinical context.
2. **Scope** — what is in scope for this safety case; explicit exclusions.
3. **Safety Argument** — structured argument that the product is acceptably safe. Reference specific hazards (by ID) from the Hazard Log.
4. **Evidence** — links to testing, clinical validation, usability studies, or other evidence supporting the safety argument.
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

The Clinical Risk Management Plan. Documents the *process* by which clinical risk is managed — who is responsible, how hazards are identified, how reviews are conducted, how changes trigger re-assessment. Most small projects do not need this as a separate file; a brief process section in `SAFETY-CASE.md` is sufficient.

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

SAFETY.md does not replace these NHS standards — it provides a modern implementation path for them. The table below maps SAFETY.md files to DCB0129 document requirements.

| DCB0129 Document | SAFETY.md equivalent |
|---|---|
| Clinical Risk Management Plan | `SAFETY-PLAN.md` |
| Clinical Risk Management File | The repository itself |
| Hazard Log | `HAZARD-LOG.md` (or GitHub Issues) |
| Clinical Safety Case | `SAFETY-CASE.md` |
| Configuration Item (release) | Git tag + `SAFETY.md` version field |

A CSO using SAFETY.md can reasonably assert DCB0129 compliance by pointing to the SAFETY.md file set and the repository commit history.

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
