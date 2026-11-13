# Hands-on 3 (approach and results, no notebook)

**Scope:** L3 GridSearch on `load_wine` and pipeline + GridSearch (cells 70 and 220). Submit notebook withheld.

**Tool:** Cursor (Auto agent). See `ai-use-log.md`.

## Results (13.11.2026, nbconvert)

| Task | Test accuracy |
|---|---|
| Exercise 1 GridSearch | 1.0 |
| Exercise 2 pipeline + GridSearch | 1.0 |

**Opinion for deployment:** Perfect test scores on a small sklearn wine set are a overfitting / split-size warning, not a launch signal. I would demand external validation and simpler baselines before any production story.
