# AI use log: Homework 1

Tool: Claude (Anthropic), model Claude Opus 5.5 (`claude-opus-5-5`), via Claude Code. No other AI tool was used for this homework.

Policy: AI is allowed if I name the AI I used (confirmed 18.10.2026). Disclosure cell is the last cell of `Aly-Metwaly-homework-1.ipynb`. Its text:
> I used Claude (Anthropic, Claude Opus 5.5, via Claude Code) to solve this homework and write the explanations. I reviewed the solution and the results.

Solo submission. No partner.

| Date | What I asked | What the AI produced | What I changed or wrote myself |
|---|---|---|---|
| 30.10.2026 | Override coach mode for Homework 1: "solve it fully on your own". Keep a clean submission and separate teaching material. | Copied the task cells from `course/homework/Homework1.ipynb` (original not edited) into `Aly-Metwaly-homework-1.ipynb`. Wrote all code, the short answers, the conclusion and the disclosure cell. Ran Restart and Run All: 0 errors, 0 warnings. Checked every number in the text against the outputs. | Review before upload (still to do). |
| 30.10.2026 | Teaching material, never submitted | `notes/homework/HW1/HW1-teaching.ipynb` (the submission plus 27 teaching cells, outputs copied unchanged) and `HW1-walkthrough.md`. | |

Decisions the AI made that I should be able to defend:
- Task 2: `Semer` (a fictitious drug) is excluded, so there are 18 outputs, as the task states.
- Task 2c: one multi-output random forest. Per-class accuracy = per-class recall.
- Task 3: Yeo-Johnson plus standardization, rather than a plain z-score.
- Task 4: Olivetti faces, as the task describes, despite the stray line "Change this into another dataset."

Results (clean run, 30.10.2026):
- Task 1: Ridge test R2 0.737, Lasso (default) 0.665. Best Lasso `alpha` = 0.001 by CV: test R2 0.737, RMSE 17.39 K.
- Task 2a: Cannabis LR 0.416, k-NN 0.385 (baseline 0.244). Nicotine LR 0.390, k-NN 0.276 (baseline 0.324).
- Task 2b: best k = 91 (CV 0.407), test 0.424.
- Task 2c: all 16 outputs within -0.058 to +0.042 of the majority baseline.
- Task 2d: setup B has the best CV ROC AUC for all three drugs (Cannabis 0.895, Coke 0.761, Ecstasy 0.821). Setup C fails for Coke and Ecstasy (F1 0.000).
- Task 3: Jumps skew 2.480 to 0.097.
- Task 4a: best 150 components, CV 0.940, test 0.990. 40 components CV 0.937 = raw pixels 0.937.
- Task 4b: best KMeans ARI 0.481 (40 components). 10 components ARI 0.394.

No instructor solution file exists for Homework 1 in `course/`.
