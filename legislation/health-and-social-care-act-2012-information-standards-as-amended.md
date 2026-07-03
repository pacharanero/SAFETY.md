# Health and Social Care Act 2012 information standards — practical reconstruction after the Data (Use and Access) Act 2025

> Working note, not legal advice. Source material accessed 2026-07-03.

## Why this reconstruction exists

The Data (Use and Access) Act 2025 amends the Health and Social Care Act 2012 rather than restating it as a clean, readable text. The raw Act therefore reads like a patch file.

This note reconstructs the practical effect of the parts most relevant to SAFETY.md: information standards for health and adult social care in England, especially where those standards apply to software, code, IT services, interoperability, information security, and supplier/deployer behaviour.

## Source material

| Source | URL |
|---|---|
| Data (Use and Access) Act 2025, c. 18 — contents | https://www.legislation.gov.uk/ukpga/2025/18/contents/enacted |
| Section 121 — Information standards for health and adult social care in England | https://www.legislation.gov.uk/ukpga/2025/18/section/121/enacted |
| Schedule 15 — Information standards for health and adult social care in England | https://www.legislation.gov.uk/ukpga/2025/18/schedule/15/enacted |
| Parliament Bill page | https://bills.parliament.uk/bills/3825 |

## Short version

The 2025 Act appears to strengthen the statutory footing for health and adult social care information standards in England by making explicit that such standards can apply to IT, software, code, IT services, interoperability, storage/access to information, portability, and information security.

It also creates a clearer route for applying information standards to relevant IT providers, requesting evidence of compliance, publicising suspected non-compliance, delegating monitoring/compliance functions, and creating accreditation schemes for health/care IT and IT services.

For SAFETY.md, this matters because clinical safety evidence is likely to sit alongside, and sometimes overlap with, broader statutory evidence about health IT standards, supplier obligations, interoperability, data access, and safe operation.

## What the amended legal framework appears to do

### 1. Information standards can explicitly include IT and IT services

The Health and Social Care Act 2012 already provided for publication of information standards for health and adult social care. The 2025 Act amends that framework to make clear that an information standard can include a standard relating to:

- information technology;
- IT services;
- technology or services used, or intended to be used, in connection with processing information for health care or adult social care in or in relation to England.

This is important because standards are no longer framed only around data formats, collections, records, or abstract information handling. They can expressly address the technology and services used to process information.

### 2. `Information technology` is defined broadly

The amended framework defines information technology broadly. It includes:

- computers;
- other devices whose uses include electronic processing of information;
- parts, accessories, and equipment made or adapted for use with computers or such devices;
- software and code;
- networks and other physical or virtual infrastructure used with other information technology.

Practical effect: standards can plausibly reach far beyond data schemas. They may touch application software, infrastructure, APIs, connected devices, network services, and cloud-hosted components where used in connection with health/care information processing.

### 3. `IT service` is defined broadly

The amended framework defines an IT service as an information technology service, including services that consist of, or are provided in connection with:

- development of information technology;
- making information technology available;
- operation of information technology;
- maintenance of information technology.

Practical effect: outsourced development, SaaS provision, managed services, hosting, support, and maintenance models may fall within scope where connected to health or adult social care information processing.

### 4. A `relevant IT provider` can be within scope

The Act introduces `relevant IT provider`, meaning a person involved in marketing, supplying, providing, or otherwise making available:

- information technology;
- an IT service; or
- a service that consists of processing information using information technology;

where the technology or service is used, or intended to be used, in connection with health care or adult social care in or in relation to England.

This can apply whether the technology/service is provided for payment or free of charge.

Practical effect: the framework can reach suppliers and providers, not only NHS or care organisations that deploy systems.

### 5. Standards may cover technical and contractual characteristics

An information standard relating to IT or IT services may make provision about:

- design;
- quality;
- capabilities;
- other characteristics of technology or services;
- contracts or other arrangements under which technology or services are marketed, supplied, provided, or made available.

It may also include technical provision about:

- functionality;
- connectivity;
- interoperability;
- portability;
- storage of information;
- access to information;
- security of information.

Practical effect: health/care information standards may increasingly resemble software/service conformance standards, not just documentation requirements.

### 6. Standards may reference open or proprietary standards

The amended framework allows an information standard to make provision by reference to open standards or proprietary standards.

Practical effect: a future health/care information standard could potentially require or incorporate specific external technical standards, including versioned standards maintained outside government.

### 7. Standards can adopt or refer to other documents as they change

The amendments allow the relevant power to be exercised by:

- adopting an information standard prepared or published by another person, including as it has effect from time to time; or
- making provision by reference to an international agreement or another document, including as it has effect from time to time.

Practical effect: compliance obligations may depend on external documents that evolve. Evidence systems need to track which version/effective date applies.

### 8. Compliance by relevant IT providers can be requested

Where the Secretary of State has reasonable grounds to suspect that a relevant IT provider is not complying with an applicable information standard, the Secretary of State may issue a written notice that:

- identifies the standard;
- sets out grounds for suspecting non-compliance;
- asks the provider to comply within a specified period;
- asks the provider to provide satisfactory evidence of compliance within a specified period;
- may specify steps considered necessary for compliance.

The specified period must be at least 28 days from the date of the notice.

Practical effect: providers may need to produce evidence packs quickly. Repository-native evidence, version-controlled documentation, release tags, safety files, test evidence, and conformance artefacts become operationally valuable.

### 9. Suspected non-compliance can be publicly censured

The Secretary of State may publish a statement where there are reasonable grounds to suspect that a relevant IT provider is not complying with an applicable information standard. The statement may include the text of a compliance notice.

Before publication, the provider must be given:

- the proposed statement; and
- an opportunity to make representations.

Practical effect: compliance evidence is reputationally important, not only contractually or internally important.

### 10. Monitoring/compliance functions can be delegated

The Secretary of State may direct public bodies, or make arrangements with prescribed persons, to exercise some monitoring or compliance-request functions relating to relevant IT providers.

Practical effect: day-to-day oversight may be carried out by bodies other than the Secretary of State directly. Suppliers may interact with NHS England, arm's-length bodies, regulators, or appointed operators depending on future regulations/directions.

### 11. Accreditation schemes can be established

Regulations may establish accreditation schemes for information technology and IT services used, or intended to be used, in connection with health care or adult social care in or in relation to England.

Such schemes may include:

- an operator;
- application procedures;
- accreditation criteria;
- review of accreditation;
- reasonable application fees;
- published criteria;
- review of refusal decisions;
- advice to applicants.

Criteria may be set by reference to information standards.

Practical effect: future SAFETY.md evidence may need to coexist with accreditation evidence, and in some cases may become useful input to accreditation.

## Relevance to DCB0129 and DCB0160

DCB0129 and DCB0160 are information standards concerned with clinical risk management for health IT. The 2025 Act does not, by itself, rewrite those standards. However, it strengthens the surrounding statutory machinery for information standards that apply to IT and IT services.

For SAFETY.md this suggests:

- be careful not to describe SAFETY.md as a replacement for statutory standards;
- present SAFETY.md as a repository-native implementation and evidence convention;
- explicitly distinguish manufacturer/supplier obligations from deployment/use obligations;
- keep mappings to DCB0129 and DCB0160 current;
- design schemas/templates so they can support evidence for wider information standards if needed.

## Suggested SAFETY.md language

Possible careful wording:

> SAFETY.md is a repository-native convention for organising clinical safety documentation and evidence. It does not replace statutory information standards such as DCB0129 or DCB0160. Instead, it provides a practical implementation pattern for maintaining, reviewing, and version-controlling the artefacts that may be used to evidence clinical risk management and related conformance activities.

## Open questions for future work

- Should SAFETY.md include fields for applicable information standards beyond DCB0129/DCB0160?
- Should the standard define an `evidence-pack` convention for supplier compliance requests?
- Should release tags represent configuration items for both clinical safety and information-standard conformance?
- Should the hazard log explicitly flag hazards related to interoperability, portability, access to information, and security of information?
- Should SAFETY.md define separate supplier-side and deployer-side profiles?
