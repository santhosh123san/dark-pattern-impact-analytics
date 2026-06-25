SELECT
    app_id,
    trust_score,
    CASE
        WHEN trust_score >= 80 THEN 'Low Risk'
        WHEN trust_score >= 60 THEN 'Medium Risk'
        ELSE 'High Risk'
    END AS risk_level
FROM TrustScores
ORDER BY trust_score DESC;