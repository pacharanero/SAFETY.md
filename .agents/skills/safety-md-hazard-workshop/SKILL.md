---
name: safety-md-hazard-workshop
description: User-invoked skill for running a clinical safety hazard-identification workshop and updating a SAFETY.md hazard log.
disable-model-invocation: true
---

# SAFETY.md Hazard Workshop

Use only when the user explicitly asks for this skill or asks to identify clinical safety hazards.

## Read first

- Read `GLOSSARY.md` from the installed shared bundle at `../_safety-md/GLOSSARY.md`, or from the canonical SAFETY.md repository root if that bundle is absent.
- Read the target project's existing `SAFETY.md`, `SAFETY-CASE.md`, and `HAZARD-LOG.md` if present.
- `references/hazard-archetypes.md`

## Steps

1. Establish intended use, clinical context, users, patient population, and deployment assumptions. Completion: unknowns are explicit.
2. Walk every hazard archetype in `references/hazard-archetypes.md`. Completion: each archetype is represented by hazards, marked not applicable, or recorded as a question.
3. For each candidate hazard, separate description, cause, effect, controls, evidence, residual risk, owner, and review status. Completion: no hazard is just a vague concern.
4. Update or draft `HAZARD-LOG.md`. Completion: new hazards have stable IDs and `[PENDING]` fields where needed.
5. Add unresolved clinical questions to `queries.md`. Completion: the user can see exactly what a CSO/SME must answer.

## Never do

- Do not treat starter hazards as a completed hazard workshop.
- Do not invent risk acceptance or CSO review.
- Do not hide high/unknown residual risks by wording them vaguely.

## Completion criteria

- Candidate hazard families have been systematically considered.
- Each recorded hazard has cause, effect, controls or control gaps, residual-risk status, and review status.
- Unanswered clinical/domain questions are captured.

## Common Gotchas

- “User enters wrong value” is usually a cause, not the full hazard.
- Security and interoperability issues become clinical safety hazards only when they can plausibly contribute to patient harm.
- A short hazard log often means insufficient analysis, not a safe product.
