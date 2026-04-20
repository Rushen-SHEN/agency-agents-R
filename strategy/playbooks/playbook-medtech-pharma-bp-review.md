# Playbook — MedTech / Pharma Business Plan & Financials Review (Red Team)

> **Purpose**: Independent **challenge review** of a **business plan** plus **financial statements / financial model** for **innovative medical devices** or **pharmaceuticals**. Output = prioritized findings, **must-fix** vs **nice-to-have**, and a revision brief — not a rewrite of the full BP by reviewers.  
> **说明（中文）**: 对商业计划书与财务材料做「买方/尽调式」红队评审；强调临床、监管、商业与财务交叉验证，输出可执行的修改清单。

### Canonical references (VC / 背调-grade panel)

| Artifact | Path |
|----------|------|
| **Expert panel roster, activation by track, challenge question bank (§5), consensus protocol** | `strategy/playbooks/expert-panel-medtech-pharma-bp-diligence.md` |
| **BP review report output structure** | `strategy/templates/medtech-pharma-bp-review-report-template.md` |
| **Source BP template (for section refs)** | `strategy/templates/medtech-pharma-bp-template.md` |

**Deliverable**: Chair fills **`medtech-pharma-bp-review-report-template.md`** after Round 3 consensus (`expert-panel-medtech-pharma-bp-diligence.md` §6).

---

## When to Run

- Before **investor diligence**, **partnering discussions**, or **IC / board** approval of external circulation.  
- After a major revision (new trial data, new comparator approval, regulatory letter, financing tranche).

---

## Independence Rules (Adapted for BP Review)


| Rule                        | Application                                                                                                                                                                                                                                |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Separation**              | Agents that **drafted** a section should not **solely sign off** on that same section. Rotate prompts: e.g. Financial Analyst challenges narrative written from the same thread by using a fresh context with only the BP PDF/MD attached. |
| **Evidence before verdict** | Every material critique cites **BP page/section**, **model tab + cell or line item**, or **primary source** (guideline, trial registry, filing). Assertions without anchors are marked *speculative*.                                      |
| **Default pessimism**       | Start from "needs work" for claims touching **efficacy, safety, regulatory timing, reimbursement, and valuation**. Upgrade only with cited support.                                                                                        |
| **No medical advice**       | Reviewers evaluate **consistency and support** of claims; they do not recommend treatment or diagnose patients.                                                                                                                            |


---

## Review Panel — Agents & Roles

**Full roster**, **track-specific minimum panels**, and **38+ challenge questions** live in **`strategy/playbooks/expert-panel-medtech-pharma-bp-diligence.md`** (single source of truth).

### Core parallel reviewers (always include)

| Role | Agent | Path |
|------|--------|------|
| DD / bear case | Investment Researcher | `finance/finance-investment-researcher.md` |
| Regulatory pathway | Regulatory Affairs Strategist | `specialized/healthcare-regulatory-affairs-strategist.md` |
| Clinical trial credibility | Clinical Trials & Biostatistics Advisor | `specialized/healthcare-clinical-trials-biostat-advisor.md` |
| Financial model | Financial Analyst | `finance/finance-financial-analyst.md` |
| Operating realism | FP&A Analyst | `finance/finance-fpa-analyst.md` |
| Access / revenue timing | Market Access, Reimbursement & HTA Advisor | `specialized/healthcare-market-access-hta-advisor.md` |
| IP posture (not legal opinion) | Life Sciences IP & FTO Strategist | `specialized/healthcare-lifesciences-ip-strategist.md` |
| Legal / privacy | Legal Compliance Checker | `support/support-legal-compliance-checker.md` |
| China regulatory lens | China Regulatory Review Lens Advisor | `specialized/healthcare-nmpa-reviewers-lens-advisor.md` |
| China outward claims | Healthcare Marketing Compliance Specialist | `specialized/healthcare-marketing-compliance.md` |
| Narrative coherence | Studio Producer | `project-management/project-management-studio-producer.md` |
| Scope discipline | Product Manager | `product/product-manager.md` |
| Competitive / SOC refresh | Trend Researcher | `product/product-trend-researcher.md` |
| Assertive language stress test | Reality Checker (document mode) | `testing/testing-reality-checker.md` |

### Add by modality (parallel)

| If BP contains… | Add |
|-----------------|-----|
| **Oncology** | Oncology Clinical Advisor — `specialized/healthcare-oncologist-advisor.md` |
| **Imaging / radiology AI** | Radiology Clinical Advisor — `specialized/healthcare-radiologist-advisor.md` |
| **AI / SaMD / regulated ML** | AI / SaMD & GMLP Advisor — `specialized/healthcare-ai-samd-gmlp-advisor.md`; Compliance Auditor — `specialized/compliance-auditor.md` |
| **Drug PK/PD / translational** | Pharmacology & Translational Advisor — `specialized/healthcare-pharmacology-translational-advisor.md` |
| **Device manufacturing / QMS** | MedTech Quality ISO 13485 Lead — `specialized/healthcare-quality-iso13485-lead.md` |
| **Audited financials** | Finance Tracker + Bookkeeper Controller — `support/support-finance-tracker.md`, `finance/finance-bookkeeper-controller.md` |

> **Optional second pass**: `finance/finance-investment-researcher.md` again with only the **revised** BP + change log — short "resolution review."

### Consensus → unified output

Follow **`expert-panel-medtech-pharma-bp-diligence.md` §6**: Round 1 independent → Round 2 chair reconciliation → Round 3 unified verdict + revision brief. Populate **`strategy/templates/medtech-pharma-bp-review-report-template.md`** sections A–L.

---

## Inputs Requested from the User (Package)

Provide or index:

1. **BP** (PDF or Markdown) — version **vX.Y**, date.
2. **Financial model** (spreadsheet) and/or **historical financial statements** (P&L, BS, CF).
3. **Key assumptions** document or model README (if missing, reviewers flag as **critical gap**).
4. **Jurisdiction scope** (e.g. US first, EU, China).
5. **Track**: device vs drug (or hybrid).
6. **Data room index** (optional) for deep dives.

---

## Step 1 — Orchestrator Dispatch

```
Activate Agents Orchestrator for MedTech/Pharma BP Review on [COMPANY / PROGRAM].

Package:
- BP: [file / link] version [vX.Y] dated [date]
- Financial model: [file]
- Financial statements: [periods covered, audit status]
- Primary markets: [list]

Task: Issue parallel review assignments per expert-panel-medtech-pharma-bp-diligence.md §4–§5 (roster + question bank subset).
Each reviewer returns:
1. Executive verdict: APPROACH WITH CAUTION / NEEDS MAJOR WORK / NOT CREDIBLE (for external use)
2. Findings table: ID | Severity (Blocker/Major/Minor) | BP section or model ref | Evidence | Recommended fix
3. List of questions for management (max 15)

Rules: No reviewer fabricates trial results or regulatory outcomes. Cite sources for external facts.
```

---

## Step 2 — Agent-Specific Activation Prompts

### Investment Researcher — "DD lead"

```
Activate Investment Researcher for red-team due diligence on [COMPANY] BP v[X.Y].

Deliverables:
1. Bull vs bear case — bear case must be at least as long as bull case
2. Thesis breakers specific to this asset (trial readout, regulatory, competitor, reimbursement)
3. Map each major BP claim to: Supported / Partially supported / Unsupported — with evidence or "not found in package"
4. Valuation or comparables critique: call out multiple expansion, unjustified peak share, or timing fantasy

Use Due Diligence Checklist in finance-investment-researcher.md; adapt "revenue quality" to stage-appropriate milestones and partnerships.
```

### Financial Analyst — "Model lead"

```
Activate Financial Analyst for integrated review of financial model and BP v[X.Y] for [COMPANY].

Deliverables:
1. Trace key BP claims (revenue timing, margin, headcount) to model lines — list disconnects
2. Historical vs forecast reconciliation if financials provided
3. Sensitivity table: which 3 assumptions drive >50% of valuation or runway outcome
4. Working capital and cash conversion plausibility for device inventory / drug CMC spend
5. Version control and auditability of the spreadsheet (tabs, named ranges, error checks)

Output: Model Review Memo with cell/tab references.
```

### FP&A Analyst — "Operating plan lead"

```
Activate FP&A Analyst for operating plan realism review against BP v[X.Y].

Focus: clinical trial burn, CRO payments, manufacturing scale, G&A step functions, hiring vs milestone timing.
Flag "smooth ramps" that contradict known lumpy spend in MedTech/pharma.
```

### Healthcare Marketing Compliance Specialist — "China wording lead" (if CN relevant)

```
Activate Healthcare Marketing Compliance Specialist for review of BP and executive summary for China-facing risks.

Flag efficacy/superiority language, patient stories, unapproved indications, and device class mismatches vs typical NMPA promotion constraints. Distinguish investor materials from consumer advertising risk.
```

### Legal Compliance Checker — "Privacy & trials lead"

```
Activate Legal Compliance Checker for BP review focusing on clinical trial operations, data rights, patient data, and cross-border transfers mentioned or implied.

Output: Compliance Requirements Matrix delta vs what BP actually commits to.
```

### Compliance Auditor — "Health data / SaMD lead" (if applicable)

```
Activate Compliance Auditor assuming product [DOES / MAY] process PHI in US healthcare settings.

Deliverables: gap list mapped to HIPAA Security Rule themes or SOC 2 trust criteria — only where BP claims enterprise readiness or data advantages.
```

### Reality Checker — "Language stress test" (repurposed)

```
Activate Reality Checker in BUSINESS DOCUMENT mode for BP v[X.Y] — NOT software QA.

Treat each high-confidence statement in the executive summary as a hypothesis.
For each: state what EVIDENCE would be required to pass a diligence call; mark PASS / FAIL / UNKNOWN.
Default: NEEDS-WORK unless evidence is named in the BP or appendix.
```

### Trend Researcher — "Clinical / competitive refresh"

```
Activate Trend Researcher to validate clinical and competitive sections of BP v[X.Y] as of [REVIEW DATE].

Flag: outdated guidelines, superseded trials, new approvals, or registry updates that undermine differentiation claims.
```

### Studio Producer — "Story coherence"

```
Activate Studio Producer to assess whether budget, milestones, team size, and revenue ramp are internally consistent in BP v[X.Y].

Output: one-page "single story" diagram or narrative — or explicit list of contradictions.
```

### Product Manager — "Scope creep"

```
Activate Product Manager to review BP v[X.Y] for non-goals, indication creep, and evidence vs feature roadmap alignment.

Reference Opportunity Assessment structure; list missing decisions that investors will ask in first meeting.
```

### Finance Tracker + Bookkeeper/Controller — "Cash & FS" (when statements supplied)

```
Activate Finance Tracker with Bookkeeper Controller (if audited financials provided) for consistency between BP use-of-funds, historical cash burn, and financial statements.

Flag: unexplained adjustments, related-party gaps, or runway math errors.
```

### Regulatory Affairs Strategist — "Pathway & evidence package"

```
Activate Regulatory Affairs Strategist to review BP v[X.Y] regulatory sections for [ASSET].

Deliverables: pathway plausibility, evidence gaps vs claims, post-market obligations, AI/SaMD lifecycle items, pathway invalidators — cite public guidance where possible.
Output: findings table mapped to BP template §4–§6.
```

### Clinical Trials & Biostatistics Advisor — "Estimand & powering"

```
Activate Clinical Trials Biostat Advisor on BP §5 and any endpoint claims in executive summary for [ASSET].

Demand: primary estimand, multiplicity, interim plans, missing data — flag "hero endpoint" risk.
```

### Market Access & HTA Advisor — "Revenue timing"

```
Activate Market Access HTA Advisor on BP §7 and financial model revenue ramp for [ASSET] in [MARKETS].

Flag: approval-to-payment lag omitted, code / DRG hypothesis missing, China VBP/NRDL blind spots.
```

### Life Sciences IP Strategist — "FTO & portfolio"

```
Activate Life Sciences IP FTO Strategist on BP §3 / §6 IP sections for [ASSET].

Deliverables: inventorship/license risks, FTO questions for counsel, claim chart gaps — no fabricated patent data.
```

### China Regulatory Lens Advisor — "Reviewer Q-pack" (when CN material)

```
Activate China Regulatory Review Lens Advisor to produce Reviewer Question Pack for China exposure of BP v[X.Y].

Do not impersonate NMPA; output questions + evidence requests + BP red-line phrases.
```

### Oncology / Radiology advisors — modality deep dive

```
Activate Oncology Clinical Advisor OR Radiology Clinical Advisor per BP indication/modality to review clinical differentiation and evidence plan credibility.

Output: diligence kill-box list + SOC table gaps vs BP claims.
```

### AI / SaMD & GMLP Advisor — "ML diligence"

```
Activate AI SaMD GMLP Advisor on BP §3 / §11 for [ASSET].

Focus: locked vs adaptive, data leakage, drift monitoring, cybersecurity as design input, human oversight.
```

### MedTech Quality ISO 13485 Lead — "QMS & DHF" (devices)

```
Activate MedTech Quality ISO 13485 Lead on BP §6 for [DEVICE / SaMD].

Flag: certification overclaim, DHF traceability silence, supplier quality gaps, PMS underfunding.
```

---

## Step 3 — Scoring Rubric (Weighted)

Use for internal prioritization; calibrate weights to stage (seed vs Series B). **Populate scores in** `strategy/templates/medtech-pharma-bp-review-report-template.md` **§D**.


| Domain | Weight (suggested) | Owner agents (primary) |
|--------|-------------------|-------------------------|
| Clinical / scientific | 15% | Trend Researcher; add Oncology or Radiology advisor if applicable |
| Regulatory & quality | 20% | Regulatory Affairs Strategist; Legal Compliance Checker; add Quality ISO lead for devices |
| AI / SaMD / data (if applicable) | 10% | AI SaMD GMLP Advisor; Compliance Auditor |
| IP & FTO posture | 10% | Life Sciences IP Strategist |
| Commercial & access | 15% | Market Access HTA Advisor; Product Manager |
| Financial model & FS | 20% | Financial Analyst; FP&A; Finance Tracker; Bookkeeper if FS provided |
| Team & execution | 10% | Studio Producer; Investment Researcher cross-check |
| **Investment thesis stress** | — | Investment Researcher (feeds all domains; bear case in §A verdict) |

**Grade mapping** (evidence-adjusted): A = diligence-ready | B = credible with fixes | C = internal only | D/F = do not circulate.

---

## Step 4 — Consolidated Outputs

**Agents Orchestrator** (or human IC chair) produces (mirror **`medtech-pharma-bp-review-report-template.md`**):

1. **§A Executive verdict** + unified narrative  
2. **§E Master findings table** — merged, deduplicated, severity sorted  
3. **§F Challenge question bank** — populated from `expert-panel-medtech-pharma-bp-diligence.md` §5 + agent-specific adds  
4. **§J Revision brief** — must-fix / should-fix with owners  
5. **§K Dissent log** (if any)  
6. **Change log** — for BP vX.(Y+1)

---

## Step 5 — Re-review Trigger

Re-run full panel when any of:

- New **interim/pivotal** data  
- **Regulatory** correspondence or classification change  
- **>15%** change in operating expenses or runway in the model  
- **New competitor** approval in same indication  
- **Primary market** jurisdiction change (e.g. add China)

---

## Relationship to `expert-panel-review.md`

`strategy/playbooks/expert-panel-review.md` targets **software delivery cycles** (code, CI, Verified%). **Do not** substitute it directly for MedTech/pharma BP diligence. This playbook reuses its **spirit** (independence, evidence, pessimistic default) with a **finance + regulatory + clinical** panel suited to life sciences.

---

*Guidance only — not legal, investment, or regulatory advice. Qualified professionals must validate submission and financing decisions.*