# Homework 1 (approach and results, no notebook)

**Scope:** Regression, multi-output classification, scaling, KernelPCA and clustering on course tasks. Submit notebook withheld.

**Tool:** Claude Code, Claude Opus 5.5. See `ai-use-log.md`.

## Results snapshot (30.10.2026 clean run)

| Task | Key result |
|---|---|
| Task 1 Ridge/Lasso | Test R2 up to 0.737; best Lasso alpha 0.001 |
| Task 2a Cannabis k-NN | Test accuracy 0.424 (baseline 0.244) |
| Task 2d ROC AUC | Setup B best on all three drugs (Cannabis 0.895) |
| Task 2d rare classes | Setup C F1 0.000 on Coke/Ecstasy |
| Task 3 skew | Yeo-Johnson skew 2.480 to 0.097 |
| Task 4a KernelPCA | 150 components CV 0.940, test 0.990 |
| Task 4b clustering | Best ARI 0.481 at 40 components |

**Integrity:** Teaching material (`HW1-teaching.ipynb`, walkthrough) stays out of this public repo. Only this summary and the log.
