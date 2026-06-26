SELECT
    risk_level,
    COUNT(*) AS application_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM TrustScores),
        2
    ) AS percentage
FROM TrustScores
GROUP BY risk_level
ORDER BY percentage DESC;