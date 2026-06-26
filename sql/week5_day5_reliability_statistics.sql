SELECT
    ROUND(AVG(trust_score),2) AS average_score,
    MAX(trust_score) AS highest_score,
    MIN(trust_score) AS lowest_score,
    ROUND(STDDEV(trust_score),2) AS score_std_deviation
FROM TrustScores;