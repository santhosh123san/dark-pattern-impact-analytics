SELECT
    app_id,
    COUNT(CASE WHEN rating <= 2 THEN 1 END) AS negative_reviews,
    COUNT(CASE WHEN rating = 3 THEN 1 END) AS neutral_reviews,
    COUNT(CASE WHEN rating >= 4 THEN 1 END) AS positive_reviews
FROM Reviews
GROUP BY app_id
ORDER BY app_id;