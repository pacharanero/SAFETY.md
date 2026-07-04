# SAFETY.md Skills Implementation Plan

## Phase 0 — prerequisites

- [ ] Stabilise root templates for:
  - `SAFETY.md`
  - `SAFETY-CASE.md`
  - `HAZARD-LOG.md`
  - `SAFETY-PLAN.md`
- [ ] Extract reusable hazard archetypes into `skills/references/hazard-archetypes.md` or equivalent.
- [ ] Decide whether executable skills live initially in:
  - project-local `.agents/skills/`, preferred for this repo; or
  - global `~/.agents/skills/`, useful for personal experimentation.
- [ ] Decide whether any skills should be user-invoked only with `disable-model-invocation: true`.

## Phase 1 — build `safety-md-csmf`

### Directory

```text
.agents/skills/safety-md-csmf/
  SKILL.md
  templates/
    SAFETY.md
    SAFETY-CASE.md
    HAZARD-LOG.md
    SAFETY-PLAN.md
  references/
    completion-checklist.md
```

### Frontmatter draft

```yaml
---
name: safety-md-csmf
description: Generate or update repo-native SAFETY.md clinical safety documentation for health software projects, including CSMF structure, hazard logs, DCB0129/DCB0160 role split, DUAA2025-aware assurance domains, and CSO review prompts.
---
```

### Core steps

1. Inspect the target repo’s README, package metadata, docs, routes, and visible code to infer product purpose and clinical context.
2. Identify whether the repo appears to represent manufacturer/supplier, deployer, operator, maintainer, relevant IT provider, or unclear role(s).
3. Determine likely SAFETY.md tier and whether DCB0129, DCB0160, both, or neither appear applicable.
4. Ask only blocking questions needed to avoid unsafe fabrication.
5. Generate or update the file set.
6. Mark unknowns as `[PENDING]`.
7. Add `queries.md` entries for unresolved clinical/regulatory facts.
8. Run a link/consistency check.

### Completion criteria

- [ ] Required files are created or updated.
- [ ] All unknowns are marked `[PENDING]` or recorded in `queries.md`.
- [ ] No CSO sign-off, evidence, validation, or compliance claim is invented.
- [ ] Manufacturer/deployer/relevant-IT-provider status is explicit or marked unknown.
- [ ] Applicable standards and assurance domains are present.
- [ ] Hazard log exists and starter hazards are clearly labelled as draft prompts, not completed analysis.

## Phase 2 — build `safety-md-hazard-workshop`

### Frontmatter draft

```yaml
---
name: safety-md-hazard-workshop
description: Run a clinical safety hazard-identification workshop for health software, generating or updating SAFETY.md hazard logs with causes, effects, controls, residual risk, evidence prompts, and CSO review questions.
---
```

### Completion criteria

- [ ] Intended use and clinical context considered.
- [ ] Hazard archetype families considered or explicitly marked not applicable.
- [ ] Candidate hazards distinguish cause, effect, controls, and evidence.
- [ ] Residual risk and review status captured or marked `[PENDING]`.
- [ ] Product-specific unknowns captured in `queries.md`.

## Phase 3 — build `safety-md-review`

### Frontmatter draft

```yaml
---
name: safety-md-review
description: Review existing SAFETY.md, CSMF, DCB0129, or DCB0160 clinical safety documentation for gaps, unsupported compliance claims, missing evidence, stale references, role confusion, and DUAA2025-aware omissions.
---
```

### Completion criteria

- [ ] Findings grouped by Critical / High / Medium / Low.
- [ ] Unsupported compliance claims flagged.
- [ ] Missing evidence/sign-off clearly distinguished from content style preferences.
- [ ] DCB0129/DCB0160 role confusion flagged.
- [ ] DUAA2025-relevant omissions assessed.
- [ ] Suggested patches provided where safe.

## Phase 4 — build DUAA2025/MDR/DTAC helpers

Build only after the core skills are stable:

- `safety-md-duaa2025-check`
- `safety-md-mdr-triage`
- `safety-md-dtac-evidence`

These should be small, specialist helpers rather than broad ArcKit replacements.

## Test repos

Use the following to grow the skills:

- `calc` — low-complexity clinical calculation / possible decision-support case.
- One old Turva/RCPCH-derived safety template repo — migration stress test.
- One low-risk informational health app — tiering/proportionality test.
- One deployment-style repo — DCB0160 and local workflow assumptions.
- One AI/ML or analytics-adjacent repo — DUAA2025 and MDR triage stress test.

## Growth discipline

After each real run:

1. Add repeated mistakes to `Common Gotchas`.
2. Move long explanation out of `SKILL.md` into `references/`.
3. Tighten completion criteria where the agent stopped too early.
4. Delete no-op instructions that do not change behaviour.
5. Keep one source of truth for terms, crosswalks, and hazard archetypes.
