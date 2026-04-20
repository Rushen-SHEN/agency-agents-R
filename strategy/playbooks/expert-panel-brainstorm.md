# 🧠 Expert Panel Brainstorm Playbook — Structured Escalation for Pipeline Blockers

> **Trigger**: Agents Orchestrator escalates a blocker that exceeds single-agent resolution after 3 retry attempts | **Output**: Exactly 3 ranked solution candidates + validation sprint plan | **Constraint**: No two voting specialists from the same NEXUS division

---

## Objective

When a pipeline blocker is architectural, strategic, or cross-domain — not just a fixable implementation bug — transform it into exactly 3 actionable, validated solution candidates through disciplined multi-domain input and constrained voting. Every brainstorm session ends with a ranked shortlist and a validation plan, never with "here are some ideas to consider."

## Pre-Conditions

- [ ] Task has exhausted 3 retry attempts in the Dev↔QA loop (Phase 3 mechanics), OR
- [ ] An agent has identified a blocker beyond its resolution capacity and escalated per Section 11.3 of nexus-strategy.md
- [ ] Blocker is classified as architectural, strategic, or cross-domain (not a fixable implementation bug — those stay in the Dev↔QA loop)
- [ ] Precise blocker definition completed (see Escalation Intake Form below)

## Critical Rules (Non-Negotiable)

| Rule | Description |
|------|-------------|
| **Domain diversity** | No two voting specialists from the same NEXUS division. Minimum 3 divisions represented, ideally 4–5. A panel of five engineers is not a brainstorm — it is an echo chamber. |
| **Independent ideation** | Specialists generate candidates independently before seeing any other specialist's ideas. Convergence happens only in voting. This prevents anchoring on the first idea stated. |
| **Exactly 3 candidates** | The voting logic converges on 3. Fewer than 3 viable = incomplete session (refine problem statement). More than 3 = voting eliminates until 3 remain. |
| **Every candidate must be falsifiable** | Each candidate includes a specific validation test completable in 1–3 days. "Improve the architecture" is not a candidate. "Implement permission middleware with role-based checks and verify via 3 RBAC test cases" is a candidate. |
| **Blocker definition before ideation** | No ideation begins until the blocker is precisely defined with: what is blocked, what has been tried, what constraints exist, what success looks like. |
| **Validation before commitment** | No candidate is adopted until a micro-validation sprint confirms it works. The panel produces candidates; the validation sprint produces the decision. |
| **Conflict of interest** | Any specialist who caused the blocker (e.g., the engineer who wrote the failing code) participates as observer only, not as a voting member. |

## Blocker Classification Matrix

All agents listed below are from the existing NEXUS roster (nexus-strategy.md Appendix A).

| Blocker Type | Typical Specialists Needed | Typical Panel Size |
|-------------|---------------------------|-------------------|
| Security architecture | Backend Architect + DevOps Automator + Evidence Collector + Sprint Prioritizer | 4 |
| Frontend architecture | Frontend Developer + UX Architect + Sprint Prioritizer + Evidence Collector | 4 |
| Test infrastructure | Evidence Collector + API Tester + DevOps Automator + Backend Architect | 4 |
| Go-to-market readiness | Growth Hacker + Sprint Prioritizer + UX Architect + Content Creator | 4 |
| Performance / scalability | Performance Benchmarker + Infrastructure Maintainer + Backend Architect | 3 |
| Data model / schema | Backend Architect + Sprint Prioritizer + Analytics Reporter | 3 |
| Cross-domain strategic | One lead from each division (5–6 agents) | 5–6 |

## Panel Composition Rules

```
Minimum: 3 voting specialists from 3 different NEXUS divisions
Maximum: 6 voting specialists (beyond 6, voting becomes unwieldy)
Facilitator: Agents Orchestrator (non-voting — dispatches, collects, synthesizes)
Observer: Studio Producer (non-voting — approves final shortlist)

Diversity: No two voting specialists from same division
Relevance: At least 2 specialists must have direct expertise in the
  blocker's primary domain
Conflict: Any specialist who caused the blocker is observer-only
```

---

## Agent Activation Sequence

### Step 1: Escalation Intake (Before Any Ideation)

The Agents Orchestrator receives the escalation from the Dev↔QA loop (after 3 failed attempts per Section 11.3) and produces a precise blocker definition. No ideation begins until this form is complete.

```
Agents Orchestrator completes the Escalation Intake Form:

## Escalation Intake Form

### Blocker ID: [ESC-YYYY-MM-DD-NNN]
### Escalated by: [Agent name]
### Cycle: [Sprint/Phase]
### Timestamp: [ISO 8601]

### What is blocked
[Specific task, feature, or decision that cannot proceed]

### What has been tried
1. [Attempt 1 — what was done and why it failed]
2. [Attempt 2 — what was done and why it failed]
3. [Attempt 3 — what was done and why it failed]

### Constraints the solution must satisfy
- [Constraint 1 — non-negotiable]
- [Constraint 2 — non-negotiable]
- [Constraint 3 — preferred but negotiable]

### What success looks like
[Specific, measurable definition of "blocker resolved"]

### Impact if unresolved
- Blocked tasks: [list]
- Timeline impact: [estimate]
- Quality impact: [estimate]

### Blocker classification
[Security architecture / Frontend architecture / Test infrastructure /
 Go-to-market / Performance / Data model / Cross-domain strategic]
```

### Step 2: Panel Assembly

Based on blocker classification, the Agents Orchestrator selects 3–6 voting specialists from the NEXUS roster ensuring domain diversity.

```
Activate Expert Panel Brainstorm for blocker [ESC-ID].

Panel composition:
| Specialist | Division | Role |
|-----------|---------|------|
| [name] | [division] | Voting |
| [name] | [division] | Voting |
| [name] | [division] | Voting |
| [name] | [division] | Voting (if 4+) |
| Agents Orchestrator | — | Facilitator (non-voting) |
| Studio Producer | — | Observer (approves shortlist) |

Diversity check:
- Divisions represented: [count] (minimum 3) ✓/✗
- Domain expertise: [count] specialists with direct blocker expertise
  (minimum 2) ✓/✗
- Conflict check: No specialist who caused the blocker is voting ✓/✗
```

### Step 3: Independent Ideation (Parallel, No Communication)

Each specialist independently generates 1–3 candidate solutions. No specialist sees another's candidates during this phase.

```
Activate [SPECIALIST NAME] for Expert Panel Brainstorm ideation.

Blocker: [paste Escalation Intake Form]

Your task: Generate 1–3 candidate solutions from your domain perspective.

For each candidate, provide:
1. Description: What specifically does this solution do?
2. Feasibility: Can this be implemented given the stated constraints? (1–5)
3. Impact: How well does this solve the blocker without creating new
   problems? (1–5)
4. Risk: How complex is implementation? What are the side effects? (1–5)
5. Validation test: What specific test (completable in 1–3 days) would
   confirm or refute this candidate?

Rules:
- Do NOT discuss with other panel members before submitting
- Do NOT propose solutions outside your domain expertise without flagging it
- Be specific — "improve the architecture" is not a candidate
- Be honest about feasibility — do not propose what you cannot implement
```

### Step 4: Voting Phases (Sequential, Agents Orchestrator Facilitates)

The Agents Orchestrator collects all candidates and facilitates structured voting. Candidates are presented anonymously during feasibility and impact scoring to reduce anchoring on author identity.

```
PHASE 1 — Candidate Pool Assembly
  Agents Orchestrator collects all candidates and removes exact duplicates.
  Similar candidates are grouped (not merged — kept distinct).
  Typical pool size: 6–15 candidates.

PHASE 2 — Feasibility Filter
  Each specialist votes YES/NO on feasibility for each candidate.
  (Can this actually be implemented given our constraints?)
  Candidates with < 50% YES votes are eliminated.
  Typical survivors: 4–8 candidates.

PHASE 3 — Impact Scoring
  Each specialist scores remaining candidates: 1 (low) to 5 (high impact).
  Impact = how well does this solve the blocker AND avoid new problems?
  Candidates ranked by mean impact score.

PHASE 4 — Risk Assessment
  Each specialist scores remaining candidates: 1 (low risk) to 5 (high risk).
  Risk = implementation complexity + downstream side effects + reversibility.
  Final score = Impact Mean / Risk Mean (higher = better).

PHASE 5 — Top 3 Selection
  Top 3 candidates by final score advance.
  Tie at position 3: Studio Producer casts deciding vote.
  Remaining candidates are archived (not discarded — may be revisited).

PHASE 6 — Ranking
  Candidate A: Recommended (highest score)
  Candidate B: Fallback (second highest)
  Candidate C: Alternative (third highest, may suit different constraints)
```

### Step 5: Candidate Package Delivery

The Agents Orchestrator delivers the structured output to Studio Producer for sign-off.

```markdown
## Brainstorm Session Output

### Blocker: [ESC-ID]
[Precise problem statement]

### Panel Composition
| Specialist | Division | Role |
|-----------|---------|------|
| [name] | [division] | Voting |
| ... | ... | ... |
| Agents Orchestrator | — | Facilitator |

### Candidate A — Recommended
**Description**: [What this solution does, specifically]
**Feasibility**: [X/5 — why it's implementable]
**Impact**: [X/5 — how well it solves the blocker]
**Risk**: [X/5 — implementation complexity and side effects]
**Final Score**: [Impact/Risk = Y]
**Validation Test**: [Specific test that confirms or refutes this candidate]
**Validation Sprint**: [1–3 days — what will be built/tested]
**Owner**: [Which agent implements the validation]
**If validated**: [Full implementation path]
**If refuted**: [Fallback to Candidate B]

### Candidate B — Fallback
[Same format as Candidate A]

### Candidate C — Alternative
[Same format — note constraints under which this becomes preferable]

### Archived Candidates (did not advance)
| Candidate | Eliminated at | Reason |
|-----------|--------------|--------|
| [description] | Feasibility Filter | [reason] |
| [description] | Impact Scoring | [reason] |

### Studio Producer Sign-Off
[ ] Shortlist approved — proceed to validation sprint
[ ] Shortlist rejected — reason: [reason] — return to Phase 3 ideation
```

### Step 6: Validation Sprint (1–3 Days Per Candidate)

Each candidate runs a micro-validation sprint. Run in parallel where possible, or sequentially in ranked order where resources are constrained.

```
Activate [AGENT] for validation sprint on Candidate [A/B/C] for [ESC-ID].

Implement the minimum viable version of this candidate to test:
[Paste validation test from candidate package]

Success criteria: [from candidate package]
Failure criteria: [from candidate package]
Time limit: [1–3 days]

Output required:
- What was built/tested
- Result: VALIDATED / REFUTED
- Evidence: [file path, test output, screenshot, or CI log]
- If VALIDATED: full implementation plan + estimated completion
- If REFUTED: why it failed + what this tells us about the problem
```

### Step 7: Decision and Pipeline Resumption

```
Decision Protocol After Validation:

1. If Candidate A validates → adopt A, close blocker, resume pipeline
2. If Candidate A fails → validate Candidate B
3. If Candidate B fails → validate Candidate C
4. If all three fail → reconvene panel with new problem framing
   (failure of all 3 indicates the problem statement was incorrect,
   not that no solution exists)
```

The Agents Orchestrator archives the session:
```
docs/brainstorms/[ESC-ID]-[YYYY-MM-DD].md
```

## Fast-Track Mode (Time-Critical Blockers)

When a blocker is on the critical path and cannot wait for full panel assembly:

| Parameter | Standard | Fast-Track |
|-----------|----------|-----------|
| Panel size | 3–6 specialists | 3 specialists (minimum 2 divisions) |
| Ideation time | Unconstrained | 30 minutes per specialist |
| Voting phases | All 6 phases | Phases 2–4 only (facilitator decides ties) |
| Output | 3 candidates | 2 candidates |
| Validation sprint | 1–3 days | 24 hours |
| Use when | Standard blockers | Blocker delays > 1 day of pipeline progress |

## Quality Gate Checklist

| # | Criterion | Evidence Source | Status |
|---|-----------|----------------|--------|
| 1 | Blocker precisely defined with Escalation Intake Form | Intake form complete | ☐ |
| 2 | Panel has ≥3 divisions represented in voting members | Panel composition table | ☐ |
| 3 | No specialist who caused the blocker is a voting member | Conflict check | ☐ |
| 4 | Independent ideation completed (no cross-communication) | Specialist declarations | ☐ |
| 5 | Exactly 3 candidates produced with validation tests | Candidate package | ☐ |
| 6 | Studio Producer signed off on shortlist | Sign-off checkbox | ☐ |
| 7 | At least one candidate validated in micro-sprint | Validation sprint output | ☐ |
| 8 | Session archived | File system verification | ☐ |

## Gate Decision

**Gate Keeper**: Agents Orchestrator + Studio Producer

- **RESOLVED**: Validated candidate adopted, pipeline resumes from blocked task via Dev↔QA loop (Phase 3 mechanics)
- **RECONVENE**: All 3 candidates failed — reconvene panel with refined problem statement
- **DEFER**: Blocker cannot be resolved within current cycle — descope and document per Section 11.3 escalation protocol

## Handoff Back to Pipeline

```markdown
## Brainstorm → Pipeline Resumption Handoff

### Blocker: [ESC-ID]
### Resolution: Candidate [A/B/C] validated
### Validated by: [Agent] on [date]
### Evidence: [file path / test output / screenshot]

### Implementation Plan:
1. [Step 1 — owner — timeline]
2. [Step 2 — owner — timeline]
3. [Step 3 — owner — timeline]

### Resume from:
- Phase: [current phase]
- Task: [blocked task ID]
- Next action: [specific next step]
- Re-enters: Dev↔QA loop (Phase 3 mechanics)

### Lessons Learned:
- [What caused this blocker]
- [How to prevent similar blockers]
- [Process improvement recommendation]
```

---

*This playbook is triggered when the Dev↔QA loop exhausts retries on a non-implementation blocker (per Section 11.3 of nexus-strategy.md), or when any agent identifies a cross-domain problem requiring multi-specialist input. It produces exactly 3 candidates — not 2, not 7 — because a menu is not a decision.*
