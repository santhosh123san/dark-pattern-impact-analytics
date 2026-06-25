SELECT
    risk_level,
    COUNT(*) AS application_count
FROM TrustScores
GROUP BY risk_level
ORDER BY application_count DESC;