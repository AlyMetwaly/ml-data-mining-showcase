# Homework 2 (approach and results, no notebook)

**Scope:** Glass identification, Sonar, Adult census income. Submit notebook withheld until grade finalization.

**Tool:** Cursor (Auto agent). See `ai-use-log.md`.

## Results (13.11.2026, nbconvert)

| Dataset | Metric | Value |
|---|---|---|
| Glass | Random forest test accuracy | ~0.83 |
| Sonar | Validation ROC AUC | ~0.92 |
| Adult | SVM after preparation | ~0.846 |

Task 1c used `RandomizedSearchCV` over KNN/SVC/RF pipelines as a sklearn-only AutoML analogue (no TPOT in `requirements.txt`).

**Opinion:** Adult runtime was slow (~2 min nbconvert). That is an operational constraint I would size before batch scoring at scale.
