#!/usr/bin/env sh
set -eu

usage() {
  cat <<'EOF'
Embed the SAFETY.md toolkit into a software project.

Usage:
  scripts/embed-in-project.sh --project /path/to/project [--force]

This installs:
  <project>/.agents/skills/safety-md-*   User-invoked agent skills
  <project>/.safety-md/                  Shared guidance, mappings, and templates

Use --force to update an existing SAFETY.md toolkit installation.
This does not generate project safety documentation; invoke safety-md-router or
ask your LLM to read .safety-md/START-HERE.md after installation.
EOF
}

project=""
force="false"

while [ "$#" -gt 0 ]; do
  case "$1" in
    --project)
      project="$2"
      shift 2
      ;;
    --force)
      force="true"
      shift
      ;;
    --help|-h)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

if [ -z "$project" ]; then
  echo "--project /path/to/project is required" >&2
  usage >&2
  exit 2
fi

if [ ! -d "$project" ]; then
  echo "Project directory does not exist: $project" >&2
  exit 2
fi

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)
toolkit="$project/.safety-md"

if [ -e "$toolkit" ] && [ "$force" != "true" ]; then
  echo "Refusing to overwrite existing toolkit: $toolkit" >&2
  echo "Re-run with --force to update it." >&2
  exit 1
fi

skill_force=""
if [ "$force" = "true" ]; then
  skill_force="--force"
fi

"$script_dir/install-skills.sh" --scope project --project "$project" $skill_force

rm -rf "$toolkit"
mkdir -p "$toolkit/spec/mappings" "$toolkit/legislation" "$toolkit/templates"
cp "$repo_root/GLOSSARY.md" "$toolkit/GLOSSARY.md"
cp "$repo_root/spec/specification.md" "$toolkit/spec/specification.md"
cp "$repo_root/spec/mappings/"*.md "$toolkit/spec/mappings/"
cp "$repo_root/legislation/health-and-social-care-act-2012-information-standards-as-amended.md" "$toolkit/legislation/"
cp "$repo_root/legislation/cso-briefing-data-use-and-access-act-2025.md" "$toolkit/legislation/"
cp "$repo_root/templates/"*.md "$toolkit/templates/"

cat > "$toolkit/START-HERE.md" <<'EOF'
# Start here: use SAFETY.md in this project

This project has the SAFETY.md toolkit installed locally.

## If your LLM supports Agent Skills

Explicitly invoke `safety-md-router`, then choose the workflow you need. To create the initial safety documentation, invoke `safety-md-csmf`.

All SAFETY.md skills are user-invoked and must not run automatically.

## If your LLM does not support Agent Skills

Paste this prompt into the LLM while this project is open:

```text
Read .safety-md/START-HERE.md, .safety-md/spec/specification.md, the relevant files in .safety-md/spec/mappings/, and .safety-md/templates/.

Then inspect this project and draft proportionate repository-native clinical safety documentation. Start with a root SAFETY.md and add SAFETY-CASE.md, HAZARD-LOG.md, and SAFETY-PLAN.md only where proportionate.

Distinguish DCB0129 manufacturer/supplier obligations from DCB0160 deployment/use obligations. Treat ISO 14971/MDR as a separate assurance domain. Mark every unknown as [PENDING]. Do not invent clinical context, evidence, CSO sign-off, risk acceptance, compliance, approval, or safety claims.
```

## Expected first output

- root `SAFETY.md`;
- draft `SAFETY-CASE.md` if proportionate;
- draft `HAZARD-LOG.md` or a clear issue-based hazard-log plan;
- draft `SAFETY-PLAN.md` if proportionate;
- a list of `[PENDING]` questions and evidence gaps for the team and CSO.

The generated files begin the safety work. They do not prove compliance or replace CSO judgement.
EOF

cat > "$toolkit/README.md" <<'EOF'
# Installed SAFETY.md toolkit

Canonical source: https://github.com/pacharanero/SAFETY.md

Start with [`START-HERE.md`](./START-HERE.md).

This directory contains a deliberately small, project-local snapshot of SAFETY.md guidance, mappings, legislation notes, and templates. Update it by pulling the canonical repository and rerunning `scripts/embed-in-project.sh --project /path/to/project --force` from that clone.
EOF

cat <<EOF
Embedded SAFETY.md into:
  $project

Next step:
  Open the project in your LLM tool and invoke safety-md-router.

If the tool does not support skills, ask it to read:
  .safety-md/START-HERE.md
EOF
