# Cursor Integration

Converts The Agency into **global Cursor skills** installed under
`~/.cursor/skills/`.

This integration is built around **NEXUS** as the top-level orchestrator:

- Every agent becomes a globally available Cursor skill
- `nexus` becomes the pipeline controller
- The `nexus` skill bundles `strategy/nexus-strategy.md`, phase playbooks,
  runbooks, handoff templates, and strategy-dispatch references

## Install

```bash
./scripts/convert.sh --tool cursor
./scripts/install.sh --tool cursor
```

This creates skill folders like:

```text
~/.cursor/skills/
  nexus/
    SKILL.md
    references/
  frontend-developer/
    SKILL.md
  backend-architect/
    SKILL.md
```

## Use in Cursor

Skills are global, so they are available across all your projects.

Start with the orchestrator:

```text
/nexus
```

Then ask for a mode or pipeline:

```text
Activate NEXUS in NEXUS-Sprint mode for this feature and dispatch the right specialists.
```

You can also call a specialist directly:

```text
/frontend-developer
Review this React component for performance issues.
```

## Regenerate

```bash
./scripts/convert.sh --tool cursor
```
