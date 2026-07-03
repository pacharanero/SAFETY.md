# CSO briefing — Data (Use and Access) Act 2025 and health IT standards

> Working note, not legal advice. Source material accessed 2026-07-03.

## Who this is for

This note is for Clinical Safety Officers (CSOs) and clinical safety reviewers working with health IT systems in England.

It translates the parts of the Data (Use and Access) Act 2025 most likely to matter for clinical safety work into practical questions and documentation implications.

## One-line summary

The Act strengthens the legal machinery around health and adult social care information standards, making it clearer that standards can apply directly to health IT, software, code, IT services, interoperability, information access, and security — and that relevant IT providers may be asked to evidence compliance.

## What a CSO needs to know

### 1. Clinical safety may sit within a wider compliance evidence pack

DCB0129 and DCB0160 are clinical risk management standards. The Act does not turn every data or interoperability issue into a clinical safety issue, but it reinforces that health IT standards can cover the technology and services themselves.

A CSO should expect clinical safety evidence to sit alongside evidence for:

- interoperability;
- data access;
- information security;
- data portability;
- system functionality;
- supplier/deployer obligations;
- accreditation or conformance schemes.

Practical implication: the safety case should be explicit about where clinical safety ends and where other assurance domains begin, while still cross-referencing them where they affect patient safety.

### 2. Suppliers may be asked to provide evidence quickly

The amended framework allows a relevant IT provider suspected of non-compliance with an applicable information standard to be asked to:

- comply;
- provide evidence of compliance;
- take specified steps toward compliance.

A CSO should therefore favour safety documentation that is:

- version-controlled;
- easy to export;
- linked to release/configuration items;
- traceable to hazards, controls, evidence, and approvals;
- aligned with applicable standards.

This is directly supportive of the SAFETY.md approach.

### 3. The supplier/deployer boundary matters

DCB0129 is primarily manufacturer/supplier-side. DCB0160 is primarily deployment/use-side. The Act’s `relevant IT provider` concept can bring suppliers and service providers into the information-standards compliance picture.

A CSO should check:

- Who is the manufacturer/supplier?
- Who is the deploying health or care organisation?
- Who operates and maintains the system?
- Who controls configuration?
- Who owns clinical risk during deployment and live use?
- What safety documentation is supplied by the manufacturer?
- What local safety documentation is required by the deployer?

### 4. Interoperability, portability, access, and security can be safety-relevant

The Act explicitly mentions areas such as functionality, connectivity, interoperability, portability, storage/access to information, and security of information as possible subjects of IT-related information standards.

A CSO does not need to own all those domains, but should ask whether failures in those domains could create clinical hazards.

Examples:

| Domain | Possible patient-safety question |
|---|---|
| Interoperability | Could incorrect, missing, delayed, or duplicated data affect clinical decisions? |
| Portability | Could inability to export or transfer data safely affect continuity of care? |
| Access to information | Could users be unable to access clinically necessary information at the point of care? |
| Information security | Could a security failure affect availability, integrity, or confidentiality in a way that creates patient harm? |
| Functionality | Could a feature behave in a way that misleads users or creates unsafe workflow? |
| Connectivity | Could network/API failure create unsafe fallback states? |

### 5. Research and secondary use of data may need safety attention where product behaviour changes

The Act also changes parts of UK data protection law around scientific research, statistical purposes, and safeguards for research/archiving/statistical processing.

A CSO is not usually the information governance lead, but should be alert where research, analytics, machine learning, or secondary use affects clinical behaviour.

Ask:

- Is patient data used to train, tune, evaluate, or monitor the system?
- Does research/analytics output feed back into patient-facing or clinician-facing functionality?
- Could a model, dashboard, risk score, recommendation, or alert affect care?
- Are decisions or measures being taken about individuals, or only aggregate/statistical outputs?
- Are privacy-preserving controls such as pseudonymisation also assessed for clinical consequences, e.g. linkage errors or loss of clinically important context?

### 6. Public censure makes traceability reputationally important

The Act allows public statements about suspected non-compliance by relevant IT providers, subject to process protections.

For a CSO, the practical point is that poor evidence hygiene can become an organisational risk. Safety documentation should make it easy to show:

- what standard was being followed;
- what version of the standard applied;
- what product/release/configuration the evidence relates to;
- who reviewed and approved it;
- what hazards were known;
- what controls were in place;
- what residual risks were accepted;
- what changed between releases.

## Suggested CSO checklist

When reviewing a health IT system, ask:

### Applicability

- [ ] Is this system within scope of DCB0129, DCB0160, or both?
- [ ] Are there other NHS, health/care, interoperability, data, or information standards that apply?
- [ ] Is the organisation acting as manufacturer, deployer, operator, maintainer, or more than one of these?
- [ ] Is there a relevant IT provider whose evidence we depend on?

### Documentation and evidence

- [ ] Is there a current `SAFETY.md` or equivalent front-door safety document?
- [ ] Is there a safety case for the relevant release/configuration?
- [ ] Is there a hazard log with clear hazard IDs, controls, residual risk, status, and review trail?
- [ ] Is there a clinical risk management plan or process description?
- [ ] Is evidence linked to tests, releases, incidents, pull requests, or other auditable artefacts?
- [ ] Can the evidence be produced within a short compliance-response window?

### Supplier/deployer split

- [ ] What safety evidence has the supplier provided?
- [ ] What local deployment/use safety work has been done?
- [ ] Are assumptions from the supplier safety case valid in the local deployment context?
- [ ] Are local workflows, integrations, user groups, and fallback arrangements reflected in the hazard assessment?

### Data and IT standards

- [ ] Could interoperability failures cause patient harm?
- [ ] Could data access/storage/portability failures cause patient harm?
- [ ] Could information-security failures cause patient harm through availability, integrity, or confidentiality impacts?
- [ ] Are data-use, analytics, AI/ML, or research components involved?
- [ ] If secondary-use outputs feed clinical functionality, are they covered by the safety case?

### Release and change control

- [ ] Is the safety case tied to a product version, release tag, or configuration item?
- [ ] Are safety-affecting changes reviewed before release?
- [ ] Are incidents and near-misses fed back into the hazard log?
- [ ] Are decommissioning and maintenance responsibilities clear?

## What this means for SAFETY.md

A CSO-friendly SAFETY.md implementation should make it easy to find:

- the applicable standard(s);
- the product/release/configuration being assessed;
- manufacturer and deployer roles;
- CSO ownership and review status;
- hazard log;
- clinical safety case;
- risk management plan/process;
- evidence links;
- assumptions and deployment constraints;
- known dependencies on interoperability, data access, security, analytics, or AI/ML.

## Suggested addition to SAFETY.md templates

Consider adding an `Applicable standards and assurance domains` section:

```markdown
## Applicable standards and assurance domains

| Domain | Standard / framework | Applies? | Evidence location | Owner |
|---|---|---:|---|---|
| Clinical risk management — manufacture | DCB0129 | Yes | `SAFETY-CASE.md` | Manufacturer CSO |
| Clinical risk management — deployment/use | DCB0160 | TBD | Local deployment safety case | Deploying organisation CSO |
| Interoperability | [standard/profile] | TBD | [link] | [owner] |
| Information security | [standard/framework] | TBD | [link] | [owner] |
| Data protection / secondary use | UK GDPR / DPA 2018 / DUA Act context | TBD | DPIA / IG assessment | IG lead |
```

This keeps the CSO oriented without pretending that the CSO personally owns every assurance domain.

## Primary sources

- Data (Use and Access) Act 2025: https://www.legislation.gov.uk/ukpga/2025/18/contents/enacted
- Section 121: https://www.legislation.gov.uk/ukpga/2025/18/section/121/enacted
- Schedule 15: https://www.legislation.gov.uk/ukpga/2025/18/schedule/15/enacted
- Section 67: https://www.legislation.gov.uk/ukpga/2025/18/section/67/enacted
- Section 86: https://www.legislation.gov.uk/ukpga/2025/18/section/86/enacted
