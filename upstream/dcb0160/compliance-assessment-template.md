# DCB0160 Compliance Assessment Template — structure summary

> Status: Markdown-readable structure summary only. The canonical upstream artefact is the Excel workbook in `resources/dcb0160/DCB-0160-compliance-assessment-v5.0.xlsx`.

## Provenance

| Field | Value |
|---|---|
| Upstream artefact | DCB0160 Compliance Assessment Template |
| Local source file | `resources/dcb0160/DCB-0160-compliance-assessment-v5.0.xlsx` |
| Source URL | See `resources/dcb0160/manifest.md`; linked from the official DCB0160 source page at date accessed. |
| Date accessed | 2026-07-03 |
| SHA-256 | `ca0d3861148451e46bafd4a15b89fc811cc2b88801279907d8524f1f8901085b` |
| Rendering status | Structure summary prepared from workbook inspection using `openpyxl`; not a full spreadsheet conversion. |

## Workbook structure

| Sheet | Dimensions | Purpose |
|---|---:|---|
| `Title sheet` | 39 × 5 | Cover/title metadata for the DCB0160 compliance assessment. |
| `Version Control` | 21 × 4 | Document management and revision history. |
| `Introduction` | 15 × 3 | Instructions for completing the assessment and interpreting `MUST`/`SHOULD` requirements. |
| `Summary` | 22 × 9 | Compliance summary tables and outstanding-response counts. |
| `Section 2` | 25 × 5 | General Requirements and Conformance Criteria for Clinical Risk Management. |
| `Section 3` | 32 × 5 | Project Safety Documentation and Repositories. |
| `Section 4` | 16 × 5 | Clinical risk analysis. |
| `Section 5` | 10 × 5 | Clinical risk evaluation. |
| `Section 6` | 20 × 5 | Clinical risk control. |
| `Section 7` | 26 × 5 | Deployment, Maintenance and Decommission. |

## Compliance section columns

The requirement sections use the following column structure:

| Column | Meaning |
|---|---|
| `Ref #` | Standard clause/reference number. |
| `Requirement` | Requirement text or section heading. |
| `Area` | Distinguishes management-system evidence from project-specific evidence where applicable. |
| `Evidence supporting compliance (include project references where appropriate)` | User-completed evidence references. The workbook instructions expect clear references to documents or repositories that contain the evidence. |
| `Compliance` | User-completed compliance status. |

## Important upstream instructions captured in the workbook

The introduction states that:

- the spreadsheet records compliance of a project with DCB0160, version 3;
- evidence cells should be replaced with relevant user statements;
- users are directed to the implementation guidance for expected evidence;
- the workbook can support partial reviews using an `[Awaiting]` assignment;
- management-system evidence alone may demonstrate an established clinical risk management process, but does not by itself support a full claim of DCB0160 compliance;
- the spreadsheet should be retained in the Clinical Risk Management File;
- to claim conformance, a **Health Organisation** must implement the clinical risk analysis activities in sections 2 to 7, within the bounds of `MUST` and `SHOULD` wording.

## SAFETY.md implications

- SAFETY.md should make deployment/use-side safety evidence explicit and distinguish it from manufacturer/supplier evidence.
- Repository evidence should include local configuration, deployment context, operational procedures, clinical workflow assumptions, deployment safety case material, change records, training/support artefacts, and decommissioning considerations where applicable.
- Skills and templates should ask whether the repository represents a manufacturer, supplier, deploying health organisation, operator, maintainer, or a combined role.
- The Excel workbook is retained because it is the upstream compliance artefact; this Markdown summary exists to make its structure reviewable and linkable in the repository.

## Decision on rendering

For now, spreadsheet artefacts should be retained as upstream binaries plus concise Markdown summaries. Full CSV/Markdown rendering may be useful later for automated crosswalks, but would risk creating noisy, hard-to-review derived copies before the workbook provenance and exact intended use are fully settled.
