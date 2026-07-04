---
name: safety-md-incident-update
description: User-invoked skill for updating SAFETY.md hazard logs and safety evidence after an incident, near miss, or safety signal.
disable-model-invocation: true
---

# SAFETY.md Incident Update

Use only when explicitly asked to update safety documentation after an incident, near miss, complaint, safety signal, or post-market learning.

## Boundary

This skill does not replace organisational incident reporting, statutory reporting, clinical governance, MHRA vigilance, IG breach reporting, or duty-of-candour processes. It updates repository-native safety evidence.

## Steps

1. Capture incident facts without inventing missing details. Completion: timeline, affected users/patients/systems, harm/near-miss status, and unknowns are explicit.
2. Link to existing hazards or propose new hazards. Completion: every incident mechanism maps to an H-ID or proposed new hazard.
3. Update controls/evidence needs. Completion: failed controls, missing controls, and verification evidence are clear.
4. Identify safety case and release/configuration implications. Completion: affected sections/releases are listed.
5. Record questions/actions for CSO and responsible owners in `queries.md` or an action list. Completion: required human decisions are explicit.

## Never do

- Do not minimise harm or residual risk.
- Do not mark hazards closed because an incident has been documented.
- Do not determine reportability unless qualified evidence is present; flag for responsible review.

## Completion criteria

- Incident is traceable to hazards/controls.
- Hazard log update or proposed update exists.
- Evidence and owner gaps are clear.
- CSO/regulatory/IG review prompts are explicit where relevant.
