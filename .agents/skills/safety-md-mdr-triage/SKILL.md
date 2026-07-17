---
name: safety-md-mdr-triage
description: User-invoked skill for lightweight medical-device/SaMD triage and escalation from SAFETY.md documentation.
disable-model-invocation: true
---

# SAFETY.md MDR Triage

Use only when explicitly asked about medical-device, MDR, MHRA, SaMD, AIaMD, UKCA, CE, or regulatory classification uncertainty.

## Boundary

This is triage, not regulatory advice and not a full MDR classification workflow. Escalate to qualified regulatory review where material.

## Steps

1. Extract intended purpose, claims, users, patient population, and clinical functionality. Completion: intended-purpose wording is quoted or pending.
2. Identify red flags: diagnosis, monitoring, prediction, prognosis, treatment, decision support, dosing, alerts, AI/ML, patient-specific recommendations. Completion: red flags listed.
3. For SaMD/software cases, distinguish whether the software is embedded in a physical medical device, SaMD implemented within or forming part of a health IT system, or standalone SaMD not forming part of a health IT system. Completion: DCB0129/DCB0160 implications are stated as triage, not legal conclusion.
4. Recommend one of: likely not medical device but record rationale; uncertain requires specialist classification; likely medical-device pathway requires regulatory review. Completion: no definitive legal claim unless already evidenced.
5. Link to SAFETY.md hazards and evidence that may feed ISO 14971/MDR work, and note any DCB0129/DCB0160 evidence that remains separately required.

## Common Gotchas

- Small intended-purpose wording changes can alter classification.
- “Calculator” can be low-risk, but dose/risk-score/clinical recommendation calculators can be medical-device relevant.
- ArcKit has a broader MDR classifier; this skill should hand off rather than duplicate it.
- ISO 14971 completion does not automatically mean DCB0129/DCB0160 obligations are complete where DCB standards apply.
- SaMD forming part of a health IT system can need both MDR/ISO and DCB clinical-safety evidence paths.
