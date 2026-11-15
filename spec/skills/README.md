# SAFETY.md Skills Strategy

This folder documents the SAFETY.md skill pack strategy: reusable agent skills for generating, reviewing, and maintaining repository-native clinical safety documentation.

Executable project-local skills now live under [`../../.agents/skills/`](../../.agents/skills/). This folder records the design rationale, catalogue, and distribution direction.

## Why skills?

SAFETY.md is not just a document template. Its purpose is to keep clinical safety work close to code:

- hazards close to issues and pull requests;
- safety cases close to releases and configuration;
- controls close to evidence;
- CSO review close to the actual changes that affect patient safety.

Skills are a good fit because they can do more than fill in boilerplate. They can inspect a repository, ask focused questions, run a hazard workshop, flag unsupported compliance claims, update evidence links, and keep the safety case live as the software evolves.

## Positioning alongside ArcKit

ArcKit has demonstrated that AI can generate useful first-pass NHS clinical safety and MDR artefacts when given strong structure, good starter hazards, and clear assurance-domain boundaries.

SAFETY.md should not try to become ArcKit. The intended split is:

| SAFETY.md | ArcKit |
|---|---|
| Canonical clinical safety source corpus, glossary, mappings, templates, and focused skills. | Broad enterprise/governance artefact generator and orchestration harness. |
| Root-of-repository `SAFETY.md` convention: safety close to code. | Project artefact structure under `projects/{NNN}/...`. |
| Deep DCB0129/DCB0160 fidelity and ongoing maintenance workflows. | Wide assurance coverage: DTAC, MDR, DPIA, Secure by Design, architecture, procurement, etc. |
| DUAA2025-aware clinical safety implications. | Can consume SAFETY.md outputs and later adopt updated conventions. |

ArcKit can be one vehicle that uses SAFETY.md. SAFETY.md should be the specialist clinical safety engine.

## Skill creation principles

These principles combine the built-in Zed `create-skill` guidance with the `writing-great-skills` reference.

### Predictability over cleverness

A skill exists to wrangle predictability out of a stochastic system. The same prompt should lead the agent through the same kind of process, even if the final output is adapted to the repo.

### Small, named skills with clear branches

Prefer several focused skills over one giant `safety-md` skill. Split by invocation when the user would naturally ask for a distinct thing. Split by sequence when showing later steps would tempt the agent into premature completion.

### User-invoked by default

SAFETY.md skills are **user-invoked** by design. Clinical safety, regulatory, and assurance workflows should run when the user deliberately chooses them, not because an agent guessed from a weak trigger.

This avoids two failure modes:

- misfiring when safety/regulatory work was not requested;
- silently substituting an automatic skill trigger for explicit human control.

Every executable SAFETY.md skill should set:

```yaml
disable-model-invocation: true
```

Documentation should make clear when a user should choose each skill. If the skill set becomes hard to remember, use the user-invoked `safety-md-router` skill rather than model-invocation.

### Descriptions are human-facing summaries

Because SAFETY.md skills are user-invoked, the skill `description` should be a concise human-facing summary rather than an aggressive trigger surface.

Example:

```yaml
description: User-invoked skill for generating or updating repo-native SAFETY.md Clinical Risk Management File documentation.
disable-model-invocation: true
```

### Progressive disclosure

Keep `SKILL.md` concise. Put templates, checklists, hazard archetypes, crosswalks, and longer reference material in sibling files under `templates/` and `references/`.

The skill body should contain the steps every run needs. Reference files should be loaded only when the branch needs them.

### Completion criteria

Each skill should end with a checkable completion criterion. Avoid vague endings like “produce good documentation”. Prefer criteria such as:

- every generated file written;
- all unknowns marked `[PENDING]`;
- no compliance claim made without evidence/sign-off;
- manufacturer/deployer roles explicitly stated;
- hazards have controls or are marked open;
- open questions written to `queries.md`.

### Gotchas are first-class

When a skill repeatedly leads the agent into a mistake, add it to a `Common Gotchas` section instead of only fixing the current run.

Likely SAFETY.md gotchas:

- DCB0129 and DCB0160 are different obligations.
- Supplier safety evidence does not discharge local deployment safety.
- A project is not compliant just because it has SAFETY.md files.
- Do not invent CSO sign-off, evidence, or clinical validation.
- DUAA2025-adjacent domains are not automatically CSO-owned, but may create patient harm.
- DCB0129/DCB0160 do not prescribe a risk scale; the Implementation Guidance tables are examples. Declare the scheme, and under the example scheme number upwards (1 = Minor / Very low).

## Executable layout

```text
.agents/
  skills/
    safety-md-csmf/
      SKILL.md
      templates/
        SAFETY.md
        SAFETY-CASE.md
        HAZARD-LOG.md
        SAFETY-PLAN.md
      references/
        dcb0129-to-safety-md.md
        dcb0160-to-safety-md.md
        duaa2025-to-safety-md.md
        glossary.md
        completion-checklist.md

    safety-md-hazard-workshop/
      SKILL.md
      references/
        hazard-archetypes.md
        risk-scoring.md
        clinical-context-questions.md

    safety-md-review/
      SKILL.md
      references/
        review-checklist.md
        stale-reference-checklist.md

    safety-md-duaa2025-check/
      SKILL.md
      references/
        duaa2025-checklist.md

    safety-md-template-modernise/
      SKILL.md
      references/
        migration-checklist.md

    safety-md-mdr-triage/
      SKILL.md
      references/
        medical-device-triage.md

    safety-md-router/
      SKILL.md
```

The project-local `.agents/skills/` versions are the canonical executable copies for now. Once stable, package selected skills for global/user installation and other agent harnesses.

## Relationship to source corpus

Skills should use this repo’s source material in this order:

1. `GLOSSARY.md` for terminology.
2. `spec/mappings/` for DCB0129/DCB0160/DUAA2025 crosswalks.
3. `legislation/` for readable DUAA2025 interpretation.
4. `upstream/` for source renderings, where exact upstream wording is needed.
5. `resources/` for original files and provenance.

Do not duplicate long reference content inside `SKILL.md` if it already lives in those files.
