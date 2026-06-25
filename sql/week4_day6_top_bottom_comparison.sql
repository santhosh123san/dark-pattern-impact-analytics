SELECT
    app_id,
    trust_score,
    'Top Application' AS category
FROM TrustScores
ORDER BY trust_score DESC
LIMIT 1;

SELECT
    app_id,
    trust_score,
    'Bottom Application' AS category
FROM TrustScores
ORDER BY trust_score ASC
LIMIT 1;