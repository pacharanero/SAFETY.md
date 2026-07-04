# DCB0160 upstream Markdown renderings

This folder contains first-pass Markdown/text renderings of the upstream DCB0160 source documents stored in [`resources/dcb0160/`](../../resources/dcb0160/).

These files are intended to become the checked canonical Markdown versions in this repository. Until artefact review is complete, treat them as extracted renderings rather than polished normative text.

| File | Upstream document | Status |
|---|---|---|
| [`specification.md`](./specification.md) | Specification (Amd 25/2018) | First-pass extraction; needs artefact review. |
| [`implementation-guidance.md`](./implementation-guidance.md) | Implementation Guidance (Amd 25/2018) | First-pass extraction; needs artefact review. |
| [`information-standards-notice.md`](./information-standards-notice.md) | Information Standards Notice (Amd 25/2018) | First-pass extraction; needs artefact review. |
| [`change-specification.md`](./change-specification.md) | Change Specification (Amd 25/2018) | First-pass extraction; needs artefact review. |

## Review checklist

- [ ] Remove page headers/footers introduced by PDF extraction where they are not meaningful content.
- [ ] Fix spacing artefacts introduced by PDF extraction.
- [ ] Check tables for missing columns, wrapped rows, or merged cells.
- [ ] Preserve known upstream typos only if deliberately annotated.
- [ ] Compare against the source PDF before marking as checked.
- [ ] Add reviewed-by/date metadata when complete.
