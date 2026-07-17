# SAFETY.md templates

These are first-pass SAFETY.md-native templates for repository-local clinical safety documentation.

They are derived from this repository's current specification, mappings, glossary, and upstream source corpus. They are **not** copied from the historical `dcb0129-template` repository and should not be treated as completed clinical safety documentation.

## Templates

| Template | Purpose | Typical use |
|---|---|---|
| [`SAFETY.md`](./SAFETY.md) | Root front door to safety evidence. | All projects. |
| [`SAFETY-CASE.md`](./SAFETY-CASE.md) | Safety argument, evidence, residual risk, assumptions, and CSO review. | Tier 2+ or where formal DCB0129/DCB0160 evidence is needed. |
| [`HAZARD-LOG.md`](./HAZARD-LOG.md) | Repository-native hazard log starter. | All projects; may be embedded into `SAFETY.md` for Tier 1. |
| [`SAFETY-PLAN.md`](./SAFETY-PLAN.md) | Clinical risk management process and responsibilities. | Tier 3, complex projects, or where a separate plan is proportionate. |

## Use

Copy the relevant files into the root of the target repository and replace placeholders such as `[PENDING]`, `[PROJECT]`, and `[CSO]` with evidenced project-specific content.

Do not change `draft` or `[PENDING]` statuses to approved/compliant language unless the relevant clinical safety work, evidence, review, and sign-off have actually happened.

## Design constraints

These templates deliberately:

- keep root `SAFETY.md` as the front door;
- include applicable standards and assurance domains;
- separate manufacturer/supplier evidence from deployer/use evidence;
- include role declarations for manufacturer, supplier, deployer, operator, maintainer, and relevant IT provider;
- include DUAA2025-aware hazard prompts for interoperability, portability, access to information, information security, analytics, AI/ML, and secondary use of data;
- include ISO 14971/MDR as a separate assurance domain where relevant;
- avoid claims that a project is compliant merely because template files exist.
