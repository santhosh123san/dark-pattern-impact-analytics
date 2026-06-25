SELECT
    app_id,
    trust_score,
    risk_level,
    CASE
        WHEN trust_score < 60 THEN 'Immediate Action Required'
        WHEN trust_score < 80 THEN 'Monitor Closely'
        ELSE 'Maintain Performance'
    END AS recommendation
FROM TrustScores
ORDER BY trust_score ASC;