# Upstream reference resources

This directory contains upstream reference material relevant to the SAFETY.md specification and its relationship to UK health and care information standards.

These files are retained as source evidence and context. They are not themselves normative SAFETY.md text. Where SAFETY.md maps to, interprets, or responds to these sources, that interpretation should live in the specification, mappings, or explanatory material rather than by editing the upstream documents.

Readable reconstructions and role-specific briefings derived from legislation sources live in [`../legislation/`](../legislation/). First-pass Markdown/text renderings of upstream documents live in [`../upstream/`](../upstream/). Crosswalks from upstream concepts to SAFETY.md live in [`../spec/mappings/`](../spec/mappings/).

## Scope

| Folder | Contents | Status |
|---|---|---|
| [`dcb0129/`](./dcb0129/) | NHS England DCB0129 2018 Update documents for clinical risk management in the manufacture of health IT systems. | Current published standard at date of access. |
| [`dcb0160/`](./dcb0160/) | NHS England DCB0160 2018 Update documents for clinical risk management in the deployment and use of health IT systems. | Current published standard at date of access. |
| [`data-safety/`](./data-safety/) | Data safety and agile-development clinical risk management guidance. | Upstream/context material; provenance incomplete. |
| [`templates/`](./templates/) | Upstream clinical safety document templates. | Source artefacts for future SAFETY.md-native templates; provenance incomplete. |
| [`legislation/`](./legislation/) | Legislation or Acts that may affect health IT, clinical safety, information standards, or data use. | Context for future SAFETY.md alignment work. |

## Consultation material

Material relating to active or recent consultations should not be committed here unless and until it becomes part of the stable reference record for the project. Consultation notes, draft responses, and analysis may inform SAFETY.md work, but should be kept outside this repository or in a clearly separate non-published working area.

## Provenance requirements

Each upstream reference folder should include a `manifest.md` recording:

- document title;
- local filename, where a copy is stored;
- source URL or authoritative landing page;
- publishing body;
- release/version/date, where known;
- date accessed;
- status, for example current, superseded, consultation, enacted legislation;
- checksum for stored binary files, where applicable;
- licence/re-use position, where known.

## Date of access

Unless otherwise stated in a per-folder manifest, resources in this directory were accessed on **2026-07-03**.
