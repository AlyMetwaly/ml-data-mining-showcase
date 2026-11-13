# Hands-on 4 (approach and results, no notebook)

**Scope:** Pima diabetes imputation comparison (L4). Submit notebook withheld.

**Tool:** Cursor (Auto agent). See `ai-use-log.md`.

## Results (13.11.2026, nbconvert)

| Imputation | Accuracy (reported) |
|---|---|
| Constant (0) | 0.7795 |
| Median | 0.7717 |
| KNN | 0.7638 |

**Opinion:** On this split, fancier imputation did not beat a constant fill. In deployment I would monitor missingness rate and imputation strategy drift together, not accuracy alone.
