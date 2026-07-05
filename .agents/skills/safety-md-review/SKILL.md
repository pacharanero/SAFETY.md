---
name: safety-md-review
description: User-invoked skill for reviewing SAFETY.md, CSMF, DCB0129, or DCB0160 documentation for safety, evidence, and terminology gaps.
disable-model-invocation: true
---

# SAFETY.md Review

Use only when the user explicitly asks for this skill or asks to review clinical safety documentation.

## Read first

- `GLOSSARY.md`
- `spec/mappings/dcb0129-to-safety-md.md`
- `spec/mappings/dcb0160-to-safety-md.md`
- `spec/mappings/duaa2025-to-safety-md.md`
- `references/review-checklist.md`

## Steps

1. Locate safety files and determine structure. Completion: you can list canonical and supporting files.
2. Apply every rule in `references/review-checklist.md`. Completion: each rule has pass/fail/not-applicable/unknown status.
3. Group findings by Critical / High / Medium / Low. Completion: severity reflects safety/evidence impact, not style preference.
4. Patch safe, mechanical issues if requested or clearly in scope. Completion: no meaning-changing edits without confidence.
5. Put questions in `queries.md` where facts require user/CSO input.

## Completion criteria

- Findings are prioritised.
- Unsupported compliance/approval claims are flagged.
- Manufacturer/deployer role confusion is flagged.
- Missing evidence is distinguished from missing wording.
- DUAA2025-relevant omissions are assessed.

## Common Gotchas

- Do not “fix” missing evidence by writing assertions.
- Do not remove legacy attribution just because it looks old; preserve provenance unless clearly stale/noisy.
- A clean-looking document can still fail if hazards lack evidence or residual-risk acceptance.
