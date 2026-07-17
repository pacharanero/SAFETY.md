# DCB0129 to SAFETY.md crosswalk

> Working crosswalk. This maps DCB0129 manufacturer-side clinical risk management concepts to SAFETY.md repository-native artefacts. It does not replace DCB0129.

## Scope

DCB0129 concerns clinical risk management in the manufacture of health IT systems. SAFETY.md aims to provide a practical way for manufacturers/suppliers to organise, review, evidence, and maintain the clinical safety artefacts expected by DCB0129.

## Crosswalk

| DCB0129 concept / artefact | SAFETY.md artefact | Notes |
|---|---|---|
| Clinical Risk Management File (CRMF) | Repository, anchored by root `SAFETY.md` | The repository can act as the CRMF if it contains or links to safety documents, hazard records, evidence, review trail, and release/configuration history. |
| Clinical Risk Management Plan (CRMP) | `SAFETY-PLAN.md` or process section in `SAFETY-CASE.md` | Required for more complex projects; low-risk projects may use a shorter embedded process section if proportionate. |
| Hazard Log | `HAZARD-LOG.md`, structured data, or labelled issue tracker | Must be auditable, exportable, and clear about hazard IDs, controls, initial/residual risk, status, evidence, and CSO review. |
| Clinical Safety Case | `SAFETY-CASE.md` | Should include intended use, scope, safety argument, evidence, residual risk, assumptions, and CSO sign-off. |
| Clinical Safety Case Report | Release-specific safety case report or evidence-pack export | May be generated from repository-native documents and linked evidence for a release/configuration item. For deployers, this is supplier evidence they can request and review; for manufacturers, it should be shareable without exposing unrelated proprietary material. |
| Configuration item / release | Git tag, release, commit SHA, build artefact, version field in `SAFETY.md` | Safety evidence must identify the product version/configuration to which it applies. |
| Document control | Git history, pull requests, approvals, tags, releases | Git-based control implements document-control aims; it is not intended to bypass document control. |
| Competent personnel | `SAFETY.md` role table, `SAFETY-PLAN.md`, approvals/review history | CSO and reviewers should be identified with appropriate credentials and responsibilities. |
| Risk control evidence | Links from hazards to code changes, tests, design docs, incidents, PRs | Evidence should show controls exist and are effective, not just assert them. Include residual risks and transferred risk-control measures that deployers must implement locally. |
| Post-release maintenance | Change-control section, hazard review process, incident feedback | Safety docs should evolve with the codebase and live operational evidence. |

## SAFETY.md design implications

- Keep manufacturer/supplier-side evidence distinct from deployment/use evidence.
- Require explicit intended use and system scope.
- Make hazard IDs stable and linkable.
- Tie safety case status to product/release version.
- Avoid claims of compliance until CSO review and required evidence are complete.
- Where ISO 14971/MDR evidence exists, map it to DCB0129 but do not claim that ISO 14971 completion alone satisfies DCB0129.
- Make manufacturer-facing outputs shareable enough that deployers can understand hazards, residual risks, transferred controls, assumptions, and release-specific safety status.
