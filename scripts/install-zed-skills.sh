#!/usr/bin/env sh
set -eu

usage() {
  cat <<'EOF'
Install SAFETY.md skills into a Zed-compatible skills directory.

Usage:
  scripts/install-zed-skills.sh --scope global [--force]
  scripts/install-zed-skills.sh --scope project --project /path/to/project [--force]
  scripts/install-zed-skills.sh --target /custom/.agents/skills [--force]

Defaults:
  --scope global installs to ~/.agents/skills
  --scope project installs to <project>/.agents/skills

The script refuses to overwrite an existing skill unless --force is passed.
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

mkdir -p "$target"

installed=""
for src in "$source_dir"/safety-md-*; do
  [ -d "$src" ] || continue
  name=$(basename "$src")
  dest="$target/$name"
  if [ -e "$dest" ] && [ "$force" != "true" ]; then
    echo "Refusing to overwrite existing skill: $dest" >&2
    echo "Re-run with --force to replace it." >&2
    exit 1
  fi
  rm -rf "$dest"
  cp -R "$src" "$dest"
  installed="$installed $name"
done

cat <<EOF
Installed SAFETY.md skills to: $target
$installed

All installed skills are user-invoked. Use safety-md-router if unsure where to start.
EOF
