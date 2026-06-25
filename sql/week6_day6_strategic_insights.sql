SELECT
    risk_level,
    COUNT(*) AS application_count,
    ROUND(AVG(trust_score),2) AS average_trust_score
FROM TrustScores
GROUP BY risk_level
ORDER BY average_trust_score DESC;