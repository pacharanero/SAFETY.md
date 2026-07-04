# SAFETY.md project-local skills

These skills are deliberately **user-invoked**. They all set `disable-model-invocation: true` so clinical safety, regulatory, and assurance workflows run only when the user explicitly chooses them.

Use `safety-md-router` if you are unsure which skill to run.

| Skill | Purpose |
|---|---|
| `safety-md-csmf` | Generate or update a repo-native SAFETY.md Clinical Risk Management File. |
| `safety-md-hazard-workshop` | Run a hazard-identification workshop and update a hazard log. |
| `safety-md-review` | Review existing SAFETY.md/CSMF/DCB0129/DCB0160 documentation. |
| `safety-md-duaa2025-check` | Check DUAA2025 and amended health/care information-standard implications. |
| `safety-md-template-modernise` | Migrate older safety docs/templates into SAFETY.md style. |
| `safety-md-mdr-triage` | Perform lightweight medical-device/SaMD triage and escalation. |
| `safety-md-dtac-evidence` | Prepare the clinical-safety evidence slice for DTAC. |
| `safety-md-release-review` | Review a release/PR/change for clinical safety impact. |
| `safety-md-incident-update` | Update safety evidence after an incident, near miss, or safety signal. |
| `safety-md-router` | Choose the right SAFETY.md skill. |
