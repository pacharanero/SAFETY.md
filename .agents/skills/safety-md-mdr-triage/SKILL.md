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
3. Recommend one of: likely not medical device but record rationale; uncertain requires specialist classification; likely medical-device pathway requires regulatory review. Completion: no definitive legal claim unless already evidenced.
4. Link to SAFETY.md hazards and evidence that may feed ISO 14971/MDR work.

## Common Gotchas

- Small intended-purpose wording changes can alter classification.
- “Calculator” can be low-risk, but dose/risk-score/clinical recommendation calculators can be medical-device relevant.
- ArcKit has a broader MDR classifier; this skill should hand off rather than duplicate it.
