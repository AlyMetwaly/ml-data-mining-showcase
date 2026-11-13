# Deployment lens (coursework only)

**Opinion:** These are thought experiments. Nothing here was production-deployed.

## Block 1 (L1 to L2): baselines, scaling, leakage

- **Monitor:** raw score drift vs a majority-class or mean baseline; calibration of probability outputs if decisions use 0.5 threshold.
- **Fails first:** unscaled SVC on heterogeneous features (HO2: 0.43 vs 0.597 after scaling on wine quality).
- **Human review:** low-margin predictions near the decision boundary; imbalanced positives (HW1 Task 2d: F1 0.000 on rare classes without weights).

## Block 2 (L3 to L4): CV, pipelines, imputation

- **Monitor:** validation vs holdout gap after GridSearch; pipeline schema drift if training imputation differs from serving.
- **Fails first:** optimistic validation when test rows differ from imputation training (HO4: median/KNN imputation did not beat constant fill on the given split).
- **Human review:** rows with many missing features after imputation; flagged before automated approval.

## Block 3 homework scale (Glass, Sonar, Adult)

- **Monitor:** per-class recall on Glass; ROC AUC on Sonar; demographic slice metrics on Adult if deployed fairly.
- **Fails first:** slow or stale SVM scoring on Adult (HW2 notes ~minutes for full pipeline fit).
- **Human review:** low-confidence Sonar positives; Adult predictions near income threshold for manual audit.

## Link to thesis theme (no employer detail)

**Opinion:** Classifier confidence and threshold choice trade automation against human review load. The course exercises (imbalance, double test scoring, CV vs test) are the same trade in miniature.
