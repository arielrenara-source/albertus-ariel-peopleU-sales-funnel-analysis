# albertus-ariel-peopleU-sales-funnel-analysis
Sales funnel drop-off analysis and lead segmentation for PeopleU (B2B SaaS HR Platform) — identifying bottleneck stages and high-converting lead profiles to improve deal won rate from 26.5% to 30%.

# 🔍 PeopleU Sales Funnel Analysis

**Platform:** PeopleU · B2B SaaS HR Platform   
**Author:** Albertus Ariel Renara Pranata  
**Tools:** SQL · Google Biquery · Google Slides

---

## 📌 Business Problem

PeopleU operates an 8-stage sales funnel from lead registration to deal won.  
Despite generating **3,397 leads over 2020–2022**, only **26.5%** successfully converted — leaving significant revenue potential untapped.

Three core gaps identified:
- 🔴 **Undetected Funnel Drop-offs** — 2 stage transitions fall below 80% conversion rate
- 🟡 **Sales Cycle Bottleneck** — Avg. 30.6 days to close; Offer Sent stage alone takes 6.6 days
- 🟠 **Untargeted Lead Qualification** — 40.6% of drop-offs due to unreachable leads

---

## 🎯 Objectives

| # | Objective | Target |
|---|-----------|--------|
| 1 | Identify & fix the 2 lowest-performing funnel stage transitions | Raise both from <80% → ≥85% CR |
| 2 | Define top 3 lead segments by conversion rate | Reallocate 30% of sales capacity to high-potential profiles |

**Overall target:** Improve funnel conversion rate from **26.5% → 30%** within 6 months.

---

## 🗂️ Dataset Overview

| Table | Records | Description |
|-------|---------|-------------|
| `funnels` | 16,328 | Funnel stage records per lead |
| `leads` | 3,397 | Lead registration data |
| `stages` | 8 | Sales stage master |
| `session_sources` | 5 | Traffic source master |
| `industries` | 6 | Industry master |

---

## 📊 Key Findings

### Funnel Performance
| Stage Transition | Conversion Rate | vs Avg (82.8%) |
|-----------------|-----------------|----------------|
| Qual. → Initial Comm. | 90.1% | +7.3% ✅ |
| Comm. → Approach | 85.6% | +2.8% ✅ |
| Reg. → Qualification | 85.1% | +2.3% ✅ |
| Approach → Discussion | 80.9% | -1.9% ⚠️ |
| Quotation → Deal Won | 81.5% | -1.3% ⚠️ |
| Offer → Quotation | 79.4% | -3.4% 🔴 |
| **Discussion → Offer** | **77.1%** | **-5.7% 🔴** |

### Top Drop-off Reasons
| Reason | Count | Share |
|--------|-------|-------|
| Not Answered | 808 | 40.6% |
| Not Interested | 435 | 21.9% |
| Price Not Fit | 382 | 19.2% |
| Not Selected | 285 | 14.3% |
| Already Use Other Products | 80 | 4.0% |

### Top 3 High-Converting Lead Segments
| Rank | Industry | Source | Size | CR |
|------|----------|--------|------|----|
| #1 | Technology | Referral | Large (201–500) | 43.0% |
| #2 | Hospitality | Referral | Medium (51–200) | 45.5% |
| #3 | Education | Referral | Large (201–500) | 47.1% |

> 💡 **Referral** is the single most consistent conversion driver across all top segments.

---

## 💡 Recommendations

| Priority | Action |
|----------|--------|
| 🔴 High | Introduce **price anchoring** during Discussion stage before sending formal offer |
| 🔴 High | Implement **3-attempt / 5-day multi-channel follow-up** rule (call, WhatsApp, email) |
| 🟡 Medium | Build & strengthen **referral incentive program** for existing customers |
| 🟢 Low | Set up **monthly funnel monitoring dashboard** with CR alerts per stage |

---

## 📁 Repository Structure
peopleU-sales-funnel-analysis/
├── README.md
├── deck/
│   └── Data Exploration Sprint_Funnel Analysis_Albertus Ariel R P.pdf
├── queries/
│   └── funnel_analysis.sql    
└── data/
└── data_overview.md          


---

## 📬 Contact

**Albertus Ariel Renara Pranata**  
arielrenara@gmail.com
