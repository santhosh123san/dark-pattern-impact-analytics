SELECT
    ROUND(AVG(trust_score),2) AS average_trust_score,
    MAX(trust_score) AS highest_trust_score,
    MIN(trust_score) AS lowest_trust_score,
    ROUND(MAX(trust_score) - MIN(trust_score),2) AS trust_score_range
FROM TrustScores;