# Queries

Open questions that need human confirmation before related material can be treated as fully canonical.

## Source provenance and licensing

1. Confirm exact source URLs and licence/re-use terms for files in `resources/templates/`:
   - `nhs_digital_clinical_risk_management_plan_template.docx`
   - `nhs_digital_clinical_risk_management_system_template.docx`
   - `nhs_digital_clinical_safety_case_report_template-1.docx`
   - `clinical_safety_hazard_log_template.xlsx`
   - `DFOCVC-Generic-Hazard-Log-v.2.0.xlsx`
2. Confirm exact source URLs and licence/re-use terms for files in `resources/data-safety/`:
   - `Clinical+Risk+Management+-+Agile+Development+Implementation+Guidance.pdf`
   - `Clinical+Risk+Management+-+Data+Safety.pdf`
3. Confirm whether `assets/risk-matrix.png` is derived from an upstream NHS/NHS Digital/NHS England document, authored locally, or generated from template data.
4. Confirm whether OGL v3.0 applies to each upstream NHS/NHS England/NHS Digital file, or whether any document has different terms.

## Canonical renderings

5. Should canonical Markdown renderings preserve upstream typos exactly with annotations, or silently correct obvious extraction/OCR artefacts while preserving a change log?
6. Should first-pass extracted Markdown files remain fenced as `text` blocks until reviewed, or should the next pass convert them into semantic Markdown headings/tables immediately?
7. Should spreadsheet templates be rendered as CSV/Markdown tables in this repository, or retained only as binary upstream source files plus narrative summaries?

## Product direction

8. Should SAFETY.md define separate formal profiles for:
   - manufacturer/supplier evidence;
   - deployer/use evidence;
   - combined manufacturer-and-deployer organisations?
9. Should DUAA2025 `relevant IT provider` status be a required field in `SAFETY.md`, or optional/conditional?
10. Should `SAFETY.md` include an explicit `Applicable standards and assurance domains` section in the core spec, or only in higher-tier templates?

## Skills

11. Should executable SAFETY.md skills initially live project-locally under `.agents/skills/`, or should Marcus also maintain experimental global copies under `~/.agents/skills/` while iterating?
12. Should `safety-md-csmf` be model-invoked immediately, or user-invoked until it has been tested on several repositories?
13. Should `safety-md-mdr-triage` remain a lightweight escalation/handoff skill only, or eventually grow into a fuller MDR classification workflow?
14. Should SAFETY.md skills generate root-level files by default in all repos, or ask before writing root-level clinical safety files when a repo already has `docs/safety/` or another existing structure?
15. Should `safety-md-dtac-evidence` remain limited to clinical-safety evidence for DTAC, or eventually become a full DTAC generator? Current recommendation: keep full DTAC in ArcKit and keep SAFETY.md focused.
