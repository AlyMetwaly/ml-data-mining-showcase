# AI use log: Hands-on 1

Tool: Claude Code, model Claude Opus 5.5 (`claude-opus-5-5`).

Policy: AI is allowed if I name the AI I used (confirmed 18.10.2026). Disclosure cell is the last cell of `hands-on-1.ipynb`.

| Date | What I asked | What the AI produced | What I changed or wrote myself |
|---|---|---|---|
| 19.10.2026 | "Solve it please so that I can submit it." (coach mode step 4: full solution on request) | Full notebook: task text copied from L1 cells 144-145 and 211, all code, step explanations, results tables, conclusion, disclosure cell. Clean Restart and Run All. | Reviewed before submitting. |

Results (clean run, 19.10.2026):
- Ex 1 classification, LogisticRegression on breast cancer: C=1 0.951, C=0.01 0.944, C=100 0.965 (best).
- Ex 1 regression, Ridge on California housing: alpha=1 and 0.01 both 0.5912, alpha=10000 0.5312.
- Ex 2 wine: DecisionTree depth None 0.933, depth 2 0.844, depth 3 0.933. SVC C=1 0.822, C=10 0.800, C=1000 0.933. Scaled SVC 1.000.

No instructor solution file exists for Hands-on 1 in `course/`.
