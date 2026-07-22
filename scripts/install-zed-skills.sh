#!/usr/bin/env sh
set -eu

# Backwards-compatible wrapper. The skill pack now uses a harness-neutral installer name.
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
exec "$script_dir/install-skills.sh" "$@"
