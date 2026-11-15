---
# Replace with a link to your own scheme (normally in the Clinical Risk Management Plan)
# if you do not use the DCB0129 Implementation Guidance example. See spec/specification.md.
risk-scheme: dcb0129-ig-example

hazards:
  - id: H001
    description: "[PENDING]"
    cause: "[PENDING]"
    effect: "[PENDING]"
    severity:            # 1 Minor … 5 Catastrophic under the example scheme
    likelihood:          # 1 Very low … 5 Very high
    risk:                # risk class 1–5 from the matrix
    controls: []
    residual-severity:
    residual-likelihood:
    residual-risk:
    status: open         # one of: open | mitigated | accepted | closed
    cso-reviewed: false
    date-raised:
    date-closed:

controls:
  - id: C001
    description: "[PENDING]"
---

# Hazard Log — [PROJECT]

> Status: draft template. Starter rows and prompts are not evidence that hazard analysis has happened. Replace them with project-specific hazards, controls, evidence, and review status.

## Risk scheme

Risk scheme: [PENDING: `dcb0129-ig-example` (DCB0129 Implementation Guidance Tables 7–10) or link to the project's own scheme].

DCB0129, DCB0160 and DTAC do not prescribe a risk scheme. The Clinical Risk Management Plan must set the risk acceptability criteria and a CSO must approve them. Under the example scheme, higher numbers always mean more severe, more likely, or more risk; risk classes 4–5 are unacceptable, 3 is undesirable, and 1–2 are acceptable on the conditions stated in the guidance. Keep the YAML frontmatter above and the tables below in sync.

## Hazard log

| ID | Date raised | Hazard description | Cause(s) | Effect / harm | Initial severity | Initial likelihood | Initial risk | Controls | Residual risk | Owner | Status | Evidence | CSO reviewed? |
|---|---|---|---|---|---:|---:|---|---|---|---|---|---|---:|
| H001 | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] | open / mitigated / accepted / closed | [PENDING] | [PENDING] |

## Control register

| Control ID | Description | Control type | Linked hazards | Implementation evidence | Effectiveness evidence | Owner | Status |
|---|---|---|---|---|---|---|---|
| C001 | [PENDING] | product / process / training / monitoring / fallback / other | [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] |

## Deployment and transferred controls

Use this section where a manufacturer/supplier control must be implemented, verified, or maintained by the deployer or another party.

| Transferred control | Source | Responsible party | Local implementation evidence | Verification status |
|---|---|---|---|---|
| [PENDING] | supplier CSCR / manual / IFU / release notes / other | [PENDING] | [PENDING] | [PENDING] |

## Hazard prompts

Consider whether hazards arise from:

- incorrect, delayed, unavailable, or misleading information;
- user-interface design, human factors, alert fatigue, or workflow mismatch;
- interoperability, integration, API, messaging, or coding-system failure;
- portability, migration, archiving, or access to historical information;
- information security incidents that create patient harm;
- analytics, AI/ML, automation, triage, decision support, or secondary use of data;
- local configuration, deployment, training, support, fallback, downtime, or decommissioning;
- residual risks or transferred controls communicated by a supplier/manufacturer.

## Review log

| Date | Reviewer | Scope | Outcome | Follow-up |
|---|---|---|---|---|
| [PENDING] | [PENDING] | [PENDING] | [PENDING] | [PENDING] |
