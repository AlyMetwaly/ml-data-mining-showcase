# AI use log: Hands-on 2

Tools:
- Claude (Anthropic) via claude.ai, model Claude Opus 5.5: explained the concept and suggested the approach.
- Claude Code, model Claude Opus 5.5 (`claude-opus-5-5`): repo setup, task copy, code review, pre-submit check. Coach mode per `CLAUDE.md`.

Policy: AI is allowed if I name the AI I used (confirmed 18.10.2026). Disclosure cell is the last cell of `hands-on-2.ipynb`.

| Date | What I asked | What the AI produced | What I changed or wrote myself |
|---|---|---|---|
| 18.10.2026 | Claude Code: set up the hands-on notebook | Copied the task and starter cells (L2 cells 75-78) into `hands-on-2.ipynb`, added empty "approach" and "conclusion" cells. No solution code. | |
| 18.10.2026 | claude.ai: how to get SVC above 0.5 | Approach: StandardScaler + SVC in a Pipeline, keep the starter split, GridSearchCV over C and gamma only if under 0.5. Example code and conclusion outline. | Chose this approach. Writing the code myself. |
| 18.10.2026 | Claude Code: record AI policy, add disclosure cell | Updated `CLAUDE.md`, this log, and added the disclosure cell. | |
| 18.10.2026 | Claude Code: review my code, run pre-submit check | Pasted my code into cell 6, ran Restart and Run All, gave review notes. Checked that 0.43 equals always guessing quality 6 (0.433). | Code is the claude.ai example with my own comments ("Step 1: scaling only", "Step 2: optional tuning"). Approach and conclusion cells: still to write. |

Results (clean run, 18.10.2026): unscaled 0.43, scaled 0.553, tuned (C=1, gamma=1) CV 0.614, test 0.597.

Instructor solution file `course/Lecture2/Lecture 2_hand_ons_solution.txt` exists. Not used. Only to compare after I finish.
