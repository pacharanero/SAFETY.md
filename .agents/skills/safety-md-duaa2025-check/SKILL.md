---
name: safety-md-duaa2025-check
description: User-invoked skill for checking SAFETY.md documentation against DUAA2025 and amended health/care information-standard implications.
disable-model-invocation: true
---

# SAFETY.md DUAA2025 Check

Use only when the user explicitly asks for this skill or asks for DUAA2025 / information-standard readiness.

## Read first

- `legislation/health-and-social-care-act-2012-information-standards-as-amended.md`
- `legislation/cso-briefing-data-use-and-access-act-2025.md`
- `spec/mappings/duaa2025-to-safety-md.md`
- `references/duaa2025-checklist.md`

## Steps

1. Determine whether the system processes health/adult social care information in or in relation to England. Completion: applies/does not apply/unknown.
2. Determine possible relevant IT provider status. Completion: status explicit or `[PENDING]`.
3. Apply `references/duaa2025-checklist.md`. Completion: each domain assessed.
4. Recommend changes to SAFETY.md files, hazard prompts, evidence pack, or assurance-domain owners. Completion: recommendations do not imply CSO owns all adjacent domains.

## Completion criteria

- Relevant IT provider / IT service status is addressed.
- Interoperability, portability, storage/access, and information security are assessed for patient-safety interfaces.
- Evidence-pack readiness is assessed.
- Adjacent-domain owners are named or pending.

## Common Gotchas

- DUAA2025 is not a new clinical safety standard, but it changes the surrounding information-standard context.
- CSOs need interfaces to IG/security/interoperability evidence, not ownership of everything.
