# SAFETY.md file set

## Default root files

| File | Purpose | When |
|---|---|---|
| `SAFETY.md` | Front door to clinical safety evidence | Always |
| `SAFETY-CASE.md` | Safety argument, evidence, residual risk, CSO sign-off | Tier 2+, DCB0129/DCB0160, moderate/high risk |
| `HAZARD-LOG.md` | Structured hazard log or issue-log pointer | Always; may be embedded in Tier 1 |
| `SAFETY-PLAN.md` | Clinical risk management process | Tier 3, complex org/process, regulated contexts |
| `queries.md` | Unknowns requiring user/CSO answer | When facts are missing |

## Required sections for `SAFETY.md`

- Product/version/configuration
- Organisation and role(s)
- CSO and review status
- Applicable standards and assurance domains
- Summary/intended use
- Links to safety case, hazard log, plan, evidence
- Status and next review

## Role table

Use this shape:

```markdown
| Role | Applies? | Organisation/person | Evidence / notes |
|---|---:|---|---|
| Manufacturer / supplier | TBD | TBD | TBD |
| Deployer / health organisation | TBD | TBD | TBD |
| Operator | TBD | TBD | TBD |
| Maintainer | TBD | TBD | TBD |
| Relevant IT provider | TBD | TBD | TBD |
```

## Applicable standards table

```markdown
| Domain | Standard / framework | Applies? | Evidence location | Owner |
|---|---|---:|---|---|
| Clinical risk management — manufacture | DCB0129 | TBD | `SAFETY-CASE.md` | Manufacturer CSO |
| Clinical risk management — deployment/use | DCB0160 | TBD | Deployment safety case | Deployer CSO |
| Health/care information standards | HSC Act 2012 Part 9 as amended by DUAA2025 | TBD | Evidence pack | Responsible owner |
| Medical device regulation | UK MDR / EU MDR | TBD | MDR assessment | Regulatory owner |
| Information security | DSPT / ISO 27001 / Cyber Essentials / other | TBD | Security evidence | Security owner |
| Data protection / secondary use | UK GDPR / DPA 2018 / DUAA2025 context | TBD | DPIA / IG evidence | IG lead |
```
