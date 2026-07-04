---
name: safety-md-release-review
description: User-invoked skill for reviewing whether a release, PR, or code change affects SAFETY.md clinical safety evidence.
disable-model-invocation: true
---

# SAFETY.md Release Review

Use only when explicitly asked to review a release, PR, or change for clinical safety impact.

## Read first

- Existing `SAFETY.md`, `SAFETY-CASE.md`, `HAZARD-LOG.md`, `SAFETY-PLAN.md` if present.
- `references/change-impact-checklist.md`

## Steps

1. Identify changed files, release notes, PR description, commits, or diff under review. Completion: changed surface area is summarised.
2. Apply every item in `references/change-impact-checklist.md`. Completion: each change family is applicable/not applicable/unknown.
3. Map changes to existing hazards and controls. Completion: affected H-IDs/C-IDs are listed or new hazards are proposed.
4. Recommend safety documentation updates. Completion: updates are concrete and unknowns are in `queries.md`.

## Never do

- Do not approve a release or accept residual risk.
- Do not claim a change is clinically safe without evidence and CSO review.

## Completion criteria

- Safety-impact summary exists.
- Existing hazards/controls affected by the change are identified.
- New hazards or review questions are captured.
- Required CSO review/action is explicit.
