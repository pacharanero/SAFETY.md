# Glossary

This glossary exists to keep SAFETY.md terminology consistent with upstream clinical safety standards and relevant UK health/care legislation.

It is not a substitute for the source standards or legislation. Where a term is defined by DCB0129, DCB0160, or legislation, the upstream source remains authoritative.

## Term status labels

| Label | Meaning |
|---|---|
| Upstream standard term | Defined or used in DCB0129/DCB0160 or associated NHS England/NHS Digital source material. |
| Legislative term | Defined or materially used in legislation, including the Data (Use and Access) Act 2025 or the Health and Social Care Act 2012 as amended. |
| SAFETY.md convention | A term used by this project to describe repository-native clinical safety practices. |
| Working term | Useful project wording that should be checked against upstream terminology before becoming normative. |

## Core clinical safety terms

### Clinical risk

**Status:** Upstream standard term.

Combination of the severity of harm to a patient and the likelihood of occurrence of that harm.

In SAFETY.md work, clinical risk should normally be tied to one or more hazards, controls, residual risks, and evidence.

### Clinical risk management

**Status:** Upstream standard term.

The systematic application of management policies, procedures, and practices to analysing, evaluating, controlling, and monitoring clinical risk.

SAFETY.md aims to make clinical risk management easier to perform in normal software-development workflows, not to replace the underlying clinical safety obligations.

### Clinical Risk Management File (CRMF)

**Status:** Upstream standard term.

The repository of records and documents produced by the clinical risk management process.

SAFETY.md convention: for software projects, the Git repository may act as the CRMF, provided it contains or links to the relevant safety documents, hazard log, evidence, approvals, and release/configuration history.

### Clinical Risk Management Plan (CRMP)

**Status:** Upstream standard term.

A plan describing how clinical risk management will be conducted for a health IT system.

In SAFETY.md, this may be represented by `SAFETY-PLAN.md` or a clearly identified section of the safety case for lower-risk projects.

### Clinical Safety Case (CSC)

**Status:** Upstream standard term.

The structured argument, supported by evidence, that a health IT system is acceptably safe for its intended use and context.

In SAFETY.md, this is normally represented by `SAFETY-CASE.md`.

### Clinical Safety Case Report (CSCR)

**Status:** Upstream standard term.

A report presenting the safety argument and supporting evidence for a particular system, release, deployment, or configuration.

SAFETY.md should make it possible to produce a CSCR or equivalent evidence pack from repository-native materials.

### Clinical Safety Officer (CSO)

**Status:** Upstream standard term.

The person responsible for clinical safety leadership and for ensuring that the clinical risk management process is applied appropriately.

A CSO must have suitable professional registration, training, experience, and authority for the context in which they are acting. SAFETY.md does not diminish or automate away CSO responsibility.

### Hazard

**Status:** Upstream standard term.

A potential source of harm to a patient.

In SAFETY.md, hazards should be recorded in a hazard log, with clear identifiers, causes, effects, controls, initial risk, residual risk, ownership, review status, and evidence links.

### Harm

**Status:** Upstream standard term.

Death, physical injury, psychological trauma, or damage to the health or well-being of a patient.

### Hazard Log

**Status:** Upstream standard term.

A mechanism for recording and communicating the ongoing identification, analysis, control, review, and resolution of hazards associated with a health IT system.

SAFETY.md convention: the hazard log may be a Markdown file, structured data, GitHub Issues, or another repository-native mechanism, provided it is auditable, reviewable, and exportable.

### Initial risk

**Status:** Upstream standard term.

The clinical risk estimated before additional risk controls are applied, taking account of any already retained controls where applicable.

### Residual risk

**Status:** Upstream standard term.

The clinical risk remaining after risk controls have been applied.

Residual risk must be reviewed and accepted by the appropriate accountable person/body; it should not be hidden by documentation structure.

### Risk control

**Status:** Upstream standard term.

A measure or action intended to reduce, eliminate, or control clinical risk.

In software, risk controls may include product changes, UI constraints, validation, alerts, monitoring, training, operational procedures, fallback processes, or decommissioning controls.

### Safety argument

**Status:** Upstream standard term / SAFETY.md convention.

The reasoned argument that the system is acceptably safe for its intended use, supported by evidence.

SAFETY.md encourages safety arguments that are close to the code, traceable to hazards and controls, and reviewable through normal repository workflows.

## Systems, roles, and lifecycle

### Health IT System

**Status:** Upstream standard term.

A product used to provide electronic information for health or social care purposes. It may include hardware, software, or a combination.

### Manufacturer

**Status:** Upstream standard term.

The person or organisation responsible for design, manufacture, packaging, labelling, assembly, adaptation, or placing into service of a health IT system, depending on the applicable standard/context.

For SAFETY.md, the manufacturer/supplier-side role is normally associated with DCB0129 evidence.

### Health organisation / deploying organisation

**Status:** Upstream standard term / working term.

The organisation deploying, using, maintaining, or decommissioning a health IT system in a care context.

For SAFETY.md, the deployment/use-side role is normally associated with DCB0160 evidence.

### Deployment

**Status:** Upstream standard term.

The process of putting a health IT system into use in a particular operational, clinical, technical, and organisational context.

A supplier safety case does not automatically make a local deployment safe; deployment assumptions must be checked.

### Decommissioning

**Status:** Upstream standard term.

The process of retiring, withdrawing, or replacing a system or service.

Decommissioning can create patient-safety hazards, for example through loss of access to information, incomplete migration, unsafe fallback processes, or unclear accountability.

### Intended use

**Status:** Upstream standard term.

The use of a product, process, or service in accordance with the specifications, instructions, and information provided by the manufacturer.

SAFETY.md documents should be explicit about intended use, excluded use, intended users, patient population, clinical setting, and deployment assumptions.

### Configuration item

**Status:** Upstream standard term / SAFETY.md convention.

A specific identified version or configuration of a system or documentation set.

SAFETY.md convention: Git tags, releases, commit SHAs, build artefacts, and signed approvals can help identify the configuration item to which a safety case applies.

## Standards and regulatory context

### DCB0129

**Status:** Upstream standard term.

NHS clinical risk management standard for the manufacture of health IT systems.

SAFETY.md does not replace DCB0129. It provides a repository-native way to organise evidence and documentation that may support DCB0129 compliance.

### DCB0160

**Status:** Upstream standard term.

NHS clinical risk management standard for the deployment and use of health IT systems.

SAFETY.md does not replace DCB0160. It can help deploying organisations manage, review, and evidence clinical safety work close to the relevant system configuration.

### Information standard

**Status:** Upstream standard term / legislative term.

A standard published under the relevant health and social care information-standards framework.

Following the Data (Use and Access) Act 2025, the framework explicitly supports standards relating to information technology and IT services used, or intended to be used, in connection with health care or adult social care in or in relation to England.

### DTAC

**Status:** Working term / external assurance framework.

Digital Technology Assessment Criteria: an NHS assessment framework for digital health technologies.

SAFETY.md may help provide evidence relevant to DTAC clinical safety requirements, but use of SAFETY.md does not itself establish DTAC compliance.

### Medical device software / SaMD

**Status:** Regulatory term / working term.

Software may be regulated as a medical device or software as a medical device depending on intended purpose, claims, functionality, and applicable law/regulation.

SAFETY.md does not determine medical-device status. Where medical-device regulation applies, SAFETY.md documentation should be aligned with, not substituted for, the applicable regulatory evidence.

## Data (Use and Access) Act 2025 and amended information-standards framework

### Data (Use and Access) Act 2025 (DUAA2025)

**Status:** Legislative term.

UK legislation that, among other things, amends the framework for information standards for health and adult social care in England and changes aspects of data protection law.

For SAFETY.md, the most relevant provisions are those that clarify that information standards can apply to health/care IT, software, code, IT services, interoperability, portability, storage/access to information, and information security.

### Relevant IT provider

**Status:** Legislative term.

A person involved in marketing, supplying, providing, or otherwise making available information technology, an IT service, or a service that processes information using IT, where the technology or service is used or intended to be used in connection with health care or adult social care in or in relation to England.

This concept matters because relevant IT providers may be asked to evidence compliance with applicable information standards.

### Information technology

**Status:** Legislative term.

For the amended health/care information-standards framework, information technology includes computers, devices used for electronic information processing, equipment and accessories, software and code, networks, and physical or virtual infrastructure.

### IT service

**Status:** Legislative term.

An information technology service, including services connected with the development, making available, operation, or maintenance of information technology.

### Accreditation scheme

**Status:** Legislative term / working term.

DUAA2025 enables regulations to establish accreditation schemes for information technology and IT services used, or intended to be used, in connection with health care or adult social care in or in relation to England.

SAFETY.md should be able to support, but not conflate itself with, accreditation evidence.

### Compliance evidence

**Status:** SAFETY.md convention / legislative-context term.

Evidence that a product, service, organisation, or deployment complies with an applicable standard.

SAFETY.md convention: compliance evidence should be version-controlled, traceable, reviewable, linked to releases/configuration items, and exportable.

### Evidence pack

**Status:** SAFETY.md convention.

A coherent collection of documents, links, records, approvals, hazard logs, safety arguments, test results, and release/configuration identifiers that can be provided to reviewers, deploying organisations, auditors, regulators, or standards bodies.

The evidence pack concept is intended to reduce administrative friction and make it easier to focus on meaningful hazard mitigation.

## Repository-native safety terms

### SAFETY.md

**Status:** SAFETY.md convention.

A root-level Markdown file that acts as the front door to a software project's clinical safety documentation.

It is intended to sit close to the code, alongside familiar repository files such as `README.md`, `LICENSE`, `SECURITY.md`, and `CONTRIBUTING.md`.

### Safety close to code

**Status:** SAFETY.md convention.

The principle that clinical safety documentation, hazard evidence, release/configuration history, and mitigations should live as close as practical to the software they describe.

This supports traceability between hazards, code changes, tests, releases, incidents, and approvals.

### Repository-native document control

**Status:** SAFETY.md convention.

Using Git and repository workflows to implement document control through commits, branches, tags, pull requests, reviews, approvals, releases, and immutable history.

This is intended to implement the aims of document control, not to avoid document control.

### Hazard issue

**Status:** SAFETY.md convention.

A GitHub/GitLab/issue-tracker issue used as an individual hazard record.

A hazard issue should have enough structured metadata and discussion history to support review, mitigation, residual risk acceptance, and export into a hazard log or evidence pack.

### Applicable standards and assurance domains

**Status:** SAFETY.md convention.

A section or register listing the standards/frameworks relevant to a product or deployment and identifying owners/evidence for each.

Typical domains include clinical risk management, deployment safety, interoperability, information security, data protection, accessibility, medical-device regulation, and information standards.

## Terms to use carefully

### Compliant / compliance

Do not say a project is “compliant” merely because it uses a template or contains a `SAFETY.md` file.

Prefer:

- “intended to support evidence of compliance”;
- “structured to align with DCB0129/DCB0160”;
- “pending CSO review/sign-off”;
- “approved for release/deployment on [date] by [CSO/body]”.

### NHS Digital / NHS England / DHSC

Use historical names when referring to historical source documents. Use current organisation names when referring to current publication/ownership, but keep these easy to update as organisational arrangements change.

Avoid present-tense references to NHSX.

### Manufacturer vs deployer

Do not blur these roles.

A manufacturer/supplier safety case does not automatically satisfy local deployment/use obligations. A deploying organisation must consider local workflows, users, integrations, configuration, fallback arrangements, operational risks, and residual risk acceptance.

### Documentation vs safety work

SAFETY.md is not about producing documents for their own sake. Documentation is valuable where it records, supports, communicates, or evidences real safety work.

The intended emphasis is: less bland documentation, more useful hazard thinking, better mitigations, safer software.
