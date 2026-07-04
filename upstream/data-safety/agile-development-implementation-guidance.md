# Clinical Risk Management - Agile Development Implementation Guidance

> **Status:** first-pass Markdown extraction from upstream PDF. Source provenance requires confirmation before this file can be treated as canonical.

| Field | Value |
|---|---|
| Local upstream file | [`resources/data-safety/Clinical+Risk+Management+-+Agile+Development+Implementation+Guidance.pdf`](../../resources/data-safety/Clinical+Risk+Management+-+Agile+Development+Implementation+Guidance.pdf) |
| Date accessed | 2026-07-03 |
| Source URL | TODO: confirm authoritative source URL |
| Extraction method | `pdftotext -layout` |
| Review status | Needs source/provenance confirmation and artefact review |

---

```text
Clinical Risk Management:
Agile Development
Implementation Guidance
DCB0129

Supporting process alignment.
Clinical Risk Management: Agile Development Implementation Guidance



Disclaimer
 Copyright © Advanced Computer Software Group Ltd 2022.

 This document contains confidential and/or proprietary information. The content
 must not be disclosed to third parties without the prior written approval of
 Advanced Computer Software Group Limited or one of its subsidiaries as
 appropriate (each referred to as “Advanced”). External recipients may only use
 the information contained in this document for the purposes of evaluation of the
 information and entering into discussions with Advanced and for no other
 purpose.

 Whilst Advanced endeavours to ensure that the information in this document is
 correct and has been prepared in good faith, the information is subject to
 change, and no representation or warranty is given as to the accuracy or
 completeness of the information. Advanced does not accept any responsibility or
 liability for errors or omissions or any liability arising out of its use by external
 recipients or other third parties.

 No information set out or referred to in this document shall form the basis of
 any contract with an external recipient. Any external recipient requiring the
 provision of software and/or services shall be required to enter into an
 agreement with Advanced detailing the terms applicable to the supply of such
 software and/or services and acknowledging that it has not relied on or been
 induced to enter into such an agreement by any representation or warranty,
 save as expressly set out in such agreement.

 The software (if any) described in this document is supplied under licence and
 may be used or copied only in accordance with the terms of such a licence.
 Issue of this document does not entitle an external recipient to access or use
 the software described or to be granted such a licence.

 The development of Advanced software is continuous, and the published
 information may not reflect the current status. Any particular release of the
 software may not contain all of the facilities described in this document and/or
 may contain facilities not described in this document.

 Advanced Computer Software Group Limited is a company registered in England
 and Wales with registration number 05965280 whose registered office is at
 Ditton Park, Riding Court Road, Datchet, Berkshire. SL3 9LL.

 A full list of its trading subsidiaries is available at www.oneadvanced.com/legal-
 privacy




                                          1
Clinical Risk Management: Agile Development Implementation Guidance


Document History

 Author               Role                                               Date

 Rachel Gornall       Clinical Operations Manager                        01/11/2022




Related Documents

 Ref    Doc. Reference No.     Title

 1.     DCB0129                Clinical Risk Management: its Application in the
                               Manufacture of Health IT Systems.

                               https://digital.nhs.uk/data-and-
                               information/information-standards/information-
                               standards-and-data-collections-including-
                               extractions/publications-and-notifications/standards-
                               and-collections/dcb0129-clinical-risk-management-
                               its-application-in-the-manufacture-of-health-it-
                               systems

 2.     DCB0160                Clinical Risk Management: its Application in the
                               Deployment and Use of Health IT Systems.

                               https://digital.nhs.uk/data-and-
                               information/information-standards/information-
                               standards-and-data-collections-including-
                               extractions/publications-and-notifications/standards-
                               and-collections/dcb0160-clinical-risk-management-
                               its-application-in-the-deployment-and-use-of-health-
                               it-systems

 3.     PFIT-FNT-TO-TOCLNSA-   Clinical Risk Management: its Application in the
        1300.05                Manufacture of Health Systems – Implementation
                               Guidance

 4.     PFIT-FNT-TO-TOCLNSA-   Clinical Risk Management: its Application in the
        1293.05                Deployment and Use of Health IT Systems -
                               Implementation Guidance




                                        2
Clinical Risk Management: Agile Development Implementation Guidance


Contents
1.      Introduction ..........................................................................................................4
     1.1. Background ....................................................................................................................... 4
     1.2. Audience ............................................................................................................................ 4
     1.3. Scope .................................................................................................................................. 5
     1.4. Assumptions and constraints ......................................................................................... 5
2.      Guidance ...............................................................................................................6
     2.1. Clinical Risk Management Plan ....................................................................................... 9
     2.2. Initial hazard identification and assessment ................................................................ 9
     2.3. Prioritisation and selection of user stories ................................................................. 10
     2.4. Constraints and limitations of releases ....................................................................... 11
     2.5. Delivery, monitoring and modification ........................................................................ 11




                                                                         3
Clinical Risk Management: Agile Development Implementation Guidance



1. Introduction
This document is a review of the document NPFIT-FNT-TO-TOCLNSA-1306.03
CRM Agile Development Implementation Guidance v1.1 published by NHS Digital
on 03/07/2017. It is intended to bring the documentation up-to-date, and
document effective compliance with DCB0129 for software manufacturers.


1.1.   Background

Development processes that align with the ‘Agile Manifesto’ 1 and ’Agile
Principles’2 are considered to be Agile development processes.


An Agile development continuously reviews the total functionality required
(backlog), divides it and focuses on small prioritised, manageable pieces for
development called iterations. It is not one long development cycle followed by a
testing cycle found, for example, in the Waterfall model. Instead, it is viewed as
small sets of incremental deliverables that lead to complete delivery. An
understanding of such processes is a prerequisite to this guidance. The guidance
is not intended to be an 'all-inclusive' methodology to system development or
software development lifecycle.


Agile is the current approach being taken within NHS DIGITAL however this
guidance may also be applicable to other similar development processes and
practices including Scrum, XP, Kanban and Lean.


A structured clinical risk management approach is essential to ensure that
Health IT Systems deployed in Health Organisations are as safe as design and
forethought will allow and will support clinicians to practice safely.


1.2.   Audience

The primary audience of this guidance are Manufacturers of Health IT Systems
designing, developing, and maintaining Health IT systems and seeking to
demonstrate compliance with DCB0129 [Ref. 1] when following an ‘Agile’ or
‘iterative’ development approach. It will also be of use to Health Organisations
working in partnership with Manufacturers in following an ‘Agile’ or ‘iterative’
development approach.




                                        4
Clinical Risk Management: Agile Development Implementation Guidance


1.3.   Scope

This document is designed to provide an overview of the key clinical safety
activities that are of particular importance when using an ‘Agile’ approach to
developing Health IT Systems. It is intended as a supplement to the DCB0129
Clinical Risk Management: its Application in the Manufacture of Health IT
Systems – Implementation Guidance [Ref. 3]. The activities described will assist
Manufacturers in managing, tracing and communicating safety related system
requirements in compliance to DCB0129 [Ref. 1].


1.4.   Assumptions and constraints

The following assumptions have been identified and apply to all projects using
an ‘Agile’ approach to develop Health IT Systems. The absence of any of these
assumptions should be subjected to a risk assessment and managed
appropriately and will influence project feasibility:

   •   The high-level concept or objective of the project will not change substantially to
       warrant a full reassessment during the project lifecycle
   •   Sufficient resource from stakeholders involved in development activities,
       meetings, document reviews, demonstrations to users (often called ’Show and
       Tells’) will be made available in agreed timeframes
   •   It is crucial that all stakeholders understand and accept their individual
       responsibilities to ensure the scrum or sprint planning and review meetings
       capture the clinical safety hazard assessments, goals are achieved, and lesson
       learnt
   •   Appropriate facilities and test environments will be available for development
       and any necessary ‘Show and Tell’ sessions. This may include access to external
       systems or virtual environments to simulate a live environment and remote
       access facilities.




                                            5
Clinical Risk Management: Agile Development Implementation Guidance



2. Guidance
An increasing number of Manufacturers are opting for an ‘Agile’ approach to
developing Health IT Systems. Figure 1 provides a pictorial representation of an
Agile clinical risk management process.


The adaptability and early release of skeletal functionality that is offered by this
approach may be beneficial but also raises challenges to clinical risk
management that must be addressed. Early clinical safety hazard identification
together with ongoing assessments, enables the developing product design to
avoid hazards and build in mitigations rather than add on safety controls.
Incorporating this guidance into Health IT system development lifecycles will
help demonstration of good design.


It is good practice for a Clinical Safety Officer, or a similar clinical safety
representative, to have oversight of pre-project discussions to reduce the
opportunity for clinical hazards in any future Release Scope.


A Clinical Safety Officer should be a stakeholder in the agreement of the Release
Scope. This gives another opportunity to highlight any clinical concerns. A Hazard
Workshop should be held to discuss the planned Release Scope and the output
documented for reference during the Release Development Phase.


A Clinical Safety Case File should be maintained following the agreement of the
Release Scope. This must contain any required documentation under the
DCB0129 standard, to include the Clinical Risk Management Plan, Clinical Safety
Case Report, Hazard Log, and any other evidence of clinical safety oversight.


A Clinical Risk Management Plan should be produced when a Release Scope is
agreed. This will identify key stakeholders in clinical safety management and any
variation to clinical risk management and control for the release.


During release development, a Clinical Safety Officer, or a similar clinical safety
representative, should identify and review any work which may impact clinical
safety. This may be achieved through the monitoring of User Stories in Atlassian
Jira or similar development tool, by using test systems, and by attendance at
Sprint Reviews and ‘Show and Tell’ sessions. In an Agile approach, User Stories
may be brought in or dropped from the Release Scope at any time, so it is
important all User Stories in the Development Backlog are considered for clinical
safety during Refinement sessions. This will ensure hazard control is maintained.



                                           6
Clinical Risk Management: Agile Development Implementation Guidance


A Clinical Safety Case Report should be maintained for the ongoing life of the
release. It is an iterative document that presents the arguments and supporting
evidence that a system is safe for a given application, in a given environment, at
a defined point in a Health IT System’s lifecycle. It documents potential clinical
risks which could arise from the system, its deployment and use. Within the
documentation, it is essential to differentiate between different versions of the
same product. Dependencies, and supported upgrade paths should also be
recorded (See Figure 1 upgrade path matrix).


Each updated version of this document should include details of functional
changes / related performance, a summary of all the clinical risks it contains,
instructions to ensure safe operation post deployment, shortfalls/limitations,
and an overall statement of safety compliance for the Health IT System. This
information is required to provide evidence that the overall Clinical Risk of the
product is acceptable.


A Hazard Log should be maintained for the life of the product, documenting
identified hazards and controls and providing an assessment of risk.


The Clinical Safety Case Report is up issued as part of each sprint or prior to
release. It is recommended that approval from the Manufacturer Clinical Safety
Officer is granted before commencing to deliver the Health IT system version
into general availability. Where the development is being undertaken in
consultation with a Health Organisation, then the Clinical Safety Officer from the
Health Organisation should also accept the Clinical Safety Case Report. The level
of approval for deployment will be dependent upon the clinical risk, which is
determined on a release-by-release basis.




                                         7
Clinical Risk Management: Agile Development Implementation Guidance




Figure 1: Pictorial overview of a typical Agile clinical risk management process


Each Iteration / Sprint must include all necessary test activities including Positive,
Negative and Regression testing.


The key activities listed below need special consideration in ‘Agile’ approaches
and will be explained in detail, in subsequent sections of this report:

    •    Clinical Risk Management Plan DCB0129 section 3
    •    Initial hazard identification and assessment DCB0129 section 4
    •    Prioritisation and selection of user stories DCB0129 sections 6.4 and 7
    •    Constraints and limitations of releases DCB0129 section 3
    •    Delivery, Monitoring and Modification DCB0129 section 7




                                                     8
Clinical Risk Management: Agile Development Implementation Guidance


2.1.     Clinical Risk Management Plan

                 The Manufacturer MUST produce at the start of a project a
 3.2.1           Clinical Risk Management Plan, which will include risk
                 acceptability criteria, for the new Health IT System.


For an ‘Agile’ development project it is recognised that the deployment plan may
not provide fixed timescales or an absolute specification of features to be
delivered in each release. However, the Clinical Risk Management Plan will
provide the following important safety benefits to a project:

   •     An agreed version of the system.
   •     Estimates to the frequency and content of releases and Clinical Safety Case
         Reports. These estimates will also provide an indication of resource required
         from stakeholders.
   •     Relevant stakeholders in clinical safety management.



2.2.     Initial hazard identification and assessment

                 The Manufacturer MUST identify and document known and
 4.3.1           foreseeable hazards to patients with respect to the intended use
                 of the Health IT System in both normal and fault conditions.
                 For each identified hazard the Manufacturer MUST estimate,
 4.4.1           using the criteria specified in the Clinical Risk Management Plan:

                     •   The severity of the hazard
                     •   The likelihood of the hazard
                     •   The resulting clinical risk.



The preferred approach to clinical hazard control is to reduce the exposure to
hazards through the application of safe design. Typically, the root causes of
hazards that lead to risks to patient safety arise either because of the specified
functionality itself giving rise to a hazardous condition or through a fault, defect
or systematic design flaw in the manufactured software. It is also possible that
elaboration of specified functionality by Manufacturers could generate outcomes
with patient safety implications.


The Hazard log should record the identified hazards in both normal and fault
conditions, and document ways in which these hazards are to be reduced to
acceptable levels of residual clinical risk. User stories should, where possible, be
sufficiently detailed to allow an informed hazard identification and assessment

                                               9
Clinical Risk Management: Agile Development Implementation Guidance


to take place. However, this may not always be possible given the high-level
nature of user stories, which may hinder hazards identification, therefore:

   •     Initial hazard identification should be conducted in parallel with the original user
         story capture, elaboration and initial software scoping phase of the overall Health
         IT System development programme. It is strongly recommended that a hazard
         workshop is run during the scoping phase to support complete hazard
         identification, as described in section 4.3 of Ref 3
   •     It is of primary importance that recognition is given to both the clinical and
         technical aspects of the Health IT System; Clinical Safety Officers and relevant
         subject matter experts with appropriate experience conduct the assessments
   •     On-going hazard assessment processes should be included in sprint activities
         throughout the development life cycle and are essential in providing further
         means of hazard identification and risk reduction
   •     Accurate cross referencing using unique identifier(s) should be used to maintain
         traceability between User Stories and related identified hazards. This will also
         ensure traceability throughout the systems life cycle


Early clinical hazard identification enables the developing product design to
avoid hazards and build in mitigation where possible.


2.3.     Prioritisation and selection of user stories

                 The Manufacturer MUST ensure that the clinical risks from all
 6.4.1
                 identified hazards have been considered and accepted.


                 The Manufacturer MUST undertake a formal review of the Health
 7.1.1           IT System prior to its delivery to ensure that all of the
                 requirements of this standard have been addressed.


                 The results of this review MUST be recorded in the Clinical Safety
 7.1.2
                 Case Report.

                 The Health IT System configuration for the release MUST be
 7.1.3
                 recorded in the Clinical Safety Case Report.


In Agile development, the prioritisation and selection of user stories aims to
identify the highest value or priority items going into each release (the lowest
items may remain in a backlog). Prioritisation must be mindful of all identified
clinical hazards associated to individual or groups of user stories and their
dependencies to ensure completeness of clinical risk controls.



                                             10
Clinical Risk Management: Agile Development Implementation Guidance


It is important to be able to confirm that all the identified hazards have been
addressed. This can be achieved by ensuring that the overall hazard assessment
and risk reduction process incorporates suitable means to be able to trace the
history of each residual clinical risk or hazard back to its initiating user story or
root cause. The Clinical Safety Case Report should include details of all testing
and other assurance activity (or references to the activity) that justifies how an
acceptable level of residual clinical risk assurance has been achieved i.e., to
provide evidence of the effectiveness of clinical risk control measures.


Selection of user stories for development of a particular release must consider
related clinical safety concerns e.g., user stories with identified hazards must not
be released without suitable clinical risk controls, as recorded in the Hazard Log.
Furthermore, if during development one or more items cannot be fully
developed with the sprint period, a suitable and sufficient clinical risk analysis,
commensurate with the scale, complexity and extent of the release shall be
undertaken to establish if omitting the item would compromise the clinical safety
of the release.


2.4.     Constraints and limitations of releases

               The Manufacturer MUST produce a Clinical Safety Case Report at
 3.5.1         each lifecycle phase defined in the Clinical Risk Management
               Plan.


A Clinical Safety Case Report supporting a Health IT System release should
contain information relating to its intended use in the defined clinical application
and health IT environment. It should contain details of any constraints or
limitations in operation which, if exceeded, could lead to an increase in defined
clinical risk.


2.5.     Delivery, monitoring and modification

               The Manufacturer MUST apply their clinical risk management
 7.3.1         process to any modifications or updates of the deployed Health
               IT System.

               The application of this process MUST be commensurate with the
 7.3.2         scale and extent of the change and the introduction of any new
               clinical risks.

               The Manufacturer MUST issue a Clinical Safety Case Report to
 7.3.3         support any modification to the Health IT System that changes
               its clinical risk.

                                         11
Clinical Risk Management: Agile Development Implementation Guidance



               The Manufacturer MUST maintain an audit trail of all versions
 7.3.4
               and patches released for deployment.


Where the Clinical Safety Officer or clinical safety representative is included in
Sprint Refinements and ‘Show and Tells’ / Sprint Reviews, change management
can be fluid in response. User Stories with a potential to introduce hazards
through the method of development can be assessed and mitigated during
development and assured by review. User stories can be created which include
safety requirements.


Whenever a Health IT System is modified, a suitable and sufficient clinical risk
analysis, commensurate with the scale, complexity and extent of the
modification (itself established by risk analysis), should be undertaken. This will
establish what, if any, new clinical risks have been introduced. Where it is not
possible to gather all stakeholders to attend a formal Hazard Workshop they
must be fully consulted. This will ensure that no unacceptable clinical hazards
are introduced due to a modification or by altering the basis of assessment of
other parts of the Health IT System.


NOTE: The extent of the repeated clinical risk analysis will depend on the extent
and the nature of the product modification. However, even apparently minor
modifications can result in substantial clinical risks and thus, whatever the extent
of the clinical risk analysis undertaken, it will need to be executed formally,
rigorously and with due process. An audit trail of all releases should be
maintained as part of the Clinical Risk Management File and the Safety Case
Report amended as appropriate to provide traceability in the event of a hazard
alert.




                                         12
         Clinical Risk Management: Agile Development Implementation Guidance




More information

w oneadvanced.com
t 03300 602 102

Ditton Park, Riding Court Road, Datchet, SL3 9LL
Advanced Computer Software Group Limited is a company registered in England and Wales
under company number 05965280, whose registered office is Ditton Park, Riding Court Road,
Datchet, SL3 9LL. A full list of its trading subsidiaries is available at
www.oneadvanced.com/legal-privacy.




                                                                            13
```
