SELECT
    app_id,
    ROUND(AVG(rating),2) AS avg_rating,
    COUNT(CASE WHEN rating <= 2 THEN 1 END) AS negative_reviews,
    COUNT(CASE WHEN rating >= 4 THEN 1 END) AS positive_reviews,
    ROUND(
        (AVG(rating) * 20)
        - (COUNT(CASE WHEN rating <= 2 THEN 1 END) * 0.5)
        + (COUNT(CASE WHEN rating >= 4 THEN 1 END) * 0.2),
    2) AS trust_score
FROM Reviews
GROUP BY app_id
ORDER BY trust_score DESC;