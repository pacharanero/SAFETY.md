# DUAA2025 and amended health/care information standards to SAFETY.md crosswalk

> Working crosswalk. This maps Data (Use and Access) Act 2025 implications to SAFETY.md design ideas. It is not legal advice.

## Core implication

The Data (Use and Access) Act 2025 strengthens the information-standards framework for health and adult social care in England by making explicit that standards can apply to IT, software, code, IT services, interoperability, portability, storage/access to information, and information security.

SAFETY.md should therefore support clinical safety evidence that can sit alongside wider information-standard evidence without pretending that the CSO owns every adjacent assurance domain.

## Crosswalk

| DUAA2025 / amended framework concept | SAFETY.md response | Notes |
|---|---|---|
| Relevant IT provider | Add role/status declaration | Identify whether the organisation supplies, markets, provides, operates, or maintains health/care IT or IT services. |
| Information technology includes software and code | Keep `SAFETY.md` in the code repo | Safety close to code supports traceability between software changes and safety evidence. |
| IT service includes development, making available, operation, maintenance | Add lifecycle/responsibility fields | Safety evidence should distinguish supplier, operator, maintainer, and deployer roles. |
| Standards may cover functionality/connectivity/interoperability | Add assurance-domain register and hazard prompts | Interoperability/connectivity failures can create clinical hazards. |
| Standards may cover portability/storage/access to information | Add hazard prompts and evidence links | Loss, delay, corruption, or poor portability of information can affect care continuity. |
| Standards may cover security of information | Link safety and security evidence where security failures can cause patient harm | Avoid making CSO the security owner, but require clinical safety assessment of safety-relevant security risks. |
| Evidence of compliance may be requested | Define evidence-pack convention | Repository-native documents should be exportable and tied to releases/configuration items. |
| Public censure of suspected non-compliance | Avoid unsupported compliance claims | Use precise status language and ensure review/approval trail is clear. |
| Accreditation schemes may reference information standards | Keep accreditation evidence separate but linkable | SAFETY.md can support accreditation evidence but is not itself accreditation. |

## Proposed SAFETY.md fields/sections

```markdown
## Applicable standards and assurance domains

| Domain | Standard / framework | Applies? | Evidence location | Owner |
|---|---|---:|---|---|
| Clinical risk management — manufacture | DCB0129 | TBD | `SAFETY-CASE.md` | Manufacturer CSO |
| Clinical risk management — deployment/use | DCB0160 | TBD | Deployment safety case | Deployer CSO |
| Health/care information standards | HSC Act 2012 Part 9 as amended | TBD | Evidence pack | Responsible owner |
| Interoperability | TBD | TBD | TBD | Technical owner |
| Information security | TBD | TBD | TBD | Security owner |
| Data protection / secondary use | UK GDPR / DPA 2018 / DUAA2025 context | TBD | DPIA / IG evidence | IG lead |
```

```markdown
## Roles and responsibilities

| Role | Applies? | Organisation/person | Evidence |
|---|---:|---|---|
| Manufacturer / supplier | TBD | TBD | TBD |
| Deployer / health organisation | TBD | TBD | TBD |
| Operator | TBD | TBD | TBD |
| Maintainer | TBD | TBD | TBD |
| Relevant IT provider | TBD | TBD | TBD |
```
