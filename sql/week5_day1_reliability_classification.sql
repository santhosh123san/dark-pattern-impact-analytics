SELECT
    app_id,
    trust_score,
    CASE
        WHEN trust_score >= 90 THEN 'Excellent'
        WHEN trust_score >= 80 THEN 'Good'
        WHEN trust_score >= 60 THEN 'Average'
        ELSE 'Poor'
    END AS reliability_level
FROM TrustScores
ORDER BY trust_score DESC;