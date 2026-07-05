# Clinical Safety Hazard Log Template — structure summary

> Status: Markdown-readable structure summary only. The canonical upstream artefact is the Excel workbook in `resources/templates/clinical_safety_hazard_log_template.xlsx`.

## Provenance

| Field | Value |
|---|---|
| Working title | Clinical Safety Hazard Log template |
| Local source file | `resources/templates/clinical_safety_hazard_log_template.xlsx` |
| Source URL | TODO: confirm authoritative source URL. |
| Date accessed | 2026-07-03 |
| SHA-256 | `fd6bd9c330e97fb24496ecbb71e19854d87157436fbe78a56ce81cd1ada98556` |
| Rendering status | Structure summary prepared from workbook inspection using `openpyxl`; not a full spreadsheet conversion. |

## Workbook structure

| Sheet | Dimensions | Purpose |
|---|---:|---|
| `Cover Page` | 21 × 5 | Cover/title page for a project hazard log. |
| `Version History` | 36 × 20 | Amendment history and document control. |
| `Hazard Log` | 443 × 28 | Main hazard assessment table. |
| `Risk Matrix` | 22 × 12 | Likelihood/severity-to-risk-class matrix. |
| `References` | 17 × 4 | Supporting reference list. |

## Hazard log structure

The visible header bands include:

- `Hazard Assessment`
- `Initial Risk`
- `No.`
- `Date Added`
- `Hazard Description`
- `Existing Controls`
- `HIT Design`
- `Effect`
- `Hazard`
- `Harm`
- `Possible Causes`
- `Description`
- `Evidence`

The workbook is a structured spreadsheet template rather than a prose document. It should inform SAFETY.md-native hazard log fields, but should not be treated as the final target format.

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

- Keep hazard logs close to code as Markdown tables, structured YAML/JSON, GitHub Issues, or another reviewable format, but retain the ability to export evidence into spreadsheet-style compliance artefacts when required.
- Preserve document-control intent through Git history, release tags, review records, and explicit CSO approval checkpoints.
- Treat the upstream spreadsheet as a source pattern, not as the preferred SAFETY.md-native user experience.

## Decision on rendering

Retain the spreadsheet as a binary upstream source plus this concise summary for now. Full CSV/Markdown table extraction is deferred because the merged-cell layout would create noisy output and may obscure the safety concepts SAFETY.md needs to preserve.
