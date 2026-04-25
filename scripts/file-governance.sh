#!/usr/bin/env bash

set -euo pipefail

MODE="audit"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [[ "${1:-}" == "--fix" ]]; then
  MODE="fix"
elif [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  cat << 'INNER_EOF'
Usage: ./scripts/file-governance.sh [--fix]

Modes:
  audit (default)  - report governance issues
  --fix            - remove safe junk files after reporting
INNER_EOF
  exit 0
fi

cd "$ROOT"

echo "[file-governance] root: $ROOT"
echo "[file-governance] mode: $MODE"
echo

# Portable replacement for mapfile
junk_files=()
while IFS= read -r line; do
  [[ -n "$line" ]] && junk_files+=("$line")
done < <(find . -type f \( -name '.DS_Store' -o -name '*~' -o -name '*.tmp' \) -not -path './.git/*' | sort)

duplicate_like=()
while IFS= read -r line; do
  [[ -n "$line" ]] && duplicate_like+=("$line")
done < <(find . -type f \( -name '* (1)*' -o -name '* (2)*' -o -name '* (3)*' \) -not -path './.git/*' | sort)

empty_dirs=()
while IFS= read -r line; do
  [[ -n "$line" ]] && empty_dirs+=("$line")
done < <(find . -type d -empty -not -path './.git/*' -not -path './.git' | sort)

echo "== Junk files (safe to remove) =="
if [[ ${#junk_files[@]} -eq 0 ]]; then
  echo "none"
else
  printf '%s\n' "${junk_files[@]}"
fi
echo

echo "== Duplicate-like filenames (manual review) =="
if [[ ${#duplicate_like[@]} -eq 0 ]]; then
  echo "none"
else
  printf '%s\n' "${duplicate_like[@]}"
fi
echo

echo "== Empty directories (manual review) =="
if [[ ${#empty_dirs[@]} -eq 0 ]]; then
  echo "none"
else
  printf '%s\n' "${empty_dirs[@]}"
fi
echo

if [[ "$MODE" == "fix" && ${#junk_files[@]} -gt 0 ]]; then
  echo "[fix] deleting safe junk files..."
  for file in "${junk_files[@]}"; do
    rm -f "$file"
    echo "deleted: $file"
  done
  echo
fi

issue_count=$(( ${#junk_files[@]} + ${#duplicate_like[@]} + ${#empty_dirs[@]} ))
echo "[summary] junk=${#junk_files[@]} duplicate_like=${#duplicate_like[@]} empty_dirs=${#empty_dirs[@]}"

if [[ "$MODE" == "audit" && $issue_count -gt 0 ]]; then
  exit 1
fi

exit 0
