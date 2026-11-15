# SAFETY.md Roadmap

## North star

SAFETY.md exists to make clinical safety documentation easier to do well, not easier to evade.

The repository should become the canonical source for:

- checked upstream clinical safety references;
- SAFETY.md specification and conventions;
- practical templates and schemas;
- user-invoked agent skills for creating and maintaining high-quality clinical safety documentation close to code.

Nothing here replaces DCB0129, DCB0160, DTAC, medical-device regulation, data-protection law, or professional CSO judgement. The aim is to reduce bland paperwork and increase time spent identifying hazards, mitigating them, evidencing controls, reviewing residual risk, and making software safer for patients.

## Current state

Completed first-pass foundations:

- upstream DCB0129/DCB0160 PDFs and manifests added;
- first-pass Markdown/text extractions added under `upstream/`;
- DUAA2025 readable notes and CSO briefing added under `legislation/`;
- glossary added;
- crosswalks added under `spec/mappings/`;
- executable user-invoked SAFETY.md skills added under `.agents/skills/`;
- skill discovery metadata and project/global installers added: `skills.json`, `scripts/install-skills.sh`, and `scripts/embed-in-project.*`.

## Stage 1 — stabilise source corpus

Goal: make the upstream reference corpus trustworthy enough to build templates and skills against.

- [x] Complete DCB0129 compliance assessment provenance and, if practical, add a Markdown-readable structure summary.
- [x] Complete DCB0160 compliance assessment provenance and, if practical, add a Markdown-readable structure summary.
- [ ] Confirm source URLs and licence/re-use status for `resources/templates/`.
- [ ] Confirm source URLs and licence/re-use status for `resources/data-safety/`.
- [ ] Confirm provenance/authorship of `assets/risk-matrix.png`.
- [ ] Check DCB0129 Markdown extractions against source PDFs and remove/annotate extraction artefacts.
- [ ] Check DCB0160 Markdown extractions against source PDFs and remove/annotate extraction artefacts.
- [x] Decide whether spreadsheet templates should be rendered as CSV/Markdown tables or retained as binaries plus summaries.
- [ ] Keep historical source attribution distinct from current publisher/current-owner wording, especially NHS Digital/NHS England/DHSC transition language.

## Stage 2 — tighten SAFETY.md specification

Goal: turn `spec/specification.md` into a coherent draft that is internally consistent and ready for external review.

- [x] Keep `SAFETY.md` rooted in code repositories as the default convention.
- [x] Keep the core file set small enough for real teams to adopt.
- [x] Preserve tiering so low-risk projects are not forced into excessive ceremony.
- [x] Clarify DCB0129 manufacturer/supplier obligations vs DCB0160 deployment/use obligations throughout.
- [x] Clarify DUAA2025-relevant concepts without implying the CSO owns information governance, security, interoperability, or data-protection work.
- [x] Resolve severity/likelihood/risk-class numeric encoding gotchas against upstream DCB0129/DCB0160 wording. (2.0.0-draft.2: declared `risk-scheme`, example scheme numbered upwards.)
- [x] State that a CSO-approved Clinical Risk Management Plan is required at every tier where DCB0129/DCB0160 applies.
- [ ] Tag `v2.0.0-draft.1` (af40549) and `v2.0.0-draft.2`, and tag every later draft revision that changes required fields or the hazard-log schema.
- [ ] Tell ArcKit's `arckit-uk-nhs` overlay (pinned to af40549 by tractorjuice/arc-kit#1032) about draft.2: risk scheme, numbering direction, `spec-version`, and that its documented deviations are now allowed or covered.
- [ ] Decide whether to keep or comment on ArcKit's DTAC AI supplement (left for domain review in tractorjuice/arc-kit#1032).
- [x] Add glossary links from README and specification.
- [ ] Align glossary terms with upstream DCB0129/DCB0160 definitions where available.
- [x] Decide whether `relevant IT provider` status is required, optional, or conditional in core `SAFETY.md`.
- [x] Decide whether `Applicable standards and assurance domains` belongs in the core spec or only higher-tier templates.

## Stage 3 — build modern SAFETY.md templates

Goal: produce usable, low-friction templates from this repo’s current source corpus, not from legacy accumulated templates.

- [x] Treat the old `dcb0129-template` as historical input only.
- [x] Design new first-pass canonical templates for:
  - [x] `SAFETY.md`
  - [x] `SAFETY-CASE.md`
  - [x] `HAZARD-LOG.md`
  - [x] `SAFETY-PLAN.md`
- [x] Include applicable standards and assurance domains.
- [x] Include manufacturer/deployer/operator/maintainer/relevant-IT-provider role declarations.
- [x] Include prompts for hazards arising from interoperability, portability, access to information, information security, analytics, AI/ML, and secondary use of data.
- [x] Avoid default claims that a project is “compliant”; use “intended to support evidence of compliance” until reviewed and signed off.
- [x] Preserve useful starter-hazard patterns while making clear they are prompts, not completed analysis.
- [ ] Remove accidental RCPCH, Digital Growth Charts, Turva, Baw Medical, NHSX, or obsolete NHS Digital present-tense hangovers unless deliberately retained as provenance.

## Stage 4 — test and grow the skills

Goal: prove the user-invoked skills on real repositories and improve them based on observed gotchas.

- [ ] Test `safety-md-csmf` on `calc`.
- [ ] Test the skill pack on one historical Turva/RCPCH-derived repo.
- [ ] Test on one low-risk informational health app.
- [ ] Test on one deployment-style repo.
- [ ] Test on one AI/ML-adjacent or analytics-adjacent repo.
- [ ] Capture repeated failures in each skill’s `Common Gotchas` section.
- [ ] Improve reference files and templates based on test outputs.
- [ ] Validate that user-invoked behaviour works as intended and skills do not auto-fire.
- [ ] Test global install from this repo into `~/.agents/skills/`.

## Stage 5 — distribution and packaging

Goal: make SAFETY.md installable and useful across agent harnesses without duplicating skill logic by hand.

- [ ] Add explicit skill-pack versioning and compatibility metadata.
- [ ] Decide whether Claude Code distribution should be a direct SAFETY.md plugin, an ArcKit overlay update, or both.
- [ ] Prototype Claude Code plugin layout if direct distribution is preferred.
- [ ] Create a converter plan for Codex/OpenCode/Gemini/Copilot if demand exists.
- [x] Keep `.agents/skills/` as canonical skill source and generate/install shared support material from it where practical.
- [x] Add public installation docs for project-local and global installs.
- [x] Add project bootstrap scripts that install Agent Skills plus a harness-neutral `.safety-md/START-HERE.md` fallback.
- [ ] Test project bootstrap on macOS/Linux, Windows PowerShell, and at least one agent without native skill discovery.
- [ ] Consider a `dist/` layout only once the canonical skill behaviour is stable.

## Stage 6 — licensing and release readiness

Goal: make the repository safe and clear for public reuse.

- [ ] Confirm OGL or other licence/re-use status for all upstream NHS/NHS England/NHS Digital material.
- [x] Clarify that original SAFETY.md authored material is CC-BY-SA-4.0 International unless otherwise stated.
- [x] Confirm commercial reuse wording and attribution requirements.
- [ ] Add SPDX-style licence markers or frontmatter where practical.
- [ ] Add repository-level versioning for:
  - [ ] SAFETY.md specification version;
  - [ ] upstream reference snapshot date;
  - [ ] skill pack version;
  - [ ] template/schema version.
- [ ] Prepare an initial tagged release once Stage 1–4 have enough review evidence.
