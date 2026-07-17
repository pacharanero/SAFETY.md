# SAFETY.md

**SAFETY.md** is a repository-native convention for clinical safety documentation in software projects.

It follows the pattern of familiar root-level files such as `README.md`, `LICENSE`, `SECURITY.md`, `CONTRIBUTING.md`, and `CODE_OF_CONDUCT.md`: put the important project information where developers, reviewers, clinical safety officers, and automated tools can actually find it.

The core principle is:

> **Safety close to code.**

Clinical safety documentation should live close to the software, release history, issues, pull requests, tests, and operational evidence that affect patient safety.

## Aim

SAFETY.md is intended to make clinical safety documentation easier to do well, not easier to evade.

The aim is to take NHS England clinical safety standards and related UK health IT guidance, then turn them into practical, repository-native conventions that help manufacturers and deploying organisations comply with the rules while wasting as little time as possible on bland documentation.

The time saved should be redirected toward the work that actually makes software safer for patients:

- identifying hazards;
- understanding clinical context;
- designing and evidencing mitigations;
- reviewing residual risk;
- keeping safety evidence close to code, releases, issues, pull requests, and operational reality.

Nothing in this repository is intended to circumvent, dilute, or replace applicable regulations, information standards, clinical safety standards, medical-device obligations, data-protection duties, or professional Clinical Safety Officer judgement.

SAFETY.md is an implementation and evidence pattern for doing the required work in a modern software workflow.

## Repository map

| Path | Purpose |
|---|---|
| [`spec/`](./spec/) | Draft SAFETY.md specification, mappings, and design notes. |
| [`SAFETY.md`](./SAFETY.md) | Example/template root safety file. |
| [`roadmap.md`](./roadmap.md) | Current roadmap and work plan. |
| [`GLOSSARY.md`](./GLOSSARY.md) | Shared terminology for clinical safety, SAFETY.md, and related legislation. |
| [`resources/`](./resources/) | Upstream source files, manifests, checksums, and provenance. |
| [`upstream/`](./upstream/) | First-pass Markdown/text renderings of upstream source documents. |
| [`legislation/`](./legislation/) | Readable reconstructions and role-specific briefings for relevant legislation. |
| [`.agents/skills/`](./.agents/skills/) | Executable project-local SAFETY.md skills. All are user-invoked. |
| [`queries.md`](./queries.md) | Open questions requiring human confirmation. |

## Current upstream focus

This repository is becoming the canonical working corpus for:

- DCB0129 manufacturer-side clinical risk management;
- DCB0160 deployment/use-side clinical risk management;
- upstream clinical safety templates and guidance;
- readable DUAA2025 / health information-standard implications;
- SAFETY.md-native templates, schemas, evidence-pack conventions, and agent skills.

Older separate repositories should be treated as historical inputs unless explicitly incorporated here.

## Files and tiering

### Tier 1

For a low-risk project, start with:

- `SAFETY.md` — root safety file with project overview, applicable standard(s), safety strategy, and hazard summary.

### Tier 2

For projects where more formal clinical safety evidence is needed, add:

- `SAFETY-CASE.md` — structured clinical safety case with argument and evidence;
- `HAZARD-LOG.md` — hazard log in Markdown/structured data, or a link to a managed issue-based hazard log;
- `SAFETY-PLAN.md` — clinical risk management process and responsibilities, where needed.

### Tier 3

For larger or higher-risk projects, clinical safety documentation may live in a `safety/` or `docs/safety/` folder, with root `SAFETY.md` remaining the front door.

Hazards may become a multi-file or issue-based system, with automation to enforce required metadata, links, status, and review.

### Tier 4

For large programmes, safety documentation may span several repositories. Even then, each code repository should have a root `SAFETY.md` pointing to the relevant safety case, hazard log, assumptions, and evidence.

## Relationship to DCB0129, DCB0160, ISO 14971, and DUAA2025

SAFETY.md does not replace DCB0129 or DCB0160. It provides a practical way to organise evidence and documentation that may support compliance with them.

ISO 14971 medical-device risk-management evidence can support SAFETY.md work where relevant, but it does not automatically satisfy DCB0129 or DCB0160. SAFETY.md keeps these assurance domains explicit rather than blending them into a single vague “compliance” claim.

The Data (Use and Access) Act 2025 strengthens the wider health/care information-standards context, including standards that may apply to software, code, IT services, interoperability, portability, storage/access to information, and information security. SAFETY.md should help clinical safety evidence sit alongside those assurance domains without pretending the CSO owns them all.

See:

- [`spec/mappings/dcb0129-to-safety-md.md`](./spec/mappings/dcb0129-to-safety-md.md)
- [`spec/mappings/dcb0160-to-safety-md.md`](./spec/mappings/dcb0160-to-safety-md.md)
- [`spec/mappings/iso14971-dcb-to-safety-md.md`](./spec/mappings/iso14971-dcb-to-safety-md.md)
- [`spec/mappings/duaa2025-to-safety-md.md`](./spec/mappings/duaa2025-to-safety-md.md)
- [`legislation/cso-briefing-data-use-and-access-act-2025.md`](./legislation/cso-briefing-data-use-and-access-act-2025.md)

Terminology is tracked in [`GLOSSARY.md`](./GLOSSARY.md).

## Document control

Git-based document control is still document control.

SAFETY.md uses commits, branches, pull requests, reviews, approvals, tags, releases, and repository history to implement the aims of document control in a way that fits modern software development.

## Skills and installation

Executable SAFETY.md skills currently live in [`.agents/skills/`](./.agents/skills/). They are intentionally user-invoked so clinical safety and regulatory workflows only run when the user deliberately chooses them.

Near-term distribution is Git-based: use this repository as the canonical source and install/copy selected skills into a project-local `.agents/skills` directory or a personal `~/.agents/skills/` directory.

```sh
scripts/install-zed-skills.sh --scope global
scripts/install-zed-skills.sh --scope project --project /path/to/project
```

See [`spec/skills/distribution.md`](./spec/skills/distribution.md) for the planned path toward richer discovery metadata, Claude Code plugin packaging, and other agent harnesses.

## Status

Draft / active development.
