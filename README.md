# ML and data mining coursework (Arcada MIND), built with AI agents under human review

**Fact:** This is student coursework plus documentation. It is not a production ML deployment.

## What this repo shows (AI deployment manager lens)

| Signal | Evidence |
|---|---|
| Honest evaluation (baselines, CV, cautious test use) | [HO2 write-up](handson/HO2/write-up.md), [HW1 write-up](homework/HW1/write-up.md), [ai-workflow.md](docs/ai-workflow.md) |
| Data leakage and metric integrity | [HO2 integrity note](handson/HO2/write-up.md#integrity-note) |
| Pipelines, imputation, AutoML discipline | [HO3](handson/HO3/write-up.md), [HO4](handson/HO4/write-up.md), [HW2](homework/HW2/write-up.md) |
| Reproducible environment | [requirements.txt](requirements.txt), [smoke test](scripts/smoke_test.ps1) |
| AI-use audit trail | [HO1 log](handson/HO1/ai-use-log.md), [HO3 log](handson/HO3/ai-use-log.md), [HW2 log](homework/HW2/ai-use-log.md) |

## Built with Cursor and Claude

| Component | Tool | Model (as logged) | Human role |
|---|---|---|---|
| Repo setup, HO1, HO2, HW1 | Claude Code / claude.ai | Claude Opus 5.5 | Review, upload decisions, coach override on HW1 |
| HO3, HO4, HW2 | Cursor agents | Auto agent (confirm exact model) | Requested solve, nbconvert verify, upload pending |
| Showcase export and docs | Cursor agent | (this session; confirm) | Privacy rules, withheld solutions |
| Showcase prompt | Claude Code | Claude Sonnet 5.5 (commit trailer) | Authored `prompts/06-cursor-github-showcase.md` |

**Proof links (checkable):**

- Cursor co-author: commit `6ac1086` (see `git log`)
- Claude trailers: commit `69ba22a` on private export lineage
- AI-use log: [handson/HO2/ai-use-log.md](handson/HO2/ai-use-log.md)
- Cursor rules: [.cursor/rules/course-study.mdc](.cursor/rules/course-study.mdc)

## Results at a glance

| Item | Headline metric | Source |
|---|---|---|
| HO2 wine SVC | 0.597 test accuracy after scale+tune | [HO2 log](handson/HO2/ai-use-log.md) |
| HW1 Cannabis AUC | 0.895 CV ROC AUC setup B | [HW1 log](homework/HW1/ai-use-log.md) |
| HO4 imputation | 0.7795 constant vs 0.7638 KNN | [HO4 log](handson/HO4/ai-use-log.md) |
| HW2 Sonar | ~0.92 val ROC AUC | [HW2 log](homework/HW2/ai-use-log.md) |

## Repo map

| Path | Purpose |
|---|---|
| `docs/` | Agent workflow, deployment lens, Cursor evidence index |
| `handson/`, `homework/` | AI logs and write-ups (not full submit notebooks) |
| `course/README.md` | Why lecture materials are omitted |
| `prompts/` | Reusable agent prompts (handover + showcase) |
| `scripts/` | Public export list, smoke test |

## Quick start (Windows PowerShell)

```powershell
git clone <your-showcase-url> ml-data-mining-showcase
cd ml-data-mining-showcase
py -3.13 -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
.\scripts\smoke_test.ps1
```

**Fact:** Graded notebooks need the private study repo or your own copies of exercises. This public repo runs environment smoke checks only.

## Scope

Coursework for Arcada. MIT license covers my notes and scripts here. Lecture PDFs and submit notebooks are excluded. See [course/README.md](course/README.md).
