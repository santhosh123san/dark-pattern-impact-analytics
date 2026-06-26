SELECT
    CASE
        WHEN trust_score >= 90 THEN 'Excellent'
        WHEN trust_score >= 80 THEN 'Good'
        WHEN trust_score >= 60 THEN 'Average'
        ELSE 'Poor'
    END AS reliability_level,
    COUNT(*) AS application_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM TrustScores),
        2
    ) AS percentage
FROM TrustScores
GROUP BY reliability_level
ORDER BY percentage DESC;