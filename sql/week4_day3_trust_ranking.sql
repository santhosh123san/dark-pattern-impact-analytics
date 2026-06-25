SELECT
    app_id,
    trust_score,
    RANK() OVER (ORDER BY trust_score DESC) AS rank_position
FROM TrustScores
ORDER BY trust_score DESC;