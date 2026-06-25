SELECT
    app_id,
    trust_score,
    risk_level,
    (100 - trust_score) AS improvement_gap
FROM TrustScores
ORDER BY improvement_gap DESC;