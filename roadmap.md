# SAFETY.md Roadmap

## Aim

SAFETY.md is intended to make clinical safety documentation easier to do well, not easier to evade.

The goal is to take NHS England leading-edge clinical safety guidance and related UK health IT standards, then turn them into practical, repository-native conventions that help manufacturers and deploying organisations comply with the rules while wasting as little time as possible on bland documentation.

The time saved should be redirected toward the work that actually makes software safer for patients:

- identifying hazards;
- understanding clinical context;
- designing and evidencing mitigations;
- reviewing residual risk;
- keeping safety evidence close to code, releases, issues, pull requests, and operational reality.

This is why `SAFETY.md` belongs in the root of a code repository: **safety close to code**.

Nothing in this repository is intended to circumvent, dilute, or replace applicable regulations, information standards, clinical safety standards, or professional responsibilities. SAFETY.md is an implementation and evidence pattern for doing the required work in a modern software workflow.

## Canonical source-of-truth direction

This repository is now the focus of current work and should become the canonical source of truth for:

- upstream reference provenance;
- checked Markdown extractions of DCB0129 and DCB0160 source documents;
- readable reconstructions of relevant legislation;
- CSO-facing briefings;
- SAFETY.md specification work;
- reusable templates and schemas;
- crosswalks from SAFETY.md artefacts to DCB0129, DCB0160, DUAA2025-relevant information-standard duties, and other applicable assurance domains.

Older separate repositories such as `dcb0129-markdown` and `dcb0129-template` should be treated as historical inputs, not canonical sources.

## DCB0129

* [x] Extract a new, first-pass canonical Markdown version of the DCB0129 source documents into this repository.
* [ ] Include, at minimum:
  * [x] Specification (Amd 24/2018 / v4.2)
  * [x] Implementation Guidance (Amd 24/2018)
  * [x] Information Standards Notice (Amd 24/2018)
  * [x] Change Specification (Amd 24/2018)
  * [ ] Compliance Assessment Template provenance and, if practical, a Markdown-readable summary of its structure.
* [ ] Ensure all OCR/PDF extraction artefacts have been checked and removed or explicitly annotated as upstream artefacts.
* [ ] Add per-document provenance blocks: title, source URL, release number, release date, date accessed, local upstream filename, checksum.
* [ ] Preserve the distinction between faithful upstream rendering and SAFETY.md interpretation.
* [x] Add a DCB0129-to-SAFETY.md crosswalk.
* [ ] Clarify manufacturer/supplier-side obligations and avoid blurring them with deployment/use obligations.
* [ ] Update stale references to NHSX, Turva, and present-tense NHS Digital wording.
* [ ] Prepare for the planned NHS England/DHSC organisational change by keeping publisher/current-owner names easy to update in bulk, while preserving historical source attribution.

## DCB0160

* [x] Extract a new, first-pass canonical Markdown version of the DCB0160 source documents into this repository.
* [ ] Include, at minimum:
  * [x] Specification (Amd 25/2018)
  * [x] Implementation Guidance (Amd 25/2018)
  * [x] Information Standards Notice (Amd 25/2018)
  * [x] Change Specification (Amd 25/2018)
  * [ ] Compliance Assessment Template provenance and, if practical, a Markdown-readable summary of its structure.
* [ ] Ensure all OCR/PDF extraction artefacts have been checked and removed or explicitly annotated as upstream artefacts.
* [ ] Add per-document provenance blocks: title, source URL, release number, release date, date accessed, local upstream filename, checksum.
* [ ] Preserve the distinction between faithful upstream rendering and SAFETY.md interpretation.
* [x] Add a DCB0160-to-SAFETY.md crosswalk.
* [ ] Clarify deployer/health-organisation-side obligations and avoid blurring them with manufacturer/supplier obligations.
* [ ] Update stale references to NHSX, Turva, and present-tense NHS Digital wording.
* [ ] Prepare for the planned NHS England/DHSC organisational change by keeping publisher/current-owner names easy to update in bulk, while preserving historical source attribution.

## Data (Use and Access) Act 2025 and wider information-standard duties

* [ ] Treat DUAA2025 as a leading-edge signal that health/care information standards can explicitly reach software, code, IT services, interoperability, portability, storage/access to information, and information security.
* [x] Maintain readable reconstructions in `legislation/` rather than expecting users to read patch-style statutory amendments directly.
* [x] Maintain CSO-facing briefings that translate legislation into practical clinical safety questions.
* [ ] Track the amended Health and Social Care Act 2012 information-standards framework, especially:
  * [ ] relevant IT provider;
  * [ ] IT service;
  * [ ] information technology, including software and code;
  * [ ] standards covering functionality, connectivity, interoperability, portability, storage/access, and security of information;
  * [ ] compliance notices/evidence requests;
  * [ ] public censure risk;
  * [ ] accreditation schemes.
* [x] Add SAFETY.md fields or sections for applicable standards and assurance domains.
* [x] Add template/spec prompts for whether the organisation is acting as manufacturer, deployer, operator, maintainer, supplier, or relevant IT provider.
* [x] Add an evidence-pack concept suitable for responding quickly to standards compliance queries.
* [ ] Ensure DUAA2025-related material does not imply that CSOs own all information governance, data protection, interoperability, or security work; instead, show how these domains interface with clinical safety where they can create patient harm.

## SAFETY.md specification

* [ ] Keep `SAFETY.md` rooted in code repositories, analogous to `README.md`, `LICENSE`, `SECURITY.md`, and `CONTRIBUTING.md`.
* [ ] Make the core file set small enough for real teams to adopt.
* [ ] Preserve a tiered approach so low-risk projects are not forced into excessive ceremony.
* [ ] Make clear that SAFETY.md does not replace DCB0129, DCB0160, DTAC, medical device regulation, data protection law, or professional CSO judgement.
* [ ] Define SAFETY.md as a repository-native implementation and evidence convention.
* [x] Add explicit support for:
  * [x] manufacturer/supplier-side safety evidence;
  * [x] deployment/use-side safety evidence;
  * [x] linked hazards and mitigations;
  * [x] release/configuration-item traceability;
  * [x] GitHub Issues or Markdown hazard logs;
  * [x] pull-request review and CSO approval trail;
  * [x] exportable evidence packs.
* [x] Add standard wording explaining that Git-based document control implements, rather than avoids, document control.

## Clinical Safety Management File Template

* [ ] Treat the old `dcb0129-template` as historical input, not as canonical current material.
* [ ] Restart the Clinical Safety Management File template from first principles using this repo's source corpus, glossary, crosswalks, and legislation notes.
* [ ] Preserve the useful overarching aim of the old template: fast, low-friction generation of a usable safety documentation skeleton.
* [ ] Avoid carrying forward project-specific history, including stray RCPCH, Digital Growth Charts, Turva, Baw Medical, NHSX, or obsolete NHS Digital present-tense references, unless included deliberately as attribution/provenance.
* [ ] Extract a new canonical version of each upstream template in `resources/templates/`, including provenance, source URL, access date, and licence/re-use status. First-pass DOCX text extraction and checksums added; source URLs/licensing remain open in `queries.md`.
* [ ] Build a new modern template from scratch once upstream template provenance is complete.
* [ ] Include an `Applicable standards and assurance domains` section in generated documentation.
* [ ] Include explicit manufacturer/deployer/relevant-IT-provider role declarations.
* [ ] Include prompts for hazards arising from interoperability, data portability, access to information, information security, analytics, AI/ML, and secondary use of data.
* [ ] Avoid default claims that a project is “compliant”; prefer “intended to support evidence of compliance” until reviewed and signed off.

## Glossary and terminology

* [x] Add an initial glossary to help use terms consistently.
* [ ] Keep glossary terms aligned with upstream DCB0129/DCB0160 definitions where those definitions exist.
* [ ] Mark terms as one of:
  * upstream defined term;
  * SAFETY.md convention;
  * DUAA2025 / legislative term;
  * working project terminology.
* [ ] Avoid inventing new terms where an existing DCB0129/DCB0160 or statutory term is available.
* [ ] Add glossary links from the README and specification.

## Licensing

* [x] Clearly signpost the licence model under which each part of this project is distributed.
* [ ] Check the licence/re-use position for upstream NHS/NHS England/NHS Digital documentation; likely OGL for much source material, but verify per source.
* [x] Clearly separate:
  * [x] upstream source material;
  * [x] faithful Markdown renderings of upstream source material;
  * [x] SAFETY.md original specification text;
  * [x] templates derived from upstream documents;
  * [x] original commentary, mappings, briefings, and examples.
* [ ] Anything authored by Marcus Baw as original SAFETY.md work is intended to be CC-BY-SA-Int 4.0 unless otherwise stated.
* [ ] Commercial reuse is allowed and encouraged, but attribution is required.
* [ ] Add SPDX-style licence markers or frontmatter where practical.
