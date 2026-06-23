SELECT
    app_id,
    ROUND(
        (
            (AVG(rating) * 20)
            - (COUNT(CASE WHEN rating <= 2 THEN 1 END) * 0.5)
            + (COUNT(CASE WHEN rating >= 4 THEN 1 END) * 0.2)
        )::numeric,
        2
    ) AS trust_score,
    CASE
        WHEN (
            (AVG(rating) * 20)
            - (COUNT(CASE WHEN rating <= 2 THEN 1 END) * 0.5)
            + (COUNT(CASE WHEN rating >= 4 THEN 1 END) * 0.2)
        ) >= 80 THEN 'Highly Trusted'
        WHEN (
            (AVG(rating) * 20)
            - (COUNT(CASE WHEN rating <= 2 THEN 1 END) * 0.5)
            + (COUNT(CASE WHEN rating >= 4 THEN 1 END) * 0.2)
        ) >= 70 THEN 'Trusted'
        ELSE 'Moderate'
    END AS trust_category
FROM Reviews
GROUP BY app_id
ORDER BY trust_score DESC;