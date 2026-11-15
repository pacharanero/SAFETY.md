---
name: safety-md-dtac-evidence
description: User-invoked skill for preparing the clinical-safety evidence slice needed for NHS DTAC from SAFETY.md documentation.
disable-model-invocation: true
---

# SAFETY.md DTAC Evidence

Use only when explicitly asked for DTAC clinical safety evidence or DTAC section C1 support.

## Boundary

This is not a full DTAC generator. It prepares evidence for section C1 (clinical safety) of the DTAC form version 2.0 (NHS England, February 2026; the previous form is not to be used from 6 April 2026) and identifies gaps/handoffs. Sections A, B, C2–C4 and D1 are out of scope. Check <https://digital.nhs.uk/services/digital-technology-assessment-criteria-dtac> for the current form before relying on question codes.

## Steps

1. Locate SAFETY.md file set and CSO status. Completion: evidence sources listed.
2. C1.1.1–C1.1.2: record whether the product or a component is Software or AI as a Medical Device, and whether it is a standalone medical device. If yes or unclear, hand off to `safety-md-mdr-triage`; a Pre-Acquisition Questionnaire is needed where the answer is yes. Note the form's skip logic: a standalone medical device goes straight from C1.1.2 to section C2, while SaMD/AIaMD forming part of a wider Health IT System continues to the DCB0129 questions. Completion: answer is evidenced or `[PENDING]`.
3. C1.2–C1.2.1: summarise DCB0129 applicability. If the manufacturer says DCB0129 does not apply, a written justification is required. Completion: status is evidence-based or pending.
4. C1.2.3–C1.2.4: map the clinical risk management system, Clinical Safety Case Report and Hazard Log to SAFETY.md files. Confirm the risk scheme is declared (C1.2.4 asks for it in the Clinical Safety Case Report), and summarise open hazards, highest residual risk, transferred risks and outstanding issues, review date and CSO status. Completion: no fabricated counts if data unavailable.
5. C1.2.5: record the CSO's name, profession and registration. Completion: evidenced or `[PENDING]`.
6. Identify gaps for DTAC submission. Completion: missing evidence and responsible owner are clear.

## Completion criteria

- DTAC C1 evidence summary exists, keyed to question codes.
- Gaps are marked `[PENDING]` with owners where possible.
- Full DTAC/legal/compliance claims are not made.

## Common Gotchas

- DTAC version 2.0 has no AI section; AI appears in C1.1.1. Any AI assurance a buyer asks for beyond that is a supplemental request, not part of DTAC.
- The DTAC version 1.0 requirement for DTAC-specific CSO training no longer applies; C1.2.5 asks for a suitably qualified, registered clinician.
- The deployer's DCB0160 work is not a DTAC question, though DTAC reminds health and care organisations of it.
