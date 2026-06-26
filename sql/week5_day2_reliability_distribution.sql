SELECT
    CASE
        WHEN trust_score >= 90 THEN 'Excellent'
        WHEN trust_score >= 80 THEN 'Good'
        WHEN trust_score >= 60 THEN 'Average'
        ELSE 'Poor'
    END AS reliability_level,
    COUNT(*) AS application_count
FROM TrustScores
GROUP BY reliability_level
ORDER BY application_count DESC;