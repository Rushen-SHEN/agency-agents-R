# Expert Panel — MedTech / Pharma / AI Business Plan Diligence

> **Goal**: Assemble a **venture-grade expert panel** (top-tier IC / **Sequoia-style diligence posture**) to **draft**, **stress-test**, and **review** business plans for **innovative drugs, medical devices, and AI-enabled / SaMD** products. Outputs: **consensus-grade findings**, **unified review feedback**, and filled templates:  
> - `strategy/templates/medtech-pharma-bp-template.md`  
> - `strategy/templates/medtech-pharma-bp-review-report-template.md`  
>
> **说明**: 本文档为「药械 + AI」BP 的**专家面板与红队问题库**中枢；与 `playbook-medtech-pharma-bp-from-clinical-need.md`（撰写）及 `playbook-medtech-pharma-bp-review.md`（评审流程）配合使用。

---

## 1. Agent inventory context

The repository currently contains **194** specialist agent markdown files under division folders (`academic`, `design`, `engineering`, `finance`, `game-development`, `marketing`, `paid-media`, `product`, `project-management`, `sales`, `spatial-computing`, `specialized`, `support`, `testing`) — counted excluding `examples/`, `integrations/`, `.github/`. *(Prior baseline in MedTech playbooks: 184; **+10** life-sciences additions in `specialized/healthcare-*.md`.)*

**Life sciences panel additions**: **10** agents under `specialized/healthcare-*.md` (see §3). They close gaps typical in generic startup BPs for **背调（reference / diligence）** and **tier-1 IC** depth.

---

## 2. Roles that remain human or external

Even with a full agent panel, **credible** IC processes assume:

- **Licensed physicians** for treatment decisions and often for **clinical sections** sign-off in regulated contexts  
- **Qualified regulatory signatories** (e.g. PRRC, US agent, China legal agent)  
- **Patent counsel** for **FTO legal opinions**  
- **Independent biostatistician** for submission statistics  
- **Audited financials** review by accounting firm where stated  

Agents **flag gaps**; humans **close** them.

---

## 3. Full expert panel roster (BP + Review)

### 3.1 Life sciences core (new — `specialized/`)

| Agent | Path | Primary BP / review chapters |
|-------|------|------------------------------|
| Regulatory Affairs Strategist | `specialized/healthcare-regulatory-affairs-strategist.md` | §4 Regulatory, milestones, global pathway |
| China Regulatory Review Lens Advisor | `specialized/healthcare-nmpa-reviewers-lens-advisor.md` | China evidence, classification, reviewer Q-pack |
| Radiology Clinical Advisor | `specialized/healthcare-radiologist-advisor.md` | Imaging / radiology AI, device clinical utility |
| Oncology Clinical Advisor | `specialized/healthcare-oncologist-advisor.md` | Oncology SOC, endpoints, combination |
| Clinical Trials & Biostatistics Advisor | `specialized/healthcare-clinical-trials-biostat-advisor.md` | §5 Clinical, estimands, powering |
| AI / SaMD & GMLP Advisor | `specialized/healthcare-ai-samd-gmlp-advisor.md` | §3 Tech, §4, §11 AI/data |
| Pharmacology & Translational Advisor | `specialized/healthcare-pharmacology-translational-advisor.md` | §3 MoA, PK/PD, FIH narrative (drug) |
| MedTech Quality & ISO 13485 Lead | `specialized/healthcare-quality-iso13485-lead.md` | §6 Quality, device COGS / ops |
| Life Sciences IP & FTO Strategist | `specialized/healthcare-lifesciences-ip-strategist.md` | §3 IP, data room IP index |
| Market Access, Reimbursement & HTA Advisor | `specialized/healthcare-market-access-hta-advisor.md` | §7 Commercial, revenue timing |

### 3.2 Regulatory, compliance, China commercial language (existing)

| Agent | Path |
|-------|------|
| Legal Compliance Checker | `support/support-legal-compliance-checker.md` |
| Healthcare Marketing Compliance Specialist | `specialized/healthcare-marketing-compliance.md` |
| Compliance Auditor (HIPAA / SOC2-style) | `specialized/compliance-auditor.md` |
| China Market Localization Strategist | `marketing/marketing-china-market-localization-strategist.md` |

### 3.3 Market, product narrative, orchestration (existing)

| Agent | Path |
|-------|------|
| Trend Researcher | `product/product-trend-researcher.md` |
| Feedback Synthesizer | `product/product-feedback-synthesizer.md` |
| UX Researcher | `design/design-ux-researcher.md` |
| Analytics Reporter | `support/support-analytics-reporter.md` |
| Product Manager | `product/product-manager.md` |
| Studio Producer | `project-management/project-management-studio-producer.md` |
| Executive Summary Generator | `support/support-executive-summary-generator.md` |
| Agents Orchestrator | `specialized/agents-orchestrator.md` |
| Document Generator | `specialized/specialized-document-generator.md` |

### 3.4 Finance & investment rigor (existing)

| Agent | Path |
|-------|------|
| Investment Researcher | `finance/finance-investment-researcher.md` |
| Financial Analyst | `finance/finance-financial-analyst.md` |
| FP&A Analyst | `finance/finance-fpa-analyst.md` |
| Finance Tracker | `support/support-finance-tracker.md` |
| Bookkeeper / Controller | `finance/finance-bookkeeper-controller.md` |

### 3.5 Adversarial QA (existing, repurposed)

| Agent | Path |
|-------|------|
| Reality Checker (document mode) | `testing/testing-reality-checker.md` |

### 3.6 Optional by program

| Need | Agent | Path |
|------|--------|------|
| Legal agreements | Legal Document Review | `specialized/legal-document-review.md` |
| Infectious disease, cardio, etc. | *Future specialty advisors* — until added, use **Trend Researcher** + human KOL | — |

---

## 4. Panel activation by track

| Program type | Minimum panel (Round 1 parallel) |
|--------------|----------------------------------|
| **Drug / biologic** | Regulatory Affairs Strategist, Pharmacology Advisor, Clinical Trials & Biostat, Oncology or disease-specific advisor *(add when available)*, Investment Researcher, Financial Analyst, IP Strategist, Market Access Advisor, Legal Compliance Checker |
| **Device / IVD** | Regulatory Affairs Strategist, Quality ISO 13485 Lead, Clinical Trials & Biostat *(if clinical study)*, IP Strategist, Market Access Advisor, Investment Researcher, Financial Analyst, Legal Compliance Checker |
| **AI / SaMD / imaging** | AI SaMD GMLP Advisor, Radiology Advisor *(if imaging)*, Regulatory Affairs Strategist, Quality ISO 13485 Lead, Compliance Auditor, Clinical Trials & Biostat, Investment Researcher, Financial Analyst |
| **China material market** | China Regulatory Lens Advisor, Healthcare Marketing Compliance, China Market Localization Strategist, plus global RA |

---

## 5. Challenge review question bank (non-exhaustive)

Use in Round 1 prompts and populate §F of the review report template.

### A. Clinical & scientific

1. What **specific clinical decision** changes if your product succeeds — who acts, on what evidence?
2. What is the **SOC** today vs **at first revenue** — what moves it?
3. Which claims are **hypothesis** vs **supported by peer-reviewed or regulatory-grade data**?
4. For oncology: why **this line** — why not earlier line or maintenance?
5. **Biomarker**: exploratory or integral to approval? **Assay** lock plan?
6. **Single-arm** path: what is the **external control** narrative?

### B. Biostatistics & clinical trial

7. State the **primary estimand** in one sentence.
8. How is **multiplicity** controlled for secondary endpoints?
9. **Interim analysis**: who sees unblinded data; **alpha** spend?
10. **Missing data** and **intercurrent events** (e.g. crossover, rescue) — ICS handling?
11. Device trials: **sham** or **objective endpoint** feasibility?

### C. Regulatory & quality

12. **Classification** and rule rationale per **primary** jurisdiction?
13. What **agency meeting** types and **questions** — no promised outcomes?
14. **Post-market**: PMS, vigilance, REMS — **budget** and owner?
15. Devices: **DHF traceability** from inputs to V&V — maturity honest?
16. **Notified body / FDA** inspection readiness **as of today**?

### D. AI / SaMD / data

17. **Locked** vs **adaptive** model — business and regulatory implications?
18. **Training data** provenance; **leakage** controls; **site/scanner** diversity?
19. **Drift** detection; **human oversight**; **failure modes** in workflow?
20. **PHI** flows; **cross-border** transfer; **SBOM** / cybersecurity for device?

### E. IP & FTO

21. **Composition of matter** vs method — what is actually **owned**?
22. **In-license** field and **sublicense** limits?
23. **FTO**: opinion vs hypothesis — what claims **read on** your product?
24. **Inventorship** and **employment** agreements clean?

### F. Commercial & access

25. **Who pays** — which **code** or pathway (hypothesis)?
26. **Coverage lag** after approval — assumed months?
27. **China**: NRDL / VBP exposure if commoditized?
28. **Channel** economics — gross to net sensitivities?

### G. Team & governance

29. **Open roles** critical to next milestone (RA, CMO, VP Quality, biostat)?
30. **Advisor conflicts** and **equity** transparent?

### H. Financial & integrity

31. **Assumption log** for model — top **3** value drivers?
32. **Historical** numbers reconcile to **bank / GL**?
33. **Runway** post-raise matches **cash flow** and **trial delays**?
34. **Related-party** and **cap table** narrative consistent?

### I. China-specific (when CN is material)

35. **Chinese clinical data** plan and bridging rationale?
36. **Classification** stable vs intended claims?
37. **After-sales** / vigilance for devices — resourcing?
38. **Promotional** vs investor language — **Healthcare Marketing Compliance** pass?

---

## 6. Consensus discussion protocol

### Round 1 — Independent review (no cross-communication)

- **Agents Orchestrator** issues identical **package** (BP + model + annexes) to each assigned agent with **section scope** and **question bank subset**.
- Each agent returns: **verdict band**, **findings table**, **answers to question bank** they own.

### Round 2 — Chair reconciliation

- Chair (human or Orchestrator) merges findings; **deduplicates**; assigns **severity** where reviewers disagreed using §E definitions in review template.
- **Conflict rule**: if two agents disagree on material fact, **flag** as “requires primary source or management response” — do not invent resolution.

### Round 3 — Unified feedback

- Produce: **§A Executive verdict**, **§E consolidated findings**, **§J revision brief**, **§F question list** for management.
- Optional: **short dissent log** (§K) if Investment Researcher and Clinical advisors irreconcilably differ — escalate to human IC.

### Output artifacts

1. Filled `medtech-pharma-bp-review-report-template.md`  
2. Tracked **BP version** bump with **change log**  
3. Optional second pass: **Investment Researcher** only on revised BP

---

## 7. Orchestrator kickoff (copy-paste)

```
Activate Agents Orchestrator for MedTech/Pharma/AI Expert Panel per expert-panel-medtech-pharma-bp-diligence.md.

Mode: [BP_DRAFT | BP_REVIEW]
Track: [drug | device | AI_SaMD | combination]
Primary jurisdictions: [list]
Package: BP [v], model [v], FS [periods], data room index [link].

Assign Round 1 per §4 roster. Distribute challenge questions from §5 subset [A–I as applicable].
Rules: evidence before verdict; no fabricated trials or agency outcomes; flag human-required sign-offs.

Deliver: filled strategy/templates/medtech-pharma-bp-review-report-template.md structure in Markdown.
```

---

## 8. Links to sibling playbooks

| Playbook | Purpose |
|----------|---------|
| `strategy/playbooks/playbook-medtech-pharma-bp-from-clinical-need.md` | Idea → unmet need → BP assembly; uses **BP template** |
| `strategy/playbooks/playbook-medtech-pharma-bp-review.md` | Red-team **process** and agent activation blocks; **this panel doc** is canonical roster + questions |

---

*Guidance only. Not legal, clinical, regulatory, or investment advice.*
