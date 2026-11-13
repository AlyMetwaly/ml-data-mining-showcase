# Hands-on 2 (approach and results, no notebook)

**Scope:** SVC on wine quality with scaling and optional tuning. Submit notebook withheld.

**Tools:** claude.ai and Claude Code (Claude Opus 5.5). See `ai-use-log.md`.

## Approach

Pipeline: `StandardScaler` then `SVC` on the starter train/test split. Optional `GridSearchCV` on C and gamma only if accuracy stayed below 0.5 on the training objective used in class.

## Results (18.10.2026)

| Step | Test accuracy |
|---|---|
| Unscaled SVC | 0.43 (~ always predict class 6, baseline 0.433) |
| Scaled SVC | 0.553 |
| Tuned (C=1, gamma=1) | 0.597 (CV ~0.614) |

## Integrity note

The test set was used for scoring more than once during exploration. The conclusion text was corrected to say the test set is only for final scoring, not that it was touched once. See `docs/ai-workflow.md`.
