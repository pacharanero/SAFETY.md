# SAFETY.md specification changelog

Changes to [`specification.md`](./specification.md) that affect required fields, field meanings, or the hazard-log schema. Each draft revision is tagged `v<version>`.

## 2.0.0-draft.2

Breaking changes for anyone following `2.0.0-draft.1`:

- **Risk scheme.** The hazard log must declare a `risk-scheme`. The spec no longer claims that DCB0129 prescribes a scale; DCB0129, DCB0160 and DTAC form version 2.0 all leave the scheme to the Manufacturer or Health Organisation. The DCB0129 Implementation Guidance example (Tables 7–10) is offered as the named scheme `dcb0129-ig-example`.
- **Numbering direction.** Severity and likelihood now run 1 (Minor / Very low) to 5 (Catastrophic / Very high), so that the numbers match the guidance's risk matrix. The draft.1 label schema ran the other way (`severity:1` was Catastrophic).
- **Risk values.** `risk` and `residual-risk` are risk classes from the declared scheme (1–5 under the example scheme), not `low` / `medium` / `high` / `unacceptable`. The H001 example is corrected: Major × Medium is class 3, not "high".
- **New required field.** `spec-version` declares the revision a `SAFETY.md` follows.

Other changes:

- The Clinical Risk Management Plan is required wherever DCB0129 or DCB0160 applies, at every tier, with risk acceptability criteria and CSO approval. Tiers decide whether it is a separate file.
- Tiers are described as a SAFETY.md convention for splitting DCB deliverables across files, not as DCB0129 risk classifications.
- Location rules reconciled: `SAFETY.md` at the root; other files at the root or in `safety/` or `docs/safety/`; per-product file sets in subfolders with the root `SAFETY.md` as an index.
- Field keys and table labels are listed side by side; validators accept either.
- Additional fields and content (such as document-control blocks) are allowed if they do not redefine spec fields.
- `organisation` is defined for deployer use (the Health Organisation), and the relationship between `role: relevant-it-provider` and relevant IT provider status is stated.
- `SAFETY-CASE.md` gains recommended Risk Scheme and Transferred Risks and Outstanding Issues sections, and the Clinical Safety Case / Clinical Safety Case Report distinction is stated.
- Hazard and control ID format and stability are stated.
- New section on DTAC form version 2.0, section C1.
- Example `SAFETY.md` now shows every required field.

## 2.0.0-draft.1

The specification as at commit [`af40549`](https://github.com/pacharanero/SAFETY.md/blob/af405498/spec/specification.md) (22 July 2026), labelled `2.0.0-draft` at the time. Compared with the initial draft (`spec.md` at the repository root, 31 March 2026), it added the required fields `role` and `applicable-standards` and redefined `organisation` as the organisation responsible for the safety file (commit `cbfc016`, 4 July 2026), then moved to `spec/specification.md` (commit `86fbd7e`, 5 July 2026).
