SELECT
    CASE
        WHEN trust_score >= 90 THEN 'Top Performers'
        WHEN trust_score >= 80 THEN 'Strong Performers'
        WHEN trust_score >= 60 THEN 'Moderate Performers'
        ELSE 'Needs Improvement'
    END AS performance_group,
    COUNT(*) AS application_count
FROM TrustScores
GROUP BY performance_group
ORDER BY application_count DESC;