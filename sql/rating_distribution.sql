SELECT
    rating,
    COUNT(*) AS review_count
FROM Reviews
GROUP BY rating
ORDER BY rating;