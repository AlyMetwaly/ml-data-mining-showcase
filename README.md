# ML and Data Mining: Dashboard

Arcada MIND, 2026-2027. Rules for Claude in `CLAUDE.md`. Reusable prompts in `prompts/`.

## Deadlines
| Item | Covers | Deadline | Points | Status | Next action |
|---|---|---|---|---|---|
| Hands-on 1 | L1: linear models (cells 144-148) + tree vs SVC on wine (cells 210-212) | check itslearning | max 2 | ? | Aly to confirm status and deadline |
| Hands-on 2 | L2: SVC on wine quality, scale, accuracy > 0.5 (cells 75-78) | **21.10.2026 23:59** | max 2 | In progress | Work in `handson/HO2/` |
| Homework 1 | L1 + L2 (regression, classification, scaling, KernelPCA + clustering) | **30.10.2026** | 30 | Not started | Plan tasks, aim to finish 28.10 |
| Hands-on 3 to 6 | Lectures 3 to 6 | TBD | max 2 each | | |
| Homework 2 | Lectures 3 to 4 | TBD | 30 | | |
| Homework 3 | Lectures 5 to 6 | TBD | 30 | | |

### Grading facts (L1 notebook, cells 4 to 8)
- 100 points: 3 exercises x 30 = 90, hands-on = 10.
- Hands-on: notebook says "6 Hands-on Exercises ... (5 x 2 points = 10 points)". **Assumption, not confirmed:** best 5 of 6 count. Ask the lecturer.
- Final scale: 51-60 = 1, 61-70 = 2, 71-80 = 3, 81-90 = 4, 91-100 = 5.
- Soft deadlines (`course/Lecture1/grading`): max grade 95% for 1-7 days late, 90% for 8-14, 80% for 15-21, 70% for 22-27, 50% for 28-30.
- Homework: explain every step in markdown, conclude on results. Do not paste code without explanation.

## Lectures
| # | Topic | Primary notebook | Summary | Concepts done |
|---|---|---|---|---|
| 1 | Supervised learning | `course/Lecture1/01-supervised_learning.ipynb` | | |
| 2 | Preprocessing, dimensionality reduction, clustering | `course/Lecture2/02-Unsupervised_Learning.ipynb` | | |

- L1: use `01-supervised_learning.ipynb` only. Not `_instructor`, not `_student`, not the empty `.py` (lecturer, L2 transcript 1:07:01).
- Course follows Mueller and Guido, *Introduction to Machine Learning with Python* (confirmed: notebooks use `mglearn` book helpers).
- Transcripts: `course/transcripts/*.md` (redacted, partial). L1 covers 0:00-0:02 and 0:52-1:09. L2 covers 0:00-0:02, 0:58-1:09, 1:10-1:12.

## Inventory notes (Phase 0, 18.10.2026)
- `course/Lecture2/Lecture 2_hand_ons_solution.txt` is the instructor solution for Hands-on 2. Use only to check after finishing.
- `course/Lecture1/tree.dot` is generated output of L1 cell 163, not course content.
- Some notebooks exist only in `.ipynb_checkpoints/` (not in git): `Hands-on_lecture1`, `homeworks`, `extras`, `02-supervised-unsupervised_learning`, `03-Unsupervised_Learning(_I)`, `Assignment 2`. Mostly older course versions.
- Homework 1 Task 4 has a stray line "Change this into another dataset." Ask the lecturer whether Olivetti faces is still the dataset.
- Path rules: notebooks use only relative paths inside their own folder. A copied L1 notebook needs `data/`, `grading`, `images/` beside it. Data also loads from UCI URLs and sklearn downloads (internet needed, LFW faces ~200 MB first time).
- L1 cell 165 needs the Graphviz program on PATH. Not installed. Decision pending.

## Environment
Python 3.13 venv in `.venv/`, pins in `requirements.txt`. From the repo root in PowerShell:
```
py -3.13 -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
jupyter lab
```
If PowerShell blocks the activate script: `Set-ExecutionPolicy -Scope Process Bypass`, then activate again (applies to that window only).

## Folders
- `course/` originals, read-only. `notes/` summaries. `handson/`, `homework/` graded work. `applied/` bridges to my work. `scratch/` experiments (not in git).

## Open questions
- How do the 6 hands-on scores map to 10 points?
- Hands-on 1: submitted? Deadline?
- Homework 1 Task 4 dataset.
- Other hands-on slides in L2 (cells 121, 133, 141, 154) have no task text. Were tasks given orally?

## Applied ideas backlog
See `applied/ideas.md`.

## Session log
| Date | What we did | Next |
|---|---|---|
| 18.10.2026 | Phase 0 inventory, Phase 1 repo setup, env built | Hands-on 2 in coach mode |
