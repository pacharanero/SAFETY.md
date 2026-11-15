# Clinical Safety - [Product Name]

| Field | Value |
|---|---|
| Spec Version | 2.0.0-draft.2 |
| Product | [Product Name] |
| Version | [e.g. 1.0.0] |
| Standard | DCB0129 |
| Clinical Safety Officer | [CSO Full Name] ([GMC/NMC/HCPC registration number]) |
| Organisation | [Organisation Name] |
| Role | [manufacturer] |
| Safety Case Status | draft |
| Hazard Log | [HAZARD-LOG.md](./HAZARD-LOG.md) |
| Applicable Standards | [DCB0129, ...] |
| Last Reviewed | [YYYY-MM-DD] |

## Summary

[Brief narrative - what the product does, intended clinical context, and a summary of the safety approach.]

This product's clinical risk management is intended to meet [DCB0129](https://digital.nhs.uk/data-and-information/information-standards/information-standards-and-data-collections-including-extractions/publications-and-notifications/standards-and-collections/dcb0129-clinical-risk-management-its-application-in-the-manufacture-of-health-it-systems) and [DCB0160](https://digital.nhs.uk/data-and-information/information-standards/information-standards-and-data-collections-including-extractions/publications-and-notifications/standards-and-collections/dcb0160-clinical-risk-management-its-application-in-the-deployment-and-use-of-health-it-systems). This file and the associated SAFETY.md file set form the Clinical Risk Management File (CRMF) for this product. Whether the requirements are met depends on the completed work, evidence and CSO approval recorded here, not on the presence of these files.

## Documents

- [Safety Case](./SAFETY-CASE.md)
- [Hazard Log](./HAZARD-LOG.md)
- [Clinical Risk Management Plan](./SAFETY-PLAN.md)

## Role declaration

| Role | Applies? | Organisation/person | Evidence / notes |
|---|---:|---|---|
| Manufacturer | [Yes/No] | [Organisation Name] | [This file set] |
| Supplier | [Yes/No] | [Organisation Name] | |
| Deployer / health organisation | [Yes/No] | [Organisation Name] | [Deployment safety case, if any] |
| Operator | [Yes/No] | [Organisation Name] | |
| Maintainer | [Yes/No] | [Organisation Name] | |
| Relevant IT provider (DUAA 2025) | [yes / no / unclear / not-assessed] | [Organisation Name] | |

## Applicable standards and assurance domains

| Domain | Standard / framework | Applies? | Evidence location | Owner |
|---|---|---:|---|---|
| Clinical risk management — manufacture | DCB0129 | [Yes/No] | [Safety Case](./SAFETY-CASE.md) | Manufacturer CSO |
| Clinical risk management — deployment/use | DCB0160 | [Yes/No] | [Deployment safety case] | Deployer CSO |
| Medical-device risk management | ISO 14971 / UK MDR / EU MDR | [Yes/No/TBD] | [MDR/ISO evidence] | Regulatory owner |
| Health/care information standards | HSC Act 2012 Part 9 as amended | [Yes/No/TBD] | [Evidence pack] | Responsible owner |

---

## Clinical Risk Management System

### Document Management

#### Revision History

This document is versioned in Git. The commit history of this repository is the authoritative revision history. Refer to the repository's releases and tags for a history of approved versions.

#### Reviewers and Process

This document must be reviewed by the Clinical Safety Officer and any other nominated clinical reviewers. The review mechanism is via Pull Request on GitHub, with opportunity for reviewers to comment on and amend the text before approval.

#### Approvers and Process

This document must be approved by:

- [CSO Full Name], Clinical Safety Officer, [Organisation Name]

Following satisfactory review, the nominated approver merges the pull request into the main branch. The current approved version is always on the default branch.

#### Related Documents

- [DCB0129 standard](https://digital.nhs.uk/data-and-information/information-standards/information-standards-and-data-collections-including-extractions/publications-and-notifications/standards-and-collections/dcb0129-clinical-risk-management-its-application-in-the-manufacture-of-health-it-systems)
- [DCB0160 standard](https://digital.nhs.uk/data-and-information/information-standards/information-standards-and-data-collections-including-extractions/publications-and-notifications/standards-and-collections/dcb0160-clinical-risk-management-its-application-in-the-deployment-and-use-of-health-it-systems)

### Introduction

This Clinical Risk Management System (CRMS) outlines the processes to be followed to ensure that all healthcare IT used to support care within the organisation is developed, implemented, and used in a safe manner.

This CRMS provides a framework that promotes effective risk management, by the organisation, of potential health IT hazards and operational incidents.

This CRMS addresses the requirements of DCB0129 and DCB0160 and follows best practice in clinical safety, development practice, security, and transparency.

This CRMS will be reviewed and maintained in accordance with [Organisation Name] policies.

---

## Clinical Risk Management Plan

### Purpose

The aim of the Clinical Risk Management Plan is to ensure that all staff involved with the development, implementation, and use of this Healthcare IT system are aware of the activities required to be undertaken to ensure patient safety is improved rather than compromised by its introduction.

[Organisation Name] is required to adhere to National Information Standards created and monitored via the Data Coordination Board (DCB) within NHS Information Standards frameworks.

This Clinical Risk Management Plan will be reviewed periodically to ensure that:

- changes in working practices are incorporated
- issues identified through the internal audit programme are addressed
- the safety approach continues to adhere to the requirements of applicable standards
- the system continues to protect the safety of patients in a complex and changing environment

### Audience

This document is for staff involved in ensuring the safety of [Organisation Name]'s Healthcare IT systems, products, or services. It is made publicly available as part of our commitment to transparency and open governance.

### Scope

This policy applies to [Organisation Name] and to all of its IT systems within scope. The policy also applies to any local customisations, upgrades, or specific configurations made to a Healthcare IT system.

If clarification is required as to whether any system falls within scope, this should be raised with the nominated Clinical Safety Officer (CSO). The CSO provides clinical and organisational leadership on Healthcare IT patient safety on behalf of the organisation.

### Definitions

**CSO:** Clinical Safety Officer - the person responsible for ensuring that the Healthcare IT Clinical Risk Management System is applied to all clinical systems. The CSO must hold a current registration with an appropriate professional body relevant to their training and experience, and must be suitably trained and qualified in risk management or have an understanding of the principles of risk and safety as applied to Healthcare IT systems.

**DCB:** Data Coordination Board

**CRM:** Clinical Risk Management

**CRMF:** Clinical Risk Management File

**CRMP:** Clinical Risk Management Plan

**HL:** Hazard Log

**CSC:** Clinical Safety Case

**CSCR:** Clinical Safety Case Report

### CRM Governance Arrangements

The responsibility for Healthcare IT CRM within the organisation resides with the Clinical Safety Officer.

Organisational management of Healthcare IT related risks is as per the existing management arrangements specified in the organisation's Risk Management Strategy.

#### Clinical Risk Management Team

**Clinical Safety Officer**

- Name: [CSO Full Name]
- Contact: [cso@example.com]
- Registration: [GMC/NMC/HCPC number]

#### Chief Executive Officer

- Name: [CEO Full Name]
- Contact: [ceo@example.com]

### Governance

Governance for patient safety within the organisation is provided through the following mechanisms:

#### Clinical Risk Meetings

[Describe frequency and format of clinical risk review meetings - e.g. quarterly Clinical Safety Review meetings attended by the CSO and relevant clinical and technical staff.]

#### Issue Tracking

All clinical safety issues are tracked as GitHub Issues in this repository, labelled and linked to the Hazard Log. Issues are reviewed at Clinical Risk Meetings and assigned to responsible owners for resolution.

---

## Clinical Risk Management Deliverables

### Clinical Risk Management File (this repository)

[Organisation Name] maintains a Clinical Risk Management File (CRMF) for each safety-related Healthcare IT system. The purpose of the CRMF is to provide a central repository where all safety-related information pertaining to the Healthcare IT system is stored and controlled. This Git repository is the CRMF.

### Clinical Risk Management Plan (this document)

[Organisation Name] maintains a Clinical Risk Management Plan (CRMP) for each safety-related Healthcare IT system. The purpose of the CRMP is to identify the clinical risk management activities to be undertaken and the phasing of these activities throughout the project lifecycle.

### Hazard Log

[Organisation Name] maintains a Hazard Log (HL) for each safety-related Healthcare IT system. The HL is controlled and configured in accordance with this repository's version control policy. See [HAZARD-LOG.md](./HAZARD-LOG.md).

### Clinical Safety Case

[Organisation Name] develops a Clinical Safety Case (CSC) for each safety-related Healthcare IT system. See [SAFETY-CASE.md](./SAFETY-CASE.md).

### Clinical Safety Case Report

[Organisation Name] issues a Clinical Safety Case Report (CSCR) to support initial deployment, updated during the lifecycle of the Healthcare IT system should its safety characteristics change.

---

## Clinical Risk Management Activities

### Hazard Identification

[Organisation Name] conducts hazard identification workshops to identify potential hazards associated with the deployment and use of this Healthcare IT system. The Clinical Safety Officer is responsible for facilitating such workshops and ensuring attendance from relevant staff. Typically, representatives from the following domains are required:

- Technical testing team
- User research and User Experience team
- Clinical testing team
- Project Board

Workshop minutes are stored in this Clinical Risk Management File (repository).

If a Healthcare IT solution is deemed not to be safety-related, this decision will be formally recorded.

Where any third-party components are used to support the Healthcare IT system, they will be considered in scope for hazard identification activities. Where none are used, a positive declaration to this effect will be recorded in the workshop minutes.

All identified hazards are recorded in the Hazard Log.

### Risk Assessment

[Organisation Name] conducts Healthcare IT system risk assessment in accordance with the Risk Management Strategy. The Hazard Log is updated to capture the risk assessment.

The risk scheme used is [the DCB0129 Implementation Guidance example scheme (Tables 7–10), declared as `risk-scheme: dcb0129-ig-example` in the Hazard Log / describe the organisation's own scheme]. DCB0129 does not prescribe a scheme; the choice and the acceptability criteria below are decisions for [Organisation Name], approved by the CSO.

### Risk Evaluation

[Organisation Name] conducts Healthcare IT system risk evaluation in accordance with the Risk Management Strategy. The Hazard Log is updated to capture the risk evaluation.

Initial and residual clinical risks are evaluated against these risk acceptability criteria: [state them, e.g. under the example scheme: classes 4–5 unacceptable; class 3 undesirable, acceptable only where further risk reduction is impractical; class 2 acceptable where the cost of further reduction outweighs the benefit or further reduction is impractical; class 1 acceptable].

### Risk Control

Where the initial risk evaluation is deemed unacceptable, further risk controls will be required. [Organisation Name] manages Healthcare IT system risk in accordance with the Risk Management Strategy.

Details of the risk control measure and evidence of effective implementation are captured in the Hazard Log.

### Deployment and Ongoing Maintenance

To support clinical safety activities undertaken during any deployment phases, the following documentation is required as part of the overall approval process:

- Current approved SAFETY.md and associated file set
- Hazard Log with all hazards at an acceptable risk level, or with accepted residual risk documented
- Clinical Safety Case Report signed off by the CSO

### Incident Management

Clinical Risk Management activities are completed within the corporate risk management strategy. Clinical safety-related incidents are dealt with in a similar manner to other incidents within the organisation.

#### Safety Incident Management Process

[Describe the process for reporting and managing clinical safety incidents - e.g. immediate escalation to CSO, incident log created in GitHub Issues, root cause analysis, Hazard Log updated if a new hazard is identified.]

#### Security Incident Management Process

Security issues may be responsibly disclosed to [[security-email@example.com](mailto:security-email@example.com)] for immediate action. We recognise and respect the essential work of security researchers and will treat contributions with gratitude and appropriate action.

Internally, security issues are treated with the highest priority. Once the acute phase of any security threat is handled, we follow the Safety Incident Management Process, converting to a public GitHub Issue where appropriate.

---

## Clinical Safety Competence and Training

### Overview

Clinical safety activities described in this Clinical Risk Management System shall be undertaken by competent staff. Suitable training shall be undertaken by staff to maintain and expand their level of competence.

### Competency

All staff identified in the organisation chart shall be sufficiently competent for the roles and tasks they are asked to undertake. Where an individual does not yet have sufficient experience or knowledge, their work shall be reviewed by someone who has the necessary competence, until it is judged that the individual has amassed the necessary experience to undertake such tasks unsupervised.

Primary functional roles include:

- Conducting discrete safety analyses (e.g. HAZOP or FFA) and defining Hazard Risk Indicators for a project
- Making valid judgements on the safety tasks, activities, and techniques required for a given Health Software Product
- Assurance of safety assessments and Healthcare IT software products (must be independent from safety assessment activities)
- Improving and refining the overall Clinical Risk Management System (audit, process change, quality)
- Ownership and leadership (ultimate safety accountability, culture, strategic direction)

All registered clinicians involved in safety roles shall, as a minimum, have completed an accredited training course.

### Training

As part of the employment process and thereafter through the appraisal scheme, clinical safety personnel undergo suitable training to develop, maintain, or enhance their competency. Such training may include:

- On the job training conducted under supervision
- Internal training courses
- Approved external training courses

All registered clinicians involved in clinical safety roles shall, as a minimum, have completed an accredited training course. Completion of any safety training is recorded on the annual appraisal form.

---

## Audits

### Overview

Audits shall be undertaken to ensure that projects are adhering to the defined safety requirements, focusing on the Clinical Safety Team and third-party suppliers.

### Internal Safety Audits

[Organisation Name] shall undertake regular internal safety audits to ensure that projects are compliant with this Clinical Risk Management System. These audits shall be conducted and recorded in accordance with the internal quality management procedure.

The scope of an internal safety audit will be this Clinical Risk Management System and the documentation supporting it.

### Supplier Audits

[Organisation Name] shall undertake regular third-party supplier audits, as a minimum annually, to ensure compliance with their Clinical Risk Management System. The audit shall focus on the Clinical Risk Management System, the evidence demonstrating its effective operation, and any issues arising from the deployment of the Healthcare IT products and services. The basis for the audit shall be DCB0129.

---

## Security

Security is taken seriously by this project. We comply with the [Data Security and Protection Toolkit (DSPT)](https://digital.nhs.uk/about-nhs-digital/our-work/nhs-digital-data-and-technology-standards/framework/beta---data-security-standards) as part of NHS Digital Data Security Standards.

### Deployment Security

To maintain security and safety while enabling agile software development practices, we maintain a DevOps strategy consistent with industry best practice. These practices ensure tight security of the code chain from writing code on individual development machines through to deployment on the live server.

#### Development Machines

- Development machines are password-protected and have full-disk encryption
- Development machines are maintained with the latest operating system patches and security updates
- All SSH keys are protected by a passphrase

#### Source Control

- Pushes of new code to the repository are authenticated using SSH keys
- Git commits are signed using GPG to attest to the identity of the committer

#### Deployments

- Deployment is fully automated; no code can be manually added to the production environment outside of the automated pipeline
- Security keys are long cryptographic tokens, never made public
- GitHub Actions authenticate to the cloud platform using these keys to push code from the repository to the deployment target

#### Code Promotion Strategy

- New code is never deployed directly to the `main`/`live` branch
- Features are developed on `development` or feature branches
- From `development` or feature branches, code is promoted following successful test runs to a `staging` branch for further testing
- Once user acceptance and stability tests are satisfactorily passed, code is merged into the `main`/`live` branch

### Cyber Essentials

[Insert Cyber Essentials certificate details if available, or note if not applicable.]

---

## Clinical Safety Case Report

[This section should be completed by the Clinical Safety Officer as part of the initial deployment and updated throughout the lifecycle of the product.]

Placeholder - to be completed.

---

## Contact

For clinical safety enquiries relating to this product, please contact:

**Clinical Safety Officer:** [CSO Full Name]
**Email:** [cso@example.com]

**Organisation:** [Organisation Name]
**General Enquiries:** [contact@example.com]

---

## Licence

The clinical safety documentation in this repository is licensed under [Creative Commons Attribution-ShareAlike 4.0 International (CC-BY-SA-4.0)](https://creativecommons.org/licenses/by-sa/4.0/).

The licensing for this repository is described in [LICENSE.md](./LICENSE.md).

Attribution: This Clinical Safety Management File is derived in part from templates produced by the NHS Digital Clinical Safety team and from the DCB0129 Clinical Safety Management File template by Dr Marcus Baw / Baw Medical Ltd, available at https://github.com/pacharanero/dcb0129-template.
