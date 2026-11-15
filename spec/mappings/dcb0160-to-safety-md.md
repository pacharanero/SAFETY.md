# DCB0160 to SAFETY.md crosswalk

> Working crosswalk. This maps DCB0160 deployment/use-side clinical risk management concepts to SAFETY.md repository-native artefacts. It does not replace DCB0160.

## Scope

DCB0160 concerns clinical risk management in the deployment and use of health IT systems by health and care organisations. SAFETY.md can help deployment organisations maintain local safety evidence close to the relevant configuration, integrations, workflows, and operational arrangements.

## Crosswalk

| DCB0160 concept / artefact | SAFETY.md artefact | Notes |
|---|---|---|
| Local Clinical Risk Management File | Deployment repository or deployment folder anchored by `SAFETY.md` | May be in a code repo, infrastructure repo, deployment repo, or local safety evidence repo. |
| Deployment/use Clinical Risk Management Plan | `SAFETY-PLAN.md` or local deployment process section | Required wherever DCB0160 applies (3.2.1), with risk acceptability criteria and CSO approval (3.2.2). Should describe local governance, responsibilities, hazard review, incident process, and change triggers. |
| Local Hazard Log | `HAZARD-LOG.md`, issue tracker, or deployment hazard register | Must include deployment-specific hazards, not just supplier/manufacturer hazards. |
| Deployment Safety Case | `SAFETY-CASE.md` or deployment-specific safety case | Should test supplier assumptions against local workflows, users, integrations, and fallback arrangements. |
| Supplier safety evidence | Linked manufacturer `SAFETY.md`, supplied DCB0129 Clinical Safety Case Report, release notes, hazard log extracts, residual risks, transferred risk-control measures, known issues, IFU/manual/labelling where relevant | Supplier evidence is input to local safety work, not a replacement for it. Deployers should record what was requested, received, reviewed, accepted, rejected, or remains pending. |
| Operational incident feedback | Issues/incidents linked to hazards and controls | Incidents and near misses should trigger hazard review and safety case updates. |
| Local configuration | Git tag, deployment manifest, infrastructure-as-code version, environment configuration | Local configuration can materially affect safety and must be identifiable. |
| Decommissioning | Decommissioning safety section or plan | Should address migration, continuity, access to historical information, and safe fallback. |

## SAFETY.md design implications

- Add explicit deployer/health-organisation role declarations. A deployer `SAFETY.md` uses the same required fields as a manufacturer one, with `standard: DCB0160`, `organisation` naming the Health Organisation, and `role` including `deployer`.
- DCB0160 requires the Health Organisation, in procurement, to ensure that the Manufacturer and the Health IT System comply with DCB0129 (2.5.1).
- Record whether DCB0160 applies separately from DCB0129.
- Record supplier assumptions and local deployment assumptions.
- Include interoperability, access-to-information, data migration, downtime, and support/fallback hazards.
- Avoid implying that supplier/manufacturer documentation alone establishes local deployment safety.
- Include a supplier-evidence request/review record for DCB0129 Clinical Safety Case Report material, transferred controls, residual risks, assumptions, release notes, known issues, and IFU/manual/labelling where relevant.
- Where supplier ISO 14971/MDR material is unavailable or proprietary, record the residual-risk communication actually provided and assess whether it is enough for local DCB0160 work.
