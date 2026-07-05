# DFOCVC Generic Hazard Log v2.0 — structure summary

> Status: Markdown-readable structure summary only. The canonical upstream artefact is the Excel workbook in `resources/templates/DFOCVC-Generic-Hazard-Log-v.2.0.xlsx`.

## Provenance

| Field | Value |
|---|---|
| Working title | DFOCVC Generic Hazard Log v2.0 |
| Local source file | `resources/templates/DFOCVC-Generic-Hazard-Log-v.2.0.xlsx` |
| Source URL | TODO: confirm authoritative source URL and authorship. |
| Date accessed | 2026-07-03 |
| SHA-256 | `06dac9ef754b8ce2170c2d66e27bc61c53c68a2f0e0b5969d9ffe6f18fe2ffce` |
| Rendering status | Structure summary prepared from workbook inspection using `openpyxl`; not a full spreadsheet conversion. |

## Workbook structure

| Sheet | Dimensions | Purpose |
|---|---:|---|
| `Cover Page` | 59 × 8 | Cover and document-record metadata. |
| `Version History` | 35 × 37 | Amendment history and document control. |
| `Risk Matrix` | 40 × 15 | Likelihood/severity-to-risk-class matrix. |
| `OnlineConsult` | 461 × 28 | Generic hazard prompts for online consultation capability. |
| `VideoConsult` | 448 × 171 | Generic hazard prompts for video consultation capability. |
| `Clinical Triage` | 456 × 28 | Generic hazard prompts for clinical triage capability. |

## Version-history signals

Observed entries include:

- `Draft 9` — `22.06.2021` — `NHSE review`
- `1` — `2021-07-07` — `Triage tab added`
- `Draft v.1.1` — `2021-10-28` — `NHSD review and restructure`

These entries are useful provenance signals but do not by themselves establish an authoritative source URL or licence/re-use status.

## Capability tabs

The workbook includes pre-populated generic material for:

- online consultation;
- video consultation;
- clinical triage.

The capability tabs include explicit warnings that the hazard log must be elaborated and completed for the specific capabilities, clinical context, and implementation. This aligns strongly with SAFETY.md’s principle that starter hazards are prompts, not completed safety analysis.

The clinical triage tab also notes that algorithmic redirection may warrant medical-device-regulation assessment, while system triage in which a clinician makes redirection decisions may have a different regulatory profile. This is relevant to `safety-md-mdr-triage`, but should not be treated as a substitute for regulatory review.

## Risk matrix observed

The visible risk matrix maps likelihood rows to severity columns using numeric risk classes:

| Likelihood | Severity 1 | Severity 2 | Severity 3 | Severity 4 | Severity 5 |
|---|---:|---:|---:|---:|---:|
| Very High | 3 | 4 | 4 | 5 | 5 |
| High | 2 | 3 | 3 | 4 | 5 |
| Medium | 2 | 2 | 3 | 3 | 4 |
| Low | 1 | 2 | 2 | 3 | 4 |
| Very Low | 1 | 1 | 2 | 2 | 3 |

This should be checked against the DCB0129/DCB0160 risk-class wording before being reused as a SAFETY.md default.

## SAFETY.md implications

- The workbook is valuable as a starter-hazard source for online consultation, video consultation, and triage workflows.
- SAFETY.md templates and skills must repeatedly warn that generic hazards must be adapted to the real clinical context, user population, implementation, configuration, operating model, and deployment setting.
- The workbook should not be treated as canonical SAFETY.md content until authoritative provenance, licence/re-use terms, and any NHS England/NHS Digital ownership status are confirmed.

## Decision on rendering

Retain the spreadsheet as a binary upstream source plus this concise summary for now. Full CSV/Markdown table extraction is deferred because the workbook contains large capability-specific sheets and merged-cell structures that would be noisy without a deliberate schema.
