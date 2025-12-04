#!/usr/bin/env bash
set -euo pipefail

role_dirs=$(git diff --cached --name-only --diff-filter=ACM | (grep '^roles/' || true) | cut -d/ -f1-2 | sort -u)

checked_roles=()

for role in $role_dirs; do
  if [ -d "$role" ]; then
    echo "Running docsible on $role"
    docsible --role "$role" --no-backup
    checked_roles+=("$role")
  fi
done

if [ ${#checked_roles[@]} -gt 0 ]; then
  echo "Checking for diffs in updated roles..."
  git diff --exit-code -- ${checked_roles[@]}
else
  echo "No roles to check."
fi
