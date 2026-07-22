#!/usr/bin/env sh
set -eu

usage() {
  cat <<'EOF'
Install the SAFETY.md skill pack and its shared references.

Usage:
  scripts/install-skills.sh --scope global [--force]
  scripts/install-skills.sh --scope project --project /path/to/project [--force]
  scripts/install-skills.sh --target /custom/.agents/skills [--force]

Defaults:
  --scope global installs to ~/.agents/skills
  --scope project installs to <project>/.agents/skills

The script refuses to overwrite an existing SAFETY.md skill pack unless --force is passed.
EOF
}

scope=""
project=""
target=""
force="false"

while [ "$#" -gt 0 ]; do
  case "$1" in
    --scope)
      scope="$2"
      shift 2
      ;;
    --project)
      project="$2"
      shift 2
      ;;
    --target)
      target="$2"
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

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)
source_dir="$repo_root/.agents/skills"
shared_target_name="_safety-md"

if [ ! -d "$source_dir" ]; then
  echo "Could not find source skills directory: $source_dir" >&2
  exit 1
fi

if [ -z "$target" ]; then
  case "$scope" in
    global)
      target="$HOME/.agents/skills"
      ;;
    project)
      if [ -z "$project" ]; then
        echo "--scope project requires --project /path/to/project" >&2
        exit 2
      fi
      if [ ! -d "$project" ]; then
        echo "Project directory does not exist: $project" >&2
        exit 2
      fi
      target="$project/.agents/skills"
      ;;
    "")
      echo "Specify --scope global, --scope project, or --target" >&2
      usage >&2
      exit 2
      ;;
    *)
      echo "Unknown scope: $scope" >&2
      exit 2
      ;;
  esac
fi

# Refuse before copying anything, so a failed update does not leave a partial pack.
if [ "$force" != "true" ]; then
  for src in "$source_dir"/safety-md-*; do
    [ -d "$src" ] || continue
    name=$(basename "$src")
    if [ -e "$target/$name" ]; then
      echo "Refusing to overwrite existing skill: $target/$name" >&2
      echo "Re-run with --force to replace the installed SAFETY.md pack." >&2
      exit 1
    fi
  done
  if [ -e "$target/$shared_target_name" ]; then
    echo "Refusing to overwrite existing shared references: $target/$shared_target_name" >&2
    echo "Re-run with --force to replace the installed SAFETY.md pack." >&2
    exit 1
  fi
fi

mkdir -p "$target"

installed=""
for src in "$source_dir"/safety-md-*; do
  [ -d "$src" ] || continue
  name=$(basename "$src")
  dest="$target/$name"
  rm -rf "$dest"
  cp -R "$src" "$dest"
  installed="$installed $name"
done

# Package the repository-level material referenced by installed skills. This keeps
# installed skills useful when the canonical SAFETY.md repository is not open.
shared="$target/$shared_target_name"
rm -rf "$shared"
mkdir -p "$shared/spec/mappings" "$shared/legislation" "$shared/templates"
cp "$repo_root/GLOSSARY.md" "$shared/GLOSSARY.md"
cp "$repo_root/spec/specification.md" "$shared/spec/specification.md"
cp "$repo_root/spec/mappings/"*.md "$shared/spec/mappings/"
cp "$repo_root/legislation/health-and-social-care-act-2012-information-standards-as-amended.md" "$shared/legislation/"
cp "$repo_root/legislation/cso-briefing-data-use-and-access-act-2025.md" "$shared/legislation/"
cp "$repo_root/templates/"*.md "$shared/templates/"
cat > "$shared/README.md" <<'EOF'
# SAFETY.md installed references

This directory is installed support material for the neighbouring `safety-md-*` skills.

Canonical source: https://github.com/pacharanero/SAFETY.md

Do not use the presence of these files as evidence of compliance. Generated clinical safety documentation still requires project-specific evidence, review, and appropriate CSO sign-off.
EOF

cat <<EOF
Installed SAFETY.md skills and shared references to:
  $target

Skills:$installed

All SAFETY.md skills are user-invoked. Start with:
  safety-md-router

To update this installation later, pull the SAFETY.md repository and rerun this command with --force.
EOF
