# Upstream Markdown/text renderings

This folder contains Markdown/text renderings of upstream source documents stored in [`resources/`](../resources/).

The purpose of these files is to make upstream clinical safety and health IT source material easier to review, quote, map, and compare in Git.

## Important status note

Most files in this folder are currently **first-pass extractions**. They are not yet fully checked canonical renderings unless explicitly marked as reviewed.

A first-pass extraction may contain:

- page headers or footers;
- line-wrap artefacts;
- broken tables;
- OCR/PDF extraction spacing errors;
- upstream typos that need annotation;
- loss of visual structure from Word/PDF/Excel originals.

## Folders

| Folder | Source material | Status |
|---|---|---|
| [`dcb0129/`](./dcb0129/) | DCB0129 2018 Update source documents | First-pass extraction; needs artefact review. |
| [`dcb0160/`](./dcb0160/) | DCB0160 2018 Update source documents | First-pass extraction; needs artefact review. |
| [`data-safety/`](./data-safety/) | Data safety and agile-development guidance | First-pass extraction; source provenance incomplete. |
| [`templates/`](./templates/) | Upstream clinical safety templates | First-pass extraction; source provenance incomplete. |

## Review workflow

Before marking a rendering as canonical:

1. Confirm the source URL, licence/re-use status, release/date, and checksum in the relevant `resources/*/manifest.md`.
2. Compare the rendering against the source PDF/DOCX/XLSX.
3. Remove extraction artefacts that are not part of the source meaning.
4. Preserve substantive upstream wording unless the file is explicitly marked as an interpretation or SAFETY.md adaptation.
5. Annotate known upstream typos rather than silently changing the meaning.
6. Add reviewed-by and reviewed-date metadata.
