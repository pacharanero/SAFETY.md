# SAFETY.md

Following the pattern of common GitHub Markdown files like `CONTRIBUTING.md` and `CODE_OF_CONDUCT.md`, **`SAFETY.md`** is a standard file set and schema for clinical safety documentation in software projects.

It aims to provide a modern, teamwork-friendly implementation path for compliance with NHS standards like DCB0129 and DCB0160, while also being flexible enough to be adopted by a wide range of projects.

It can start as simply as a single `SAFETY.md` file with embedded hazard information for a low-risk tool, and scale up to a full set of files for a complex regulated medical device.

**21st Century Version Control**: Forget about clumsy, out-of-date 'document control' tables in Word. Simply by using Git and Markdown files, teams can maintain a clear audit trail of safety decisions and changes over time. Attribution of edits is clear from the commit history.

**Codebase Integration**: Code changes that impact safety documentation can be linked to specific commits, and the `SAFETY.md` file set can evolve alongside the codebase in a natural way.

**Grown-up Hazard Management**: Hazard mitigation can be evidenced through commit messages and pull request discussions, rather than relying on a creaking Excel spreadsheet.

**LLM-friendly**: The files-on-disk approach makes it easy for AI tools to parse and adapt safety documentation, while still being human-readable. LLMs are potentially a vital tool for helping teams maintain and evolve their safety documentation, without in any way diminishing the critical human role in making safety decisions.

## Files and Tiering

### Tier 1

To start with, all you need is
- `SAFETY.md` — the main safety file with project overview, safety strategy, and hazard summary

### Tier 2

As work progresses, you can add more files as needed:

- `SAFETY-CASE.md` — detailed clinical safety case with arguments and evidence
- `HAZARD-LOG.md` — simple hazard log in Markdown format in a single file
- `SAFETY-PLAN.md` — clinical safety management plan with processes and responsibilities

### Tier 3

Once you have a few Clinical Safety documents you are likely to want to collect them together into a folder - this might be a `safety/` folder, or a `docs/safety/` folder, or something else. The important thing is that the `SAFETY.md` file is still in the root of the repository and references the other files correctly.

Hazard Log becomes a multiple-file system, with one file per hazard, generated from template and a GitHub Action to enforce that all hazards are linked from `SAFETY.md` and have the required frontmatter fields.

### Tier 4

In a larger project, clinical safety documentation might be large enough to warrant being separated out into its own repository, with links to potentially several code repositories. This is not a common scenario but is possible within the SAFETY.md framework.
