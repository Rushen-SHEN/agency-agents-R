# 🔍 Expert Panel Review Playbook — Post-Execution Independent Audit

> **Trigger**: After every NEXUS-Full, NEXUS-Sprint, or NEXUS-Micro cycle completes | **Reviewers**: 6 division leads + specialists from the existing NEXUS roster | **Gate Keeper**: Agents Orchestrator (synthesizing independent division reports)

---

## Objective

Conduct an independent quality audit after every execution cycle. Evaluate project completion quality and team performance through cross-division review where no reviewer assesses work they personally produced. Produce a single authoritative report with weighted grades, self-report accuracy analysis, cross-division convergence findings, and an actionable improvement path for the next cycle.

**Core principle**: "Written ≠ Done. Done ≠ Tested. Tested ≠ Run." Verified% is the only credible completion metric.

## Pre-Conditions

- NEXUS-Full, NEXUS-Sprint, or NEXUS-Micro cycle marked complete
- Pipeline status report or STATUS.md self-reported metrics available
- All code artifacts, test reports, and CI logs accessible to reviewers
- Phase 3 Dev↔QA loop data available (task pass rates, retry counts)

## Independence Rules (Non-Negotiable)

These rules cannot be waived. Any violation invalidates the review.


| Rule                                | Description                                                                                                                                          |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Reviewer separation**             | The agent who built, designed, or managed a work item cannot review that same work item. See Reviewer Assignment Matrix below.                       |
| **No cross-division communication** | Each division completes its assessment before any results are shared. The Agents Orchestrator collects all reports simultaneously.                   |
| **Evidence before verdict**         | Every finding must cite a specific artifact: file path + line number, test report path, screenshot, or CI log. Verbal assertions are not admissible. |
| **Default pessimism**               | All grades start at C. Evidence moves the grade upward. Effort, intent, and output volume do not raise a grade.                                      |
| **Conflict of interest**            | If a reviewer contributed to any aspect of the work under review, they must declare it and recuse from that specific finding.                        |


## Reviewer Assignment Matrix

Each division lead reviews work produced by *other* divisions, not their own. All leads listed below are existing agents from the NEXUS roster (see nexus-strategy.md Section 1.3 and Appendix A).


| Division Lead (Reviewer)           | Reviews (NOT their own work)                              | Does NOT Review                        |
| ---------------------------------- | --------------------------------------------------------- | -------------------------------------- |
| Sprint Prioritizer (Product)       | Engineering output for requirements traceability          | Requirements and backlog he authored   |
| UX Architect (Design)              | Engineering implementation quality + business readiness   | Her own CSS system and UX architecture |
| Backend Architect (Engineering)    | Test quality + infrastructure completeness                | His own code and API implementations   |
| DevOps Automator (Engineering/Ops) | Marketing/growth readiness + process compliance           | His own CI/CD and infrastructure work  |
| Evidence Collector (Testing)       | Engineering architecture decisions + requirements quality | His own test coverage claims           |
| Growth Hacker (Marketing)          | Engineering completeness from user-journey perspective    | His own growth mechanics and campaigns |


> **Why these leads?** They are the most active agents across Phase 0-6 with the deepest cross-phase visibility. Each has direct expertise in their review target: Sprint Prioritizer understands requirements traceability, Evidence Collector understands test quality from the Dev↔QA loop, etc.

## Panel Scale by Cycle Type


| Cycle Type   | Trigger Point                                            | Panel Scale                                                              |
| ------------ | -------------------------------------------------------- | ------------------------------------------------------------------------ |
| NEXUS-Full   | After each Phase Gate AND after full pipeline completion | Full panel (6 divisions)                                                 |
| NEXUS-Sprint | After every Sprint closes                                | Full panel (6 divisions)                                                 |
| NEXUS-Micro  | After task or fix is marked complete                     | Lightweight panel (3 divisions: Engineering + Testing + relevant domain) |


## Weighted Scoring Formula

```
Overall = Product(15%) + Design(15%) + Engineering(25%) + Ops(15%) + Testing(15%) + Marketing(15%)
```


| Score  | Grade   | Interpretation                                       |
| ------ | ------- | ---------------------------------------------------- |
| 90–100 | A / A-  | Production-ready, exemplary quality                  |
| 80–89  | B+ / B  | Solid work, minor gaps, conditionally deployable     |
| 70–79  | B-      | Functional but meaningful gaps, not production-ready |
| 60–69  | C+ / C  | Significant gaps, demo-conditional only              |
| 50–59  | C- / D+ | Major deficiencies, return to build phase            |
| < 50   | D / F   | Fundamental failures, architectural review required  |


## Self-Report Delta Flags


| Delta                 | Flag                 | Action Required                                |
| --------------------- | -------------------- | ---------------------------------------------- |
| > 5%                  | ⚠️ Attention         | Note in report                                 |
| > 10%                 | 🔴 Inflation warning | Explicit callout in summary                    |
| Verified% delta > 15% | 🚨 Integrity crisis  | Mandatory team retrospective before next cycle |


---

## Agent Activation Sequence

### Step 1: Dispatch (Immediately After Cycle Closes)

The Agents Orchestrator issues independent review assignments to all six division leads simultaneously. No division sees another's assignment.

```
Activate Expert Panel Review for [PROJECT] after [CYCLE ID] completion.

Cycle metadata:
- Cycle: [Sprint/Phase number]
- Date: [YYYY-MM-DD]
- Scope: [brief description of what was built]
- Self-reported metrics:
  - Backend%: [X%]
  - Frontend%: [X%]
  - Verified%: [X%]
  - Demo score: [X/10]

Dispatch all six division leads independently per the Expert Panel Review
Playbook. No cross-division communication until all reports are collected.
Every finding must cite a specific artifact (file:line, report path,
screenshot, CI log). Default grade: C — evidence required to move upward.
```

### Step 2: Independent Division Reviews (Parallel, No Communication)

All six divisions execute their reviews independently and simultaneously.

---

#### Division A — Product (Lead: Sprint Prioritizer)

**Reviews**: Engineering output + DevOps for requirements traceability
**Does NOT review**: Requirements and backlog he authored

```
Activate Sprint Prioritizer for independent Expert Panel Review of [CYCLE ID].

You are reviewing ENGINEERING and DEVSECOPS output for requirements
traceability — NOT your own backlog or prioritization decisions.
Do NOT communicate with other division leads until your report is submitted.

Assessment areas:
1. PDS/spec coverage — count implemented features vs. total specification
   items; verify each matches spec exactly
2. Requirements traceability — count traced requirements vs. total; identify
   zero-coverage spec items
3. Acceptance criteria verification — cross-reference task acceptance criteria
   against Evidence Collector screenshots and API Tester reports, NOT
   developer self-reports
4. Feature priority integrity — were high user-value features prioritized
   over low-value admin/config features?
5. Self-report accuracy — compare self-reported completion% against
   traceability evidence; flag delta > 5%

Required output:
- Spec coverage: X / Y features (Z%)
- Traceability: X / Y spec items tracked
- Top 3 findings (ranked by impact, with severity and evidence)
- Sprint Prioritizer performance grade: [A–D] with criterion table
- Improvement recommendations: [Action] — Owner — Timeline — Expected outcome
```

---

#### Division B — Design (Lead: UX Architect)

**Reviews**: Engineering implementation quality + marketing/growth demo readiness
**Does NOT review**: Her own CSS system and UX architecture

```
Activate UX Architect for independent Expert Panel Review of [CYCLE ID].

You are reviewing ENGINEERING IMPLEMENTATION QUALITY and GROWTH/MARKETING
demo readiness — NOT your own CSS design system or UX architecture.
Do NOT communicate with other division leads until your report is submitted.

Assessment areas:
1. Design system completeness — implemented UI components vs. design system
   specification; identify missing critical components
2. Page quality audit — heuristic evaluation per page: visual consistency,
   interaction patterns, empty/error states
3. Demo-blocker identification — issues preventing stakeholder demo
   (Demo-killer vs. Demo-friction), maximum 5, ranked by severity
4. Accessibility compliance — WCAG 2.1 AA: color contrast, keyboard
   navigation, semantic HTML
5. Design guidance timeliness — were specs provided before development?
   Rework caused by late guidance?

Required output:
- Design system: X / Y components (Z%)
- Page quality summary table (per page, A–D per dimension)
- Demo-blocker list (≤5, ranked)
- Accessibility grade: [A–D]
- UX Architect performance grade: [A–D] with criterion table
- Improvement recommendations
```

---

#### Division C — Engineering (Lead: Backend Architect)

**Reviews**: Test quality + infrastructure completeness
**Does NOT review**: His own code and API implementations

```
Activate Backend Architect for independent Expert Panel Review of [CYCLE ID].

You are reviewing TEST QUALITY (Evidence Collector + API Tester output) and
INFRASTRUCTURE COMPLETENESS (DevOps Automator + Infrastructure Maintainer
output) — NOT your own code or API implementations.
Do NOT communicate with other division leads until your report is submitted.

Assessment areas:
1. Backend completion — inspect router/procedure files for actual
   implementation vs. stub; count implemented vs. expected
2. Frontend completion — inspect page and component files; count
   implemented vs. expected
3. Security implementation integrity — verify permission/auth middleware
   has actual check logic (not empty function body); flag any security
   facade. CRITICAL: any permission/auth middleware with empty function
   body is automatically CRITICAL severity.
4. Architecture quality — consistency with Phase 1 architecture spec;
   absence of anti-patterns
5. Test accompaniment rate — tasks with companion tests vs. total tasks
   delivered

Required output:
- Backend%: X% (X / Y procedures)
- Frontend%: X% (X / Y pages)
- Security findings table (severity, file:line, fix required)
- Architecture quality: [A–D]
- Test accompaniment: X / Y tasks (Z%)
- Backend Architect performance grade: [A–D] with criterion table
- Improvement recommendations
```

---

#### Division D — Operations (Lead: DevOps Automator)

**Reviews**: Marketing/growth readiness + product process compliance
**Does NOT review**: His own CI/CD or infrastructure implementations

```
Activate DevOps Automator for independent Expert Panel Review of [CYCLE ID].

You are reviewing MARKETING/GROWTH READINESS and PRODUCT PROCESS COMPLIANCE —
NOT your own CI/CD pipeline or infrastructure work.
Do NOT communicate with other division leads until your report is submitted.

Assessment areas:
1. Security audit — auth system grade, permission system grade, vulnerability
   inventory (CRITICAL/HIGH/MEDIUM/LOW)
2. CI/CD actual verification — does a green CI run exist with a verifiable
   artifact? "CI workflow file exists" ≠ "CI has run successfully" — report
   both separately
3. Infrastructure completeness — do all docker-compose services have
   Dockerfiles or public images? Is one-command demo functional?
4. Production readiness verdict — YES / CONDITIONAL / NO with blocking items
5. Config written vs. config proven — classify every infrastructure artifact
   as PROVEN (has execution evidence) or AUTHORED (written but not run)

Required output:
- Security audit: Auth [A–D], Permissions [A–D], vulnerabilities by severity
- CI/CD: VERIFIED GREEN / AUTHORED UNVERIFIED / NOT PRESENT
- Infrastructure: PRODUCTION-READY / DEMO-READY / NOT READY
- Production readiness: YES / CONDITIONAL / NO
- Config proven vs. authored table
- DevOps Automator performance grade: [A–D] with criterion table
- Improvement recommendations
```

---

#### Division E — Testing (Lead: Evidence Collector)

**Reviews**: Engineering architecture decisions + product requirements quality
**Does NOT review**: His own test coverage claims

```
Activate Evidence Collector for independent Expert Panel Review of [CYCLE ID].

You are reviewing ENGINEERING ARCHITECTURE DECISIONS and PRODUCT REQUIREMENTS
QUALITY — NOT your own test coverage claims or QA verdicts.
Do NOT communicate with other division leads until your report is submitted.

Assessment areas:
1. Test coverage breadth — tested routes / total routes; tested spec
   scenarios / total spec scenarios
2. E2E execution status — count specs authored vs. specs actually executed
   vs. specs with passing report artifact. These are THREE different numbers.
   Report all three. Specs with no execution report = ZERO verification value.
3. Test quality — behavioral (testing real user actions) vs. structural
   (testing implementation details); assertion depth
4. Verified% independent calculation — count tasks with at least one passing
   test with verifiable artifact; compare against self-reported Verified%;
   flag delta
5. Test execution vs. authoring ratio — flag if more specs were authored
   than executed in the same cycle

Required output:
- Backend test coverage: X / Y routes (Z%)
- E2E: X authored, Y executed, Z with passing report
- Test quality grade: [A–D]
- Verified% (independent): X% vs. self-reported Y% — delta Z%
- Evidence Collector performance grade: [A–D] with criterion table
- Improvement recommendations
```

---

#### Division F — Marketing/Growth (Lead: Growth Hacker)

**Reviews**: Engineering completeness from user-journey perspective + design quality from demo perspective
**Does NOT review**: His own growth mechanics and campaigns

```
Activate Growth Hacker for independent Expert Panel Review of [CYCLE ID].

You are reviewing ENGINEERING COMPLETENESS from a user-journey perspective
and DESIGN QUALITY from a demo/stakeholder perspective — NOT your own growth
mechanics, campaigns, or marketing deliverables.
Do NOT communicate with other division leads until your report is submitted.

Assessment areas:
1. Demo readiness — simulate a 15-minute stakeholder demo; score X/10;
   identify Demo-killers (≤3)
2. Spec usability — walk through each spec feature end-to-end as a business
   user; count demonstrably usable vs. total
3. Go-to-market readiness — README language, seed data, one-command demo,
   competitive positioning
4. Stakeholder readiness verdict — YES / CONDITIONAL / NO
5. Business value delivered — are highest-value spec features complete
   and demonstrable?

Required output:
- Demo readiness: X / 10
- Demo-killer list (≤3, ranked)
- Spec usability: X / Y features (Z%)
- GTM readiness table (item / YES / NO)
- Stakeholder readiness: YES / CONDITIONAL / NO
- Growth Hacker performance grade: [A–D] with criterion table
- Improvement recommendations
```

---

### Step 3: Synthesis (After All Six Reports Collected)

The Agents Orchestrator collects all six division reports and produces the final panel report. The Orchestrator does not add new findings — it synthesizes, calculates, and identifies convergence.

```
All six division reports received. Agents Orchestrator synthesizes per the
following structure. Do NOT add findings not present in division reports.
Do NOT inflate or deflate any division's grade. Apply the weighted formula
exactly.
```

#### 3a. Three-Column Metrics Table (Mandatory Format)

```markdown
| Dimension | Implemented% | Tested% | Reviewer-Confirmed% |
|-----------|-------------|---------|---------------------|
| Backend | — | — | — |
| Frontend | — | — | — |
| E2E Coverage | — | — | — |
```

#### 3b. Consensus Metrics vs. Self-Report

```markdown
| Metric | Self-Reported | Panel Consensus | Delta | Flag |
|--------|--------------|-----------------|-------|------|
| Backend% | X% | Y% | ±Z% | ⚠️/🔴/— |
| Frontend% | X% | Y% | ±Z% | ⚠️/🔴/— |
| Verified% | X% | Y% | ±Z% | ⚠️/🔴/🚨 |
| Demo Score | X/10 | Y/10 | ±Z | ⚠️/🔴/— |
```

#### 3c. Cross-Division Convergence Findings

List every issue independently flagged by 3+ divisions:

```markdown
| Finding # | Description | Flagged by (X/6) | Divisions | Severity |
|-----------|-------------|-----------------|-----------|----------|
| F-1 | [description] | X/6 | [list] | CRITICAL/HIGH/MEDIUM |
```

> Findings flagged by 4+ divisions are automatically elevated to CRITICAL regardless of individual division severity ratings.

#### 3d. Division Grades Summary

```markdown
| Division | Lead | This Cycle | vs. Prior | Key Finding |
|----------|------|-----------|-----------|-------------|
| Product | Sprint Prioritizer | [A–D] | ↑/↓/— | [one sentence] |
| Design | UX Architect | [A–D] | ↑/↓/— | [one sentence] |
| Engineering | Backend Architect | [A–D] | ↑/↓/— | [one sentence] |
| Operations | DevOps Automator | [A–D] | ↑/↓/— | [one sentence] |
| Testing | Evidence Collector | [A–D] | ↑/↓/— | [one sentence] |
| Marketing | Growth Hacker | [A–D] | ↑/↓/— | [one sentence] |
| Orchestrator | Agents Orchestrator | [A–D] | ↑/↓/— | [one sentence] |

Weighted Overall:
Product(15%) + Design(15%) + Eng(25%) + Ops(15%) + Testing(15%) + Mkt(15%)
= [score]/100 → [grade]
```

#### 3e. Progress Tracking vs. Prior Cycle

```markdown
| Metric | Prior Cycle | This Cycle | Change |
|--------|------------|------------|--------|
| Backend% | X% | Y% | +/-Z% |
| Frontend% | X% | Y% | +/-Z% |
| Verified% | X% | Y% | +/-Z% |
| Overall Grade | [X] | [Y] | ↑/↓/— |
```

#### 3f. Minimum Viable Fix Path

```markdown
| Target Metric | Current | Target | Gap | Minimum Fix Items (≤5) |
|--------------|---------|--------|-----|----------------------|
| Backend% | X% | ≥Y% | Z% | [ordered list] |
| Frontend% | X% | ≥Y% | Z% | [ordered list] |
| Verified% | X% | ≥Y% | Z% | [ordered list] |
| Demo Score | X/10 | ≥Y/10 | Z | [ordered list] |
```

#### 3g. Next Cycle Recommendation

```markdown
- Recommended mode: NEXUS-Full / NEXUS-Sprint / NEXUS-Micro
- Estimated sprints: [N]
- Gate condition to enter next cycle: [specific, measurable]
- First task of next cycle must be: [highest-severity unresolved finding]
```

#### 3h. Final Verdicts

```markdown
| Verdict Item | Decision |
|-------------|---------|
| Cycle execution result | FULL SUCCESS / PARTIAL SUCCESS / FAIL |
| Production readiness | YES / CONDITIONAL / NO |
| Demo readiness | YES / CONDITIONAL (15-min controlled) / NO |
| Architecture quality | SOLID / NEEDS WORK / REBUILD |
| Proceed to next cycle | APPROVED / HOLD (fix gate items) / BLOCKED |
```

### Step 4: Archive

Save the full report to:

```
docs/reviews/[cycle-id]-expert-panel-review-[YYYY-MM-DD].md
```

## Quality Gate Checklist


| #   | Criterion                                                               | Evidence Source                    | Status |
| --- | ----------------------------------------------------------------------- | ---------------------------------- | ------ |
| 1   | All 6 divisions submitted independent reports                           | Agents Orchestrator collection log | ☐      |
| 2   | No cross-division communication occurred during review                  | Division lead declarations         | ☐      |
| 3   | Every finding cites a specific artifact (file:line, report, screenshot) | Report inspection                  | ☐      |
| 4   | Self-reported metrics compared against panel consensus with delta flags | Consensus metrics table            | ☐      |
| 5   | Cross-division convergence findings identified (≥3 divisions)           | Convergence table                  | ☐      |
| 6   | Individual performance grades assigned with evidence                    | Per-division reports               | ☐      |
| 7   | Minimum viable fix path produced for unmet targets                      | Fix path table                     | ☐      |
| 8   | Report archived                                                         | File system verification           | ☐      |


## Gate Decision

**Gate Keeper**: Agents Orchestrator (synthesizing panel consensus)

- **APPROVED**: All targets met, proceed to next cycle or Phase
- **HOLD**: Targets not met but progress demonstrated — fix gate items before next cycle
- **BLOCKED**: Regression detected or integrity crisis (Verified% delta > 15%) — mandatory retrospective before any new work

## Maturity Calibration

As the team matures, review intensity scales:


| Team Grade (sustained)   | Adjustment                                               |
| ------------------------ | -------------------------------------------------------- |
| Consistently C or below  | Add mandatory mid-cycle lightweight review (3 divisions) |
| Reaching B consistently  | Lightweight panel acceptable for NEXUS-Micro cycles      |
| Reaching B+ consistently | Full panel only required for NEXUS-Full phase gates      |
| Reaching A- consistently | Sampling-based review (spot-check 30% of tasks)          |


Independence rules, evidence requirements, and three-column metrics format are permanent regardless of maturity level.

## Handoff

```markdown
## Expert Panel Review → Next Cycle Handoff Package

### For Agents Orchestrator (pipeline resumption):
- Panel consensus metrics (Reviewer-Confirmed%)
- Cross-division convergence findings with severity
- Minimum viable fix path (ordered by priority)
- Recommended next cycle mode and sprint count
- Gate condition for next cycle entry

### For all Developer Agents:
- Specific improvement recommendations from their reviewing division
- Performance grade with evidence-based criteria
- Priority fix items assigned to them

### For Studio Producer (strategic oversight):
- Overall grade and trend vs. prior cycle
- Final verdicts (production/demo/architecture readiness)
- Resource reallocation recommendations if any
```

---

*This playbook is triggered after every NEXUS cycle closes. It produces the only authoritative completion metrics. Self-reported metrics are compared against panel consensus and flagged when delta exceeds thresholds.*