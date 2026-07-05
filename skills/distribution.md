# SAFETY.md Skills Distribution Strategy

SAFETY.md should be both:

1. a canonical source repository for clinical safety references, templates, mappings, and conventions; and
2. an installable agentic tool that users can invoke to create and maintain high-quality clinical safety documentation.

This document describes the distribution direction for the SAFETY.md skill pack across agent harnesses.

## Current distribution state

The repository currently contains Zed-compatible project-local skills at:

```text
.agents/skills/<skill-name>/SKILL.md
```

All SAFETY.md skills are deliberately user-invoked:

```yaml
disable-model-invocation: true
```

This means users stay in control of when clinical safety, regulatory, and assurance workflows run.

## Distribution principles

- **GitHub repo as canonical source.** This repository is the source of truth for skills, templates, glossary, mappings, upstream references, and legislation notes.
- **User-invoked by default.** Clinical safety and regulatory workflows must not fire opportunistically from weak trigger matching.
- **One source of truth.** Avoid maintaining divergent skill bodies by hand for each harness. Prefer generated/adapted distributions from canonical sources.
- **Progressive support.** Start with plain Git install/copy patterns, then add harness-specific packaging where it brings real value.
- **No fake compliance.** Distribution should not make SAFETY.md look like a black-box compliance machine. It is a tool for producing and maintaining evidence that requires human clinical/professional review.

## Harness support matrix

| Harness / ecosystem | Current status | Likely packaging approach | Notes |
|---|---|---|---|
| Zed Agent | Supported in-repo | `.agents/skills/<name>/SKILL.md` | Current layout should work as project-local skills. Users can copy to `~/.agents/skills/` for global use. |
| Claude Code | Not packaged yet | Claude Code plugin with skills under plugin structure | Needs plugin manifest/layout. ArcKit is a useful reference implementation. |
| Codex CLI | Not packaged yet | Convert skills into `.agents/skills/<name>/SKILL.md` plus any Codex-specific metadata if needed | Current Zed-style skills may already be close, but test discovery/invocation. |
| OpenCode | Not packaged yet | Convert to command/skill format expected by OpenCode | ArcKit converter patterns may be reusable. |
| Gemini CLI | Not packaged yet | Extension/command format | Likely needs conversion, not direct reuse. |
| GitHub Copilot | Not packaged yet | Prompt files / custom instructions / slash-command prompts | Skills may need flattening into prompt files. |
| ArcKit | External consumer | Feed SAFETY.md templates/skills into ArcKit NHS overlay | ArcKit can remain broad governance harness; SAFETY.md is specialist safety source. |

## Minimal install model

The simplest install/distribution model is GitHub plus documented copy paths.

### Project-local install

Users copy or vendor this repository's skills into their project:

```text
<project>/.agents/skills/safety-md-csmf/
<project>/.agents/skills/safety-md-hazard-workshop/
...
```

This is best when SAFETY.md skills should travel with the project and be version-controlled.

### Global/personal install

Users copy selected skills to:

```text
~/.agents/skills/safety-md-csmf/
~/.agents/skills/safety-md-hazard-workshop/
...
```

This is best for a CSO or safety engineer who wants the tools available across many repos.

### Git submodule/subtree/vendor pattern

Possible future pattern:

```text
<project>/vendor/SAFETY.md/.agents/skills/
```

But most harnesses discover skills from fixed locations, so a small install script may be more practical than asking users to wire paths manually.

## Recommended repository layout for distribution

Keep canonical skill sources here:

```text
.agents/skills/
```

Add generated/packaged distributions later under:

```text
dist/
  zed/
  claude-code-plugin/
  codex/
  opencode/
  gemini/
  copilot/
```

Do not hand-maintain each `dist/` target. Generate or sync from `.agents/skills/` where practical.

## Install script

The initial installer is:

```text
scripts/install-zed-skills.sh
```

Examples:

```sh
scripts/install-zed-skills.sh --scope global
scripts/install-zed-skills.sh --scope project --project /path/to/project
scripts/install-zed-skills.sh --target /custom/.agents/skills
```

It:

- copies `.agents/skills/safety-md-*` into `~/.agents/skills/`, a target project's `.agents/skills/`, or a custom target;
- refuses to overwrite existing skills unless `--force` is passed;
- prints installed skill names;
- preserves references/templates.

## Claude Code plugin direction

A Claude Code plugin would make SAFETY.md easier to install in Claude Code and possibly easier to publish/discover.

Likely plugin contents:

```text
plugins/safety-md-claude/
  .claude-plugin/plugin.json
  skills/
    safety-md-csmf/SKILL.md
    safety-md-hazard-workshop/SKILL.md
    ...
  commands/
    safety-md-csmf.md        # optional thin slash-command wrappers
    safety-md-review.md
  templates/
  references/
```

Open design questions:

- Should Claude Code expose slash commands as wrappers around user-invoked skills?
- Should there be a single `/safety-md` router command rather than many commands?
- How should the plugin access this repository's large source corpus without loading too much context?
- Should the plugin package the full `upstream/` corpus or fetch/reference it from GitHub?

ArcKit is the best local reference for plugin mechanics and multi-target conversion, but SAFETY.md should stay smaller and domain-focused.

## Multi-harness conversion direction

The skill bodies should remain written once in `.agents/skills/`.

A converter can adapt them to other harnesses by:

- stripping or translating unsupported frontmatter;
- preserving `disable-model-invocation` semantics where available;
- converting user-invoked skills into slash commands or prompt files where necessary;
- copying `references/` and `templates/`;
- generating a harness-specific README/index.

Conversion should preserve the core safety constraint:

> User deliberately invokes the clinical safety workflow.

If a harness cannot represent user-invoked skills cleanly, package SAFETY.md as explicit commands/prompts rather than auto-discovered skills.

## Discovery metadata

The repository includes a machine-readable index:

```text
skills.json
```

Possible fields:

```json
{
  "name": "safety-md-csmf",
  "path": ".agents/skills/safety-md-csmf",
  "summary": "Generate or update a repo-native Clinical Risk Management File",
  "user_invoked": true,
  "outputs": ["SAFETY.md", "SAFETY-CASE.md", "HAZARD-LOG.md"],
  "domains": ["DCB0129", "DCB0160", "DUAA2025"],
  "status": "draft"
}
```

This could support:

- documentation site generation;
- install scripts;
- conversion scripts;
- marketplace metadata.

## Versioning

The repo should eventually version:

- SAFETY.md specification version;
- upstream reference snapshot date;
- skill pack version;
- template/schema version.

Potential files:

```text
VERSION
skills/VERSION
schemas/VERSION
```

Before public distribution, define compatibility statements such as:

```text
SAFETY.md skills v0.1 target SAFETY.md spec v2.0.0-draft and upstream DCB0129/DCB0160 2018 Update sources accessed 2026-07-03.
```

## Distribution roadmap

- [x] Create project-local Zed-compatible skills in `.agents/skills/`.
- [ ] Add a root install/distribution section to `README.md`.
- [x] Add `skills.json` index.
- [x] Add `scripts/install-zed-skills.sh` for global/project install.
- [ ] Test project-local skills in Zed on `calc` and at least one real health-software repo.
- [ ] Test copying skills to `~/.agents/skills/` and invoking globally.
- [ ] Decide whether to package a Claude Code plugin or feed SAFETY.md into ArcKit's existing plugin structure first.
- [ ] Prototype Claude Code plugin layout if direct plugin distribution is preferred.
- [ ] Create a converter plan for Codex/OpenCode/Gemini/Copilot if demand exists.
- [ ] Add release/versioning metadata for the skill pack.
- [ ] Publish installation docs.

## Near-term recommendation

Do not start with a complex multi-harness plugin system.

Start with:

1. GitHub repo as canonical source.
2. `.agents/skills/` as canonical executable skill layout.
3. Clear install docs for project-local and global Zed-compatible use.
4. A simple installer script.
5. Real-world testing and gotcha collection.
6. Then package for Claude Code / ArcKit / other harnesses once the skill behaviour is proven.
