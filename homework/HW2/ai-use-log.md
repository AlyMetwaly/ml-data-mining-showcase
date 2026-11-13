# AI use log: Homework 2

Tool: Cursor (Auto agent) on user request (coach mode off for this session). No TPOT/shap added to requirements.

| Date | What I asked | What the AI produced | What I changed |
|---|---|---|---|
| 13.11.2026 | Solve Homework 2 (Glass, Sonar, Census) | `homework/HW2/Aly-Metwaly-homework-2.ipynb` with explanations; Task 1c uses multi-pipeline RandomizedSearchCV as sklearn-only AutoML analogue | Review before upload 20.11.2026 |

Policy: AI allowed if named. Disclosure cell is last in submit notebook.

Results (nbconvert, 13.11.2026): Glass RF test ~0.83; Sonar val ROC AUC ~0.92; Adult SVM after prep ~0.846 (listwise baseline ~0.846 on complete-case test rows).
Task 1c: `RandomizedSearchCV` over KNN/SVC/RF pipelines (sklearn-only AutoML analogue; no TPOT in requirements).
