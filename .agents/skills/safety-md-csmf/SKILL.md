---
name: safety-md-csmf
description: User-invoked skill for generating or updating repo-native SAFETY.md Clinical Risk Management File documentation.
disable-model-invocation: true
---

# SAFETY.md CSMF

Use only when the user explicitly asks for this skill or asks you to create/update a SAFETY.md Clinical Risk Management File.

## Purpose

Generate or update a repo-native clinical safety file set that helps teams do real safety work close to code. Do not generate fake compliance.

## Read first

- `GLOSSARY.md`
- `spec/mappings/dcb0129-to-safety-md.md`
- `spec/mappings/dcb0160-to-safety-md.md`
- `spec/mappings/duaa2025-to-safety-md.md`
- For file shapes, read `references/file-set.md`.

## Steps

1. Inspect the target repository: README, package metadata, docs, visible routes/code, existing safety files, issues/workflows if available. Completion: you can state the product purpose, likely users, and whether clinical context is clear or unknown.
2. Determine role and scope: manufacturer/supplier, deployer, operator, maintainer, relevant IT provider, or unclear. Completion: role table is explicit or `[PENDING]`.
3. Determine proportionate tier and likely standards: DCB0129, DCB0160, both, neither, MDR triage needed, DUAA2025 information-standard relevance. Completion: standards table is explicit or `[PENDING]`.
4. Ask only blocking questions needed to avoid unsafe fabrication. Put minor unknowns in `queries.md`.
5. Generate or update the file set using `references/file-set.md` and `templates/`. Completion: files are written and unknowns remain marked `[PENDING]`.
6. Check the output for unsupported compliance claims, invented sign-off, broken role boundaries, and missing hazard/evidence links. Completion: final summary states what was generated and what remains pending.

## Never do

- Do not assert compliance because files exist.
- Do not invent CSO names, registrations, approvals, evidence, validation, risk acceptance, or clinical context.
- Do not blur DCB0129 manufacturer evidence with DCB0160 deployment evidence.
- Do not overwrite meaningful existing safety decisions without preserving or explaining them.

## Completion criteria

- `SAFETY.md` exists or is updated.
- `SAFETY-CASE.md` and `HAZARD-LOG.md` exist for Tier 2+ or when DCB0129/DCB0160 evidence is needed.
- `SAFETY-PLAN.md` exists when tier/complexity warrants it, or the reason for omitting it is stated.
- Applicable standards and assurance domains are present.
- All unknowns are `[PENDING]` or in `queries.md`.
- No unsupported compliance or approval claim remains.

## Common Gotchas

- A supplier DCB0129 safety case does not discharge local DCB0160 deployment obligations.
- Starter hazards are prompts, not evidence that a hazard workshop happened.
- DUAA2025-adjacent domains are not automatically CSO-owned, but can create patient harm.
- Root-level `SAFETY.md` is the default unless the user chooses another structure.
