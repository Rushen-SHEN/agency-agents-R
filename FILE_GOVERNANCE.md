# Repository File Governance

This repository uses a lightweight governance routine to keep the tree clean and predictable.

## Scope

- Keep source and docs files only.
- Prevent OS/editor junk from accumulating.
- Detect potential duplicate filenames and empty directories early.

## Rules

- Never commit system junk files such as `.DS_Store`.
- Avoid temporary editor artifacts (`*~`, `*.tmp`).
- Treat files named like `name (1).ext` as duplicates until reviewed.
- Review empty directories before deleting; some may be intentional placeholders.

## Audit Command

Run from repository root:

```bash
./scripts/file-governance.sh
```

Behavior:

- Prints safe junk files.
- Prints duplicate-like filenames for manual review.
- Prints empty directories for manual review.
- Returns non-zero if any issue is found.

## Safe Fix Command

```bash
./scripts/file-governance.sh --fix
```

Behavior:

- Performs the same scan.
- Deletes only safe junk files (`.DS_Store`, `*~`, `*.tmp`).
- Leaves duplicate-like files and empty directories untouched.

## Recommended Cadence

- Before opening a pull request.
- After large copy/move operations.
- As part of periodic repository maintenance.
