# ISO 14971, DCB0129, and DCB0160 to SAFETY.md crosswalk

> Working crosswalk. This maps the relationship between ISO 14971 medical-device risk management and the DCB0129/DCB0160 clinical-risk-management standards to SAFETY.md conventions. It does not replace ISO 14971, DCB0129, DCB0160, MDR/UK MDR review, or CSO judgement.

## Source basis

This crosswalk is informed by:

- [`resources/digital-regulations/dcb-standards-vs-iso-14971-what-healthcare-it-deployers-in-england-need-to-know.md`](../../resources/digital-regulations/dcb-standards-vs-iso-14971-what-healthcare-it-deployers-in-england-need-to-know.md)
- DCB0129 and DCB0160 upstream documents in `resources/` and `upstream/`

## Core position

ISO 14971 work can be valuable input to SAFETY.md and DCB0129/DCB0160 evidence, but it does not make DCB work disappear where DCB standards apply.

SAFETY.md should therefore support reuse and mapping of ISO 14971 evidence while keeping DCB-specific responsibilities explicit:

- DCB0129: manufacturer/supplier-side clinical risk management for health IT systems.
- DCB0160: deployment/use-side clinical risk management for health and care organisations.
- ISO 14971: manufacturer-side risk management for medical devices, including SaMD/AIaMD where applicable.

## Key distinctions

| Topic | DCB0129 / DCB0160 | ISO 14971 | SAFETY.md implication |
|---|---|---|---|
| Primary context | Health IT systems in England, with separate manufacturer and deployer duties. | Medical devices, including software/AI as medical device where applicable. | Record standards separately in `applicable-standards`; do not treat ISO 14971 as a substitute for DCB0129/DCB0160. |
| Risk scope | Clinical risk to patients. | Broader medical-device risk management, including patient, user, and other safety risks depending on context. | Hazard logs may need to distinguish DCB patient-clinical-safety hazards from wider MDR/ISO risk-management records. |
| Organisational roles | DCB0129 manufacturer/supplier; DCB0160 deploying health organisation. | Primarily manufacturer. | Role declarations must include manufacturer/supplier/deployer/operator/maintainer; deployment evidence is not discharged by supplier evidence. |
| Clinical Safety Officer | DCB standards require CSO appointment/sign-off. | Requires appropriate clinical participation but not necessarily a DCB-style CSO role. | SAFETY.md must not infer DCB CSO approval from ISO 14971 participation. |
| Evidence sharing | DCB0129 Clinical Safety Case Report must be shared with the deploying organisation; deployers can request it. | ISO 14971 artefacts are usually manufacturer-proprietary; residual risks are communicated via appropriate product information such as IFU/manual/labelling. | Deployment SAFETY.md files should include a supplier-evidence request/checklist and record received DCB0129 CSCR, transferred controls, residual risks, assumptions, and gaps. |
| Residual/transferred controls | DCB0129 should communicate residual risks and transferred risk-control measures; DCB0160 must assess and implement local controls. | Residual risk communication is part of the medical-device risk-management lifecycle. | Hazards should include fields/notes for `transferred-controls`, `supplier-assumptions`, and `local-implementation-evidence` where deployment is in scope. |
| Duplication | DCB and ISO activities overlap but are not identical. | ISO work can provide a foundation. | SAFETY.md should encourage mapping/reuse, not copy-paste duplication or unsupported equivalence claims. |

## DCB applicability to Software as a Medical Device

The Digital Regulations blog summarises DCB applicability to software medical devices as follows:

| Software category | DCB implication for SAFETY.md triage |
|---|---|
| Software embedded in a physical medical device | DCB generally does not apply solely because of the embedded software; MDR/ISO evidence may still be central. |
| SaMD implemented within or forming part of a health IT system | DCB can apply, so SAFETY.md should consider both MDR/ISO and DCB0129/DCB0160 evidence paths. |
| Standalone SaMD not implemented within or forming part of a health IT system | DCB may not apply on that basis, even if deployed within the NHS; specialist regulatory/clinical-safety review may still be needed. |

This is a triage aid, not a legal conclusion. SAFETY.md skills should record the rationale and escalate ambiguous cases.

## SAFETY.md design implications

- Add ISO 14971 / MDR / UK MDR as a separate assurance-domain row where relevant, not as a replacement label for DCB0129 or DCB0160.
- In manufacturer-side SAFETY.md outputs, include a mapping prompt: “If ISO 14971 risk-management documentation exists, which DCB0129-specific obligations remain to be evidenced?”
- In deployer-side SAFETY.md outputs, include prompts to request and review supplier DCB0129 Clinical Safety Case Report material, transferred risk controls, residual risks, release notes, known issues, IFU/manual/labelling where relevant, and local implementation assumptions.
- For SaMD/AIaMD, trigger MDR triage and explicitly ask whether the software is embedded in a physical medical device, SaMD forming part of a health IT system, or standalone SaMD.
- Avoid saying “ISO 14971 complete, therefore DCB0129 complete”. Prefer “ISO 14971 evidence may be reused as input; DCB0129/DCB0160 gaps remain to be mapped and reviewed.”

## Suggested SAFETY.md fields/prompts

For manufacturer/supplier evidence:

- `iso-14971-risk-management-file-location`
- `dcb0129-gap-map-location`
- `clinical-safety-case-report-shared-with-deployers`
- `transferred-risk-controls`
- `residual-risk-communication`

For deployer evidence:

- `supplier-dcb0129-cscr-requested`
- `supplier-dcb0129-cscr-received`
- `supplier-transferred-controls-reviewed`
- `local-implementation-evidence`
- `local-dcb0160-assessment-status`

These should remain optional/conditional until the core SAFETY.md schema is deliberately versioned.
