# DCB0160 to SAFETY.md crosswalk

> Working crosswalk. This maps DCB0160 deployment/use-side clinical risk management concepts to SAFETY.md repository-native artefacts. It does not replace DCB0160.

## Scope

DCB0160 concerns clinical risk management in the deployment and use of health IT systems by health and care organisations. SAFETY.md can help deployment organisations maintain local safety evidence close to the relevant configuration, integrations, workflows, and operational arrangements.

## Crosswalk

| DCB0160 concept / artefact | SAFETY.md artefact | Notes |
|---|---|---|
| Local Clinical Risk Management File | Deployment repository or deployment folder anchored by `SAFETY.md` | May be in a code repo, infrastructure repo, deployment repo, or local safety evidence repo. |
| Deployment/use Clinical Risk Management Plan | `SAFETY-PLAN.md` or local deployment process section | Should describe local governance, responsibilities, hazard review, incident process, and change triggers. |
| Local Hazard Log | `HAZARD-LOG.md`, issue tracker, or deployment hazard register | Must include deployment-specific hazards, not just supplier/manufacturer hazards. |
| Deployment Safety Case | `SAFETY-CASE.md` or deployment-specific safety case | Should test supplier assumptions against local workflows, users, integrations, and fallback arrangements. |
| Supplier safety evidence | Linked manufacturer `SAFETY.md`, supplied safety case, release notes, hazard log, known issues | Supplier evidence is input to local safety work, not a replacement for it. |
| Operational incident feedback | Issues/incidents linked to hazards and controls | Incidents and near misses should trigger hazard review and safety case updates. |
| Local configuration | Git tag, deployment manifest, infrastructure-as-code version, environment configuration | Local configuration can materially affect safety and must be identifiable. |
| Decommissioning | Decommissioning safety section or plan | Should address migration, continuity, access to historical information, and safe fallback. |

## SAFETY.md design implications

- Add explicit deployer/health-organisation role declarations.
- Record whether DCB0160 applies separately from DCB0129.
- Record supplier assumptions and local deployment assumptions.
- Include interoperability, access-to-information, data migration, downtime, and support/fallback hazards.
- Avoid implying that supplier/manufacturer documentation alone establishes local deployment safety.
