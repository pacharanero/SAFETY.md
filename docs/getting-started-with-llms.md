# Getting started with SAFETY.md and an LLM

This guide assumes you understand clinical safety or medical-device work, but may never have cloned a Git repository, installed an agent skill, or used a coding assistant.

The short version is:

1. Open the **software project's folder** in an AI coding tool.
2. Install SAFETY.md into that project.
3. Explicitly ask the tool to run `safety-md-router` or `safety-md-csmf`.
4. Treat everything it writes as a draft requiring evidence and CSO review.

## First: what are we installing, and where?

You will be dealing with two separate repositories/folders:

- **The SAFETY.md toolkit repository** — this repository, downloaded from <https://github.com/pacharanero/SAFETY.md>. It contains the standards, templates, source material, and skills.
- **Your software project repository** — the actual product or service whose clinical safety documentation you want to create.

Do not create your product's safety case inside the SAFETY.md toolkit repository. Install the toolkit into the software project, then let the LLM create `SAFETY.md`, `SAFETY-CASE.md`, `HAZARD-LOG.md`, and any other required evidence in the software project.

## What sort of LLM tool do I need?

Use an **AI coding agent** that can open a folder, read its files, and create or edit files. Examples include Zed Agent, Claude Code, Codex CLI, OpenCode, Gemini CLI, or an IDE with an agent mode.

A normal browser chat window cannot automatically inspect or edit your local project. You can upload files manually, but that loses much of the “safety close to code” benefit. Prefer a coding agent with the project folder open.

SAFETY.md currently has first-class project-local Agent Skills in `.agents/skills/`. Zed and compatible harnesses can discover these directly. Other tools may not yet recognise the skill format, so the installer also adds a `.safety-md/START-HERE.md` file that **any file-aware coding agent** can follow.

## Recommended route: ask your coding agent to install it

Open your software project in the coding agent. Paste this exact prompt:

```text
Set up the SAFETY.md toolkit in this project, but do not generate any clinical safety documentation yet.

Please:
1. Clone https://github.com/pacharanero/SAFETY.md.git into a separate temporary or tools folder, not inside this project's source tree.
2. From that clone, run the appropriate project bootstrap script against the currently open project:
   - macOS/Linux/Git Bash: sh scripts/embed-in-project.sh --project "<absolute path to this project>"
   - Windows PowerShell: scripts/embed-in-project.ps1 -Project "<absolute path to this project>"
3. Confirm that this project now contains:
   - .safety-md/START-HERE.md
   - .agents/skills/safety-md-router/SKILL.md
   - .agents/skills/safety-md-csmf/SKILL.md
4. Stop and tell me exactly what was installed. Do not run a SAFETY.md skill until I explicitly ask.
```

The agent should work out the current project's absolute path. If it asks permission to run `git clone` or the installer, review the command and approve it.

When it finishes, continue at [Start the first SAFETY.md session](#start-the-first-safetymd-session).

## Manual route: install it yourself

### Step 1: find your software project's folder

You need the folder containing the software project. It will normally contain files such as `README.md`, source code, and possibly a hidden `.git` directory.

Example paths:

- macOS: `/Users/alex/code/my-health-app`
- Linux: `/home/alex/code/my-health-app`
- Windows: `C:\Users\Alex\code\my-health-app`

If you do not know the path, open the project in your coding tool and ask: **“What is the absolute path of the currently open project?”**

### Step 2: download the SAFETY.md toolkit

#### Option A — clone with Git

Open Terminal on macOS/Linux, Git Bash on Windows, or a terminal inside your coding tool. Run:

```sh
git clone https://github.com/pacharanero/SAFETY.md.git
cd SAFETY.md
```

“Clone” simply means “download a working copy of the repository, including its version history”.

If `git` is not installed, either install [Git](https://git-scm.com/downloads) or use Option B.

#### Option B — download a ZIP without Git

1. Visit <https://github.com/pacharanero/SAFETY.md>.
2. Select **Code**.
3. Select **Download ZIP**.
4. Extract/unzip the downloaded file.
5. Open a terminal in the extracted `SAFETY.md-main` folder.

The toolkit works from a ZIP, but Git makes future updates easier.

### Step 3: embed SAFETY.md into your project

#### macOS, Linux, or Windows Git Bash

From inside the downloaded SAFETY.md toolkit folder, run:

```sh
sh scripts/embed-in-project.sh --project "/full/path/to/your/software-project"
```

Example:

```sh
sh scripts/embed-in-project.sh --project "/Users/alex/code/my-health-app"
```

#### Windows PowerShell

From inside the downloaded SAFETY.md toolkit folder, run:

```powershell
.\scripts\embed-in-project.ps1 -Project "C:\full\path\to\your\software-project"
```

Example:

```powershell
.\scripts\embed-in-project.ps1 -Project "C:\Users\Alex\code\my-health-app"
```

If PowerShell blocks the script because of local execution policy, run it for this process only:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\embed-in-project.ps1 -Project "C:\Users\Alex\code\my-health-app"
```

The installer will refuse to overwrite an existing SAFETY.md installation. To update it deliberately, add `--force` on macOS/Linux/Git Bash or `-Force` in PowerShell.

## Check that installation worked

Open your **software project**, not the toolkit clone. You should now have:

```text
your-software-project/
  .agents/
    skills/
      safety-md-router/
      safety-md-csmf/
      safety-md-hazard-workshop/
      ...
  .safety-md/
    START-HERE.md
    GLOSSARY.md
    spec/
    templates/
```

This has not yet created a safety case. It has installed the instructions and user-invoked skills needed to create one.

If those files are absent, ask the coding agent to show the installer output and confirm which project path it used.

## Start the first SAFETY.md session

Reopen or refresh the software project in your coding agent so it discovers the new files.

### If your tool shows installed skills

Explicitly invoke:

```text
safety-md-router
```

If you already know you want to create the initial Clinical Risk Management File, explicitly invoke:

```text
safety-md-csmf
```

The exact UI varies by tool. It may be a command palette item, slash command, skill picker, or a request such as: **“Run the `safety-md-csmf` skill.”**

### If your tool does not show skills

Paste this prompt:

```text
Read .safety-md/START-HERE.md and follow it.

Inspect this project before writing anything. Create a proportionate first draft of its repository-native clinical safety documentation. Mark unknowns as [PENDING]. Do not invent clinical context, evidence, approvals, CSO sign-off, risk acceptance, compliance, or safety claims.
```

The `.safety-md/` bundle exists specifically so this route works even when the tool cannot discover Agent Skills.

## What should the first session produce?

A useful first session should normally produce:

1. A root `SAFETY.md` explaining the product, roles, applicable standards, and current safety position.
2. A draft `SAFETY-CASE.md` where proportionate.
3. A draft `HAZARD-LOG.md`, or a clear link/plan for an issue-based hazard log.
4. A draft `SAFETY-PLAN.md` where proportionate.
5. A visible list of `[PENDING]` facts, questions, evidence gaps, and decisions.

The LLM should inspect the repository and ask questions. It should not silently fill gaps with plausible-sounding content.

## A good opening description for the LLM

You will get better results if you provide a short briefing such as:

```text
This product is [what it does].
Its intended users are [users].
It is used in [clinical/deployment context].
Our organisation acts as [manufacturer/supplier/deployer/operator/maintainer/unclear].
We believe [DCB0129/DCB0160/both/unclear] applies.
The named CSO is [name and registration, or PENDING].
Existing safety or regulatory evidence is at [locations, or none known].
The release/configuration currently being assessed is [version, or PENDING].
```

It is completely acceptable to write `unclear`, `none known`, or `[PENDING]`.

## What the LLM is good at

LLMs can help:

- read the product and explain its likely clinical context;
- turn scattered evidence into a structured first draft;
- propose hazards for human review;
- link hazards and controls to code, tests, issues, pull requests, and releases;
- find missing roles, assumptions, evidence, or unsupported claims;
- keep documentation current as the software changes.

## What the LLM cannot decide for you

Do not allow it to:

- invent a CSO, clinical context, approval, validation result, or risk acceptance;
- claim DCB0129, DCB0160, DTAC, MDR, ISO 14971, or DUAA2025 compliance because files exist;
- blur manufacturer/supplier evidence with deployment/use evidence;
- hide unknown or high residual risk behind reassuring prose;
- replace CSO judgement, clinical governance, regulatory review, or accountable human decisions.

## Should the installed files be committed to Git?

For a project-local installation, normally commit:

- `.agents/skills/safety-md-*` and `.agents/skills/_safety-md/`;
- `.safety-md/`;
- the generated root safety documentation.

This lets the project carry the same skill/template snapshot for every contributor and records updates through Git history.

If your organisation prefers globally installed personal skills, use `scripts/install-skills.sh --scope global` instead. Global skills are available across projects but are not automatically pinned in each project's version history.

## Updating SAFETY.md later

If you cloned with Git:

```sh
cd /path/to/your/SAFETY.md-toolkit-clone
git pull
sh scripts/embed-in-project.sh --project "/path/to/your/software-project" --force
```

On Windows PowerShell:

```powershell
cd C:\path\to\your\SAFETY.md-toolkit-clone
git pull
.\scripts\embed-in-project.ps1 -Project "C:\path\to\your\software-project" -Force
```

Review and commit the resulting changes in the software project. An update must not overwrite project safety decisions; it updates the installed toolkit and skills, not the generated `SAFETY.md`/safety case/hazard log files.

## If this still feels difficult

That is a distribution problem for SAFETY.md, not a failure by the user. Open an issue describing:

- operating system;
- LLM/coding tool;
- whether the project is local or hosted on GitHub/GitLab;
- the step that was unclear or failed;
- the exact error message, with secrets removed.

The intended end state is a one-action install in common agent harnesses. Until harness-specific packages exist, `embed-in-project` is the supported low-friction route.
