# Hands-on 1 (approach and results, no notebook)

**Scope:** Arcada L1 exercises (linear models on breast cancer / California housing; tree vs SVC on wine). Submit notebook withheld until grades are final.

**Tool:** Claude Code, Claude Opus 5.5 (`claude-opus-5-5`). See `ai-use-log.md`.

## Results (18.10.2026 clean run)

| Exercise | Model / setting | Metric |
|---|---|---|
| Ex1 classification | LogisticRegression C=100 | accuracy 0.965 |
| Ex1 regression | Ridge alpha=1 / 0.01 | R2 0.5912 |
| Ex2 wine | DecisionTree depth None | accuracy 0.933 |
| Ex2 wine | SVC C=1 | accuracy 0.822 |
| Ex2 wine | Scaled SVC | accuracy 1.000 |

**Deployment lens (opinion):** Compare every classifier to majority baseline. Scaling was mandatory before SVC matched tree depth=3 (0.933).
