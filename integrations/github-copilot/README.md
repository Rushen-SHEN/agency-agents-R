# GitHub Copilot Integration

The Agency works with GitHub Copilot out of the box. No conversion needed —
agents use the existing `.md` + YAML frontmatter format.

## Quick Install

```bash
# Copy all 194 agents to your GitHub Copilot agent directories
./scripts/install.sh --tool copilot
```

## Full Setup (Cursor-equivalent experience)

Three additional steps unlock slash commands, the agent picker, and NEXUS pipeline prompts.

### Step 1 — Install agents (done by quick install above)

Installs 194 `.md` agents to `~/.github/agents/` and `~/.copilot/agents/`.

### Step 2 — Install skills (slash commands via `~/.copilot/skills/`)

```bash
# Generate cursor skills first (they are the source for skills)
./scripts/convert.sh --tool cursor

# Copy all skills including nexus to the Copilot skills directory
cp -r integrations/cursor/skills/* ~/.copilot/skills/
```

This installs 195 skills including `nexus` (which bundles the full NEXUS strategy,
all phase playbooks, runbooks, handoff templates, and dispatch references).

### Step 3 — Configure VS Code settings

Add to `~/Library/Application Support/Code/User/settings.json` (macOS) or the
equivalent path on your OS:

```json
"chat.agentFilesLocations": [
  "~/.github/agents",
  "~/.copilot/agents"
]
```

This makes all 194 agents appear in the Copilot Chat agent picker dropdown.
Restart VS Code after editing.

### Step 4 — Add NEXUS prompt files (optional)

Create prompt files in your VS Code User Prompts folder
(`~/Library/Application Support/Code/User/prompts/` on macOS) to get
one-click NEXUS pipeline activation via the `/` menu.

**`nexus-full.prompt.md`** — Complete product build (Phase 0–6):
```markdown
---
name: nexus-full
description: "Launch NEXUS-Full pipeline for a complete product build."
agent: agent
---
Activate Agents Orchestrator in NEXUS-Full mode.
Project: $input
[paste full prompt from strategy/QUICKSTART.md]
```

**`nexus-sprint.prompt.md`** — Feature or MVP (2–6 weeks):
```markdown
---
name: nexus-sprint
description: "Launch NEXUS-Sprint for a feature or MVP build."
agent: agent
---
Activate Agents Orchestrator in NEXUS-Sprint mode.
Feature/MVP: $input
[paste sprint prompt from strategy/QUICKSTART.md]
```

**`nexus-micro.prompt.md`** — Single task (1–5 days):
```markdown
---
name: nexus-micro
description: "Launch NEXUS-Micro for a targeted single task."
agent: agent
---
Activate Agents Orchestrator in NEXUS-Micro mode.
Task: $input
[paste micro prompt from strategy/QUICKSTART.md]
```

See [strategy/QUICKSTART.md](../../strategy/QUICKSTART.md) for the full prompt text
for each mode.

## Activation

### Slash commands (requires Step 2)

Type `/` in Copilot Chat to see all skills as slash commands:

```
/nexus
/frontend-developer
/backend-architect
/evidence-collector
```

### Agent picker (requires Step 3)

Use the agent dropdown in Copilot Chat to switch to any of the 194 agent personas.

### Named activation (always available)

```
Activate Frontend Developer and help me build a React component.
Use the Reality Checker agent to verify this feature is production-ready.
Activate Agents Orchestrator in NEXUS-Sprint mode for this feature.
```

### NEXUS pipeline prompts (requires Step 4)

```
/nexus-full    → complete product build
/nexus-sprint  → feature or MVP
/nexus-micro   → bug fix, audit, campaign, or research task
```

## Capability Comparison

| Feature | Cursor | VS Code + Copilot |
|---------|--------|-------------------|
| Slash commands (`/nexus`, `/frontend-developer`) | ✅ native | ✅ via `~/.copilot/skills/` |
| Agent persona picker | ✅ native | ✅ via `chat.agentFilesLocations` |
| NEXUS references auto-loaded with `/nexus` | ✅ | ✅ progressive loading |
| NEXUS pipeline one-click prompts | manual | ✅ via user prompt files |

## Agent Directory

Agents are organized into divisions. See the [main README](../../README.md) for
the full current roster.
