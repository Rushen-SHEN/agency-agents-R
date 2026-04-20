# Playbook — MedTech / Pharma Business Plan (Idea → Unmet Need → Solution → BP)

> **Scope**: Innovative **medical devices** (including SaMD / digital therapeutics where regulated as devices) **or** **pharmaceuticals** (small molecule, biologic, radiopharmaceutical, etc.) — from structured ideation through a **fundraising-ready business plan**.  
> **说明（中文）**: 覆盖「未满足的临床需求 → 解决方案概念 → 监管/市场/开发路径 → 商业计划书」全流程，可与 NEXUS Phase 0–1 并行参考，但本文针对药械融资材料定制。

### Canonical references (BP diligence standard)

| Artifact | Path |
|----------|------|
| **Expert panel roster, question bank, consensus protocol** | `strategy/playbooks/expert-panel-medtech-pharma-bp-diligence.md` |
| **BP document template** | `strategy/templates/medtech-pharma-bp-template.md` |
| **BP review report template** | `strategy/templates/medtech-pharma-bp-review-report-template.md` |
| **Red-team execution playbook** | `strategy/playbooks/playbook-medtech-pharma-bp-review.md` |

**Agent inventory**: **194** division-folder agents (includes **10** life-sciences specialists `specialized/healthcare-*.md`; see `expert-panel-medtech-pharma-bp-diligence.md` §1–§3).

---

## Objective

1. **Discover** validated *unmet clinical needs* (problem, population, current standard of care, gap).
2. **Define** a *differentiated solution* (mechanism / technology / device class, intended use, non-obvious insight).
3. **De-risk** with a credible **regulatory**, **clinical development**, and **commercial** narrative.
4. **Quantify** with **assumption-transparent** financials and use of funds.
5. Produce a **single BP document** suitable for investors (plus optional data room index).

---

## Extended Agent Roster (Beyond Generic “Startup BP”)

Use paths relative to repository root. **Activate only what matches jurisdiction** (e.g. US FDA vs EU MDR vs China NMPA).


| Agent                                          | Path                                                          | When to use (MedTech / Pharma)                                                                                                                              |
| ---------------------------------------------- | ------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Trend Researcher**                           | `product/product-trend-researcher.md`                         | Disease area dynamics, competitive pipeline, funding/trial trends, regulatory intelligence signals                                                          |
| **Feedback Synthesizer**                       | `product/product-feedback-synthesizer.md`                     | Synthesize HCP/patient/caregiver pain themes from interviews, forums, congress chatter (structured, not as medical advice)                                  |
| **UX Researcher**                              | `design/design-ux-researcher.md`                              | Clinical workflow, usability context for devices or patient-facing programs (journey maps for *care delivery*, not treatment decisions)                     |
| **Analytics Reporter**                         | `support/support-analytics-reporter.md`                       | RWD/epidemiology *data landscape*, what can be measured, baseline metrics for digital / outcomes-based storylines                                           |
| **Legal Compliance Checker**                   | `support/support-legal-compliance-checker.md`                 | Cross-border privacy, clinical trial data, promotional boundaries, general compliance matrix for target markets                                             |
| **Healthcare Marketing Compliance Specialist** | `specialized/healthcare-marketing-compliance.md`              | **China**: advertising law, NMPA device/drug ad rules, Rx vs OTC promotion, device class II/III claims — keep BP language investor-safe and legally bounded |
| **Compliance Auditor**                         | `specialized/compliance-auditor.md`                           | **US / global**: HIPAA, SOC 2 / ISO 27001-style posture if product touches PHI or enterprise hospital procurement                                           |
| **Legal Document Review**                      | `specialized/legal-document-review.md`                        | CRO/CDMO/MTA templates, term sheets, risk language (not substitute for counsel)                                                                             |
| **Product Manager**                            | `product/product-manager.md`                                  | Opportunity Assessment, GTM brief structure adapted to **indication** and **stakeholder map** (HCP, payer, patient org)                                     |
| **Studio Producer**                            | `project-management/project-management-studio-producer.md`    | Executive narrative, portfolio framing, milestone storytelling for boards/investors                                                                         |
| **Financial Analyst**                          | `finance/finance-financial-analyst.md`                        | Integrated model hooks: R&D phases, COGS, reimbursement sensitivity, **three-statement** storyline                                                          |
| **FP&A Analyst**                               | `finance/finance-fpa-analyst.md`                              | Driver-based operating plan, hiring and non-clinical spend, scenario tables                                                                                 |
| **Finance Tracker**                            | `support/support-finance-tracker.md`                          | Cash runway, budget envelope, control narrative for diligence                                                                                               |
| **Investment Researcher**                      | `finance/finance-investment-researcher.md`                    | **Optional pre-mortem** before finalizing BP: bear case, thesis breakers, peer comps framing                                                                |
| **China Market Localization Strategist**       | `marketing/marketing-china-market-localization-strategist.md` | China commercialization, channels, regulatory/cultural constraints on positioning                                                                           |
| **Executive Summary Generator**                | `support/support-executive-summary-generator.md`              | Tight SCQA executive summary once all inputs exist                                                                                                          |
| **Agents Orchestrator**                        | `specialized/agents-orchestrator.md`                          | When many agents run in parallel — consolidate outputs and resolve conflicts                                                                                |
| **Document Generator**                         | `specialized/specialized-document-generator.md`               | Optional: programmatic DOCX/PPTX/XLSX for dataroom-ready artifacts                                                                                          |

### Life sciences specialist panel (use with §Objective)

| Agent | Path | When to use |
|-------|------|-------------|
| **Regulatory Affairs Strategist** | `specialized/healthcare-regulatory-affairs-strategist.md` | Pathway, milestones, risk register, global RA narrative for BP §4–5 |
| **China Regulatory Review Lens Advisor** | `specialized/healthcare-nmpa-reviewers-lens-advisor.md` | NMPA-style **Reviewer Question Pack**; China evidence plan (simulation — not government) |
| **Radiology Clinical Advisor** | `specialized/healthcare-radiologist-advisor.md` | Imaging / radiology AI, reader studies, workflow |
| **Oncology Clinical Advisor** | `specialized/healthcare-oncologist-advisor.md` | Oncology SOC, endpoints, combinations |
| **Clinical Trials & Biostatistics Advisor** | `specialized/healthcare-clinical-trials-biostat-advisor.md` | Estimands, powering, multiplicity, trial credibility |
| **AI / SaMD & GMLP Advisor** | `specialized/healthcare-ai-samd-gmlp-advisor.md` | Regulated ML lifecycle, drift, clinical evaluation of AI |
| **Pharmacology & Translational Advisor** | `specialized/healthcare-pharmacology-translational-advisor.md` | PK/PD, FIH, DMPK story for drugs |
| **MedTech Quality & ISO 13485 Lead** | `specialized/healthcare-quality-iso13485-lead.md` | QMS, DHF, audit readiness for devices |
| **Life Sciences IP & FTO Strategist** | `specialized/healthcare-lifesciences-ip-strategist.md` | IP chapter, FTO *questions* for counsel |
| **Market Access, Reimbursement & HTA Advisor** | `specialized/healthcare-market-access-hta-advisor.md` | Who pays, code hypothesis, access evidence |

> **Human-required**: Qualified **RA/QA**, **patent counsel** (FTO *opinion*), **biostatistician** (submission stats), and **treating clinicians** remain mandatory for submissions and often for IC-grade materials. Agents structure narrative and surface gaps.

---

## Track Selection (Gate 0 — Day 0)

Choose **one** primary track; the BP template weights sections differently.


| Track                         | BP emphasis                                                                                                                            |
| ----------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| **Innovative medical device** | Classification, predicate/SaMD path (as applicable), usability, V&V and clinical evidence strategy, reimbursement and health economics |
| **Pharmaceutical**            | MoA, target validation, CMC risks, preclinical → clinical → regulatory milestones, patent/FTO narrative, payer/access for modality     |


**Quality gate**: One-page *Track Memo* stating indication/population, modality, and why this track was chosen.

---

## Phase A — Clinical Need & Problem Framing (Parallel, Days 1–4)

### A1 — Disease / patient burden & standard of care

```
Activate Trend Researcher for clinical and market intelligence on [DISEASE / INDICATION].

MedTech/Pharma-specific deliverables:
1. Epidemiology and unmet need summary (incidence/prevalence as appropriate; cite sources)
2. Current standard of care and treatment algorithm (guideline-level, with citations)
3. Gap analysis: where current options fail (efficacy, safety, adherence, access, diagnosis)
4. Competitive pipeline snapshot (approved + late-stage; differentiate asset class)
5. Recent regulatory and payer signals affecting this space

Sources: prioritize guidelines, regulatory databases, peer-reviewed literature, HTA summaries — not general blogs.
Format: Strategic Report with executive summary (≤1 page) + detailed annex
Timeline: 3–4 days
```

### A2 — Voice of stakeholder (structured)

```
Activate Feedback Synthesizer for stakeholder needs synthesis on [INDICATION].

Inputs (user-provides or agent designs plan): de-identified interview notes, congress themes, literature quotes on patient burden.
Deliverables:
1. Prioritized problem statements tied to measurable outcomes (PROs, hard endpoints, workflow metrics as relevant)
2. RICE-style prioritization for "jobs to be done" in care delivery
3. Explicit list of claims that are NOT evidence-supported yet (for later de-risking)

Format: Synthesized Needs Report
Timeline: 3 days (parallel with A1)
```

### A3 — Workflow / context (devices & care pathways)

```
Activate UX Researcher for clinical workflow and user context mapping for [SOLUTION CONTEXT].

Deliverables:
1. Primary personas: HCP, patient, caregiver, lab, payer touchpoints as applicable
2. Journey map: from suspicion/diagnosis through treatment/monitoring — where friction lives
3. Usability/regulatory human factors implications for device track (high-level)

Format: Research Findings Report (no treatment recommendations; workflow facts only)
Timeline: 4 days
```

### A4 — Regulatory & privacy scan (early)

```
Activate Legal Compliance Checker for regulatory and privacy scan for [PRODUCT CONCEPT — device OR drug] in [JURISDICTIONS].

Deliverables:
1. Applicable frameworks (examples: FDA device/drug pathways at high level; GDPR/HIPAA if PHI; China NMPA categories if CN market)
2. Clinical trial and data governance constraints
3. Blocking vs manageable risks for continuing the BP
4. "Investor-safe" wording guidance: what must not be claimed without evidence

Format: Compliance Requirements Matrix + Red Flag list
Timeline: 3 days
```

**Convergence**: `Agents Orchestrator` or lead human editor merges A1–A4 into **Unmet Clinical Needs Brief** (max 8 pages).

---

## Phase B — Solution Concept & Differentiation (Days 3–7)

### B1 — Solution definition (science / engineering)

User or **Product Manager** locks:

- **Intended use** / **population** (device) or **indication hypothesis** (drug)  
- **MoA** or **technological principle**  
- **Differentiation vs SOC and pipeline** (from Trend Researcher)

```
Activate Product Manager for Opportunity Assessment: [ASSET NAME].

Adapt sections for MedTech/Pharma:
- Why now (clinical + regulatory + competitive window)
- Evidence plan summary (what must be true in 12–24 months)
- Non-goals (indications, geographies, claims you will NOT make)

Format: Opportunity Assessment (see template in product-manager.md)
Timeline: 2 days
```

### B2 — China-facing positioning check (if China in scope)

```
Activate Healthcare Marketing Compliance Specialist for investor-facing materials review on [DRAFT THESIS / ONE-PAGER].

Scope: Flag language that would be non-compliant or misleading in China marketing context; distinguish investor deck vs consumer ad rules.
Deliverables:
1. List of prohibited or high-risk phrases
2. Safer alternative phrasing for BP and website
3. Note where NMPA-approved scope would constrain future promotion

Format: Compliance Review Memo
Timeline: 1–2 days
```

---

## Phase C — Development, Regulatory & Evidence Plan (Days 5–12)

**Device-heavy** outline: design controls, risk management (ISO 14971 mindset), verification/validation, clinical evaluation strategy, PMS outline.  
**Drug-heavy** outline: preclinical package, IND/CTA-enabling studies, Phase 1/2 endpoints, CMC risks, orphan/fast track *only if justified*.

```
Activate Regulatory Affairs Strategist for Regulatory Strategy Memo for [ASSET] in [JURISDICTIONS].

Deliverables per specialized/healthcare-regulatory-affairs-strategist.md template:
pathway, classification, evidence gaps, post-market, AI/SaMD items if applicable, pathway invalidators.
Timeline: parallel with Studio Producer, 4 days
```

```
Activate MedTech Quality ISO 13485 Lead for device track [ASSET] — QMS roadmap and diligence snapshot for BP §6.

Output: Quality snapshot per healthcare-quality-iso13485-lead.md template
Timeline: 3 days (devices only; skip for pure drug)
```

```
Activate Pharmacology Translational Advisor for drug track [ASSET] — PK/PD and translational narrative for BP §3.

Timeline: 3 days (drugs only)
```

```
Activate Clinical Trials Biostat Advisor for [ASSET] — high-level estimand and pivotal credibility paragraph for BP §5.

Timeline: 2 days
```

```
Activate AI SaMD GMLP Advisor if ML is on critical path for [ASSET] — data card outline + post-market monitoring sketch for BP §11.

Timeline: 3 days
```

If **China** is material:

```
Activate China Regulatory Review Lens Advisor for Reviewer Question Pack on [ASSET] (drug or device).

Timeline: 2 days — outputs feed BP risk section and diligence Q&A
```

```
Activate Studio Producer for development and regulatory milestone narrative for [ASSET].

Deliverables:
1. Stage-gate roadmap (Gantt-level): discovery → pivotal evidence → submission → launch (ranges, not fake precision)
2. Critical risks and mitigations (CMC, recruitment, comparator, endpoints)
3. Resource plan by function (RA, clinical, quality, BD)
4. Alignment of milestones with financing tranches

Format: Strategic Portfolio / Program Plan (narrative + milestone table)
Timeline: 3 days
```

---

## Phase D — Market Access, Pricing & Commercial (Days 8–14)

```
Activate Market Access Reimbursement HTA Advisor for access narrative on [ASSET] in [MARKETS].

Deliverables: payer hypothesis, coverage lag ranges, HTA-style evidence gaps, China access themes if applicable.
Format: Market Access Credibility Memo
Timeline: 3 days (parallel with below)
```

```
Activate Trend Researcher + Product Manager (sequential) for commercial strategy draft on [ASSET].

Deliverables:
1. Segmentation: acute vs chronic, hospital vs ambulatory, geography
2. Reimbursement *hypothesis* and evidence needs (separate facts vs assumptions)
3. Pricing analogs and sensitivity (ranges)
4. Channel and partnership options (co-promotion, diagnostics pairing, etc.)

Format: Go-to-Market Brief (adapt product-manager.md template)
Timeline: 4 days
```

Optional:

```
Activate China Market Localization Strategist if primary or co-primary market is China [...]
```

---

## Phase E1 — IP & FTO framing (Days 8–12)

```
Activate Life Sciences IP FTO Strategist for BP IP chapter outline and FTO Question Pack for counsel on [ASSET].

Deliverables: owned vs in-licensed, FTO as hypothesis vs opinion, competitive white space table (confidence-labeled)
Timeline: 3 days
```

---

## Phase E — Financials & Use of Funds (Days 10–18)

```
Activate Financial Analyst for integrated financial narrative for [COMPANY / PROGRAM].

MedTech/Pharma-specific requirements:
1. Separate R&D by phase or work package; explicit clinical trial cost drivers
2. COGS / COGS-like assumptions for device manufacturing scale-up OR drug COGS/CMC capital intensity
3. Revenue ramp tied to approval dates and adoption curves — label as assumptions
4. Three scenarios: base / upside / downside with trigger variables (trial success, enrollment, pricing, competitor entry)
5. Cash runway and financing milestones

Format: Model spec in markdown + assumption log (see finance-financial-analyst.md)
Timeline: 5–7 days (overlap with Phase D acceptable)
```

```
Activate FP&A Analyst to build Annual Operating Plan-style summary [...]
```

```
Activate Finance Tracker for cash management and diligence-ready budget narrative [...]
```

---

## Phase F — Business Plan Assembly (Days 16–22)

**Assemble** the BP using **`strategy/templates/medtech-pharma-bp-template.md`** as the canonical section order; merge Phase A–E1 outputs into each section.

### Recommended BP table of contents (investor-grade)

Use **`strategy/templates/medtech-pharma-bp-template.md`** end-to-end (§1–§12). For **AI / SaMD** programs, complete **§11 AI / data**; do not fold material AI risk only into generic risk bullets.

```
Activate Executive Summary Generator to synthesize full BP inputs for [PROGRAM].

Inputs: Unmet Needs Brief, Opportunity Assessment, Program Plan, GTM Brief, Financial assumption log, Compliance Matrix excerpts.
Output: Executive summary (≤500 words, SCQA), plus GO / PIVOT / NO-GO for internal use
```

Optional final polish:

```
Activate Document Generator to produce [DOCX|PPTX] from structured JSON/Markdown for [BP VERSION] — audience: [seed|Series A|strategic]
```

---

## Phase G — Expert panel pre-mortem (optional, Days 20–22)

Before external send, run a **single Round-1** subset of `strategy/playbooks/expert-panel-medtech-pharma-bp-diligence.md` with **Investment Researcher**, **Regulatory Affairs Strategist**, **Clinical Trials Biostat Advisor**, and **Market Access Advisor** on the near-final BP. Incorporate findings into §10 risks and revision log.

---

## Quality Gate Checklist (Before Circulating Externally)


| #   | Criterion                                                                          | Evidence                                                       |
| --- | ---------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| 1   | Every clinical claim in the executive summary is cited or marked as hypothesis     | Reference list / highlight in doc                              |
| 2   | Regulatory path is plausible for **one** primary jurisdiction; others secondary    | Regulatory Affairs Strategist memo + Legal Compliance Checker + human RA |
| 3   | Financial model lists all material assumptions; scenarios differ by named drivers  | Financial Analyst assumption log                               |
| 4   | No off-label or unapproved efficacy claims in any jurisdiction’s promotional rules | Healthcare Marketing Compliance (CN); Legal Compliance Checker |
| 5   | Competitive section names specific programs (sponsor + stage where public)         | Trend Researcher annex                                         |
| 6   | Use of funds ties to milestones, not vague "marketing"                             | FP&A + Studio Producer tables                                  |


---

## Handoff to BP Review Playbook

After internal approval, run **`strategy/playbooks/playbook-medtech-pharma-bp-review.md`** and produce the filled **`strategy/templates/medtech-pharma-bp-review-report-template.md`** per **`strategy/playbooks/expert-panel-medtech-pharma-bp-diligence.md`** (full panel + consensus) before investor outreach.

---

*This playbook is guidance for multi-agent drafting. It does not constitute legal, regulatory, or investment advice.*