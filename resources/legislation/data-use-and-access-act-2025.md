# Data (Use and Access) Act 2025 — healthcare precis

| Field | Value |
|---|---|
| Legislation | Data (Use and Access) Act 2025, c. 18 |
| Parliamentary Bill page | https://bills.parliament.uk/bills/3825 |
| Enacted legislation | https://www.legislation.gov.uk/ukpga/2025/18/contents/enacted |
| Publishing bodies | UK Parliament; legislation.gov.uk / The National Archives |
| Status at date accessed | Act, Royal Assent received; original as enacted version available |
| Date accessed | 2026-07-03 |
| Re-use | legislation.gov.uk content is available under the Open Government Licence v3.0 except where otherwise stated. |

## Why this matters for SAFETY.md

The Act contains provisions that may affect health IT suppliers, deployers, and clinical safety documentation in two main ways:

1. it expands the statutory framing of **information standards for health and adult social care in England**, including standards that apply to information technology and IT services; and
2. it changes aspects of the UK data protection regime, including provisions around scientific research, statistical purposes, automated decision-making, and safeguards for research/archiving/statistical processing.

This is not a legal opinion. It is a working precis for SAFETY.md alignment work.

## Most directly relevant healthcare provisions

### Section 121 and Schedule 15 — information standards for health and adult social care in England

Section 121 introduces Schedule 15, which amends Chapter 1 of Part 9 of the Health and Social Care Act 2012.

Key effects for health IT and SAFETY.md:

- Information standards may expressly include standards relating to **information technology or IT services** used, or intended to be used, in connection with processing information for health care or adult social care in or in relation to England.
- The Act defines `information technology` broadly, including computers, devices, accessories, equipment, software, code, networks, and physical or virtual infrastructure.
- The Act defines `IT service` broadly, including services connected with the development, making available, operation, or maintenance of information technology.
- It introduces the concept of a `relevant IT provider`: a person involved in marketing, supplying, providing, or otherwise making available IT, an IT service, or a processing service using IT, where used or intended to be used for health care or adult social care in or in relation to England.
- Information standards relating to IT or IT services may cover design, quality, capabilities, contracts or other supply arrangements, functionality, connectivity, interoperability, portability, storage/access to information, and information security.
- Standards may refer to open or proprietary standards.
- The Secretary of State may issue notices requesting compliance by relevant IT providers where there are reasonable grounds to suspect non-compliance with an applicable information standard.
- The Secretary of State may publicly censure relevant IT providers suspected of non-compliance, subject to representations and data protection constraints.
- Regulations may establish accreditation schemes for health and adult social care IT and IT services, with criteria potentially set by reference to information standards.

Potential SAFETY.md implications:

- SAFETY.md should avoid describing DCB0129/DCB0160 only as advisory professional process documents. They sit within a wider statutory information-standards environment that may increasingly reach software/code, IT services, interoperability, security, and supplier behaviour.
- The specification may need a clear distinction between:
  - clinical safety documentation conventions;
  - statutory information standards;
  - accreditation or conformance schemes;
  - supplier/deployer responsibilities.
- Future SAFETY.md tooling could support evidence packs for compliance with information standards, not only clinical risk management artefacts.

Sources:

- Section 121: https://www.legislation.gov.uk/ukpga/2025/18/section/121/enacted
- Schedule 15: https://www.legislation.gov.uk/ukpga/2025/18/schedule/15/enacted

## Data protection and healthcare data-use provisions to watch

These provisions are not specific only to healthcare, but may affect health and care software, clinical research, audit, analytics, machine learning, decision support, and secondary-use data workflows.

### Section 67 — meaning of research and statistical purposes

Section 67 amends Article 4 of the UK GDPR to define references to scientific research, historical research, and statistical purposes.

Points likely to matter in health contexts:

- Scientific research includes any research reasonably described as scientific, whether publicly or privately funded and whether commercial or non-commercial.
- It can include technological development, demonstration, fundamental research, or applied research, where reasonably described as scientific.
- Public health studies are included only where the study is conducted in the public interest.
- Statistical purposes require outputs to be aggregate data that is not personal data, and the controller must not use the personal data or resulting information to support measures or decisions about the particular data subject.

Source: https://www.legislation.gov.uk/ukpga/2025/18/section/67/enacted

### Section 86 — safeguards for research, archiving, and statistical processing

Section 86 inserts a new UK GDPR Chapter 8A on safeguards for research, archiving, and statistical purposes.

Points likely to matter in health contexts:

- Processing for research, archiving, or statistical purposes must meet additional requirements and be subject to appropriate safeguards for data-subject rights and freedoms.
- Safeguards are not satisfied if processing is likely to cause substantial damage or substantial distress.
- Processing must not be used for measures or decisions about a particular data subject, except where the purposes include approved medical research.
- Safeguards must include technical and organisational measures supporting data minimisation, such as pseudonymisation.
- `Approved medical research` includes research approved by recognised Health Research Authority research ethics committees or other specified bodies, including relevant NHS bodies and UKRI/Research Council-related routes.

Source: https://www.legislation.gov.uk/ukpga/2025/18/section/86/enacted

## Working questions for SAFETY.md

- Should SAFETY.md include an optional `data-use` or `information-governance` section, or should that remain outside the clinical safety file set?
- Should a future `SAFETY.md` schema record whether a system is subject to an NHS information standard beyond DCB0129/DCB0160?
- Should `SAFETY.md` explicitly capture supplier/deployer roles where a `relevant IT provider` and a deploying health/care organisation both have obligations?
- Should hazard logs include hazards arising from secondary use of data, interoperability, portability, or information-security failures where these can plausibly lead to patient harm?
- If SAFETY.md tooling later validates evidence packs, should it support information-standard evidence and accreditation artefacts separately from clinical safety case evidence?
