---
name: safety-md-dtac-evidence
description: User-invoked skill for preparing the clinical-safety evidence slice needed for NHS DTAC from SAFETY.md documentation.
disable-model-invocation: true
---

# SAFETY.md DTAC Evidence

Use only when explicitly asked for DTAC clinical safety evidence or DTAC Section 1 support.

## Boundary

This is not a full DTAC generator. It prepares the clinical-safety evidence slice and identifies gaps/handoffs.

## Steps

1. Locate SAFETY.md file set and CSO status. Completion: evidence sources listed.
2. Summarise DCB0129 and DCB0160 applicability/status. Completion: status is evidence-based or pending.
3. Summarise hazard log status: open hazards, highest residual risk, review date, CSO status. Completion: no fabricated counts if data unavailable.
4. Identify gaps for DTAC submission. Completion: missing evidence and responsible owner are clear.

## Completion criteria

- DTAC clinical safety evidence summary exists.
- Gaps are marked `[PENDING]` with owners where possible.
- Full DTAC/legal/compliance claims are not made.
