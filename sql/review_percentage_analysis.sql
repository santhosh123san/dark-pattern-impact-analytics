SELECT
    rating,
    COUNT(*) AS review_count,
    ROUND((COUNT(*) * 100.0 / 600),2) AS percentage
FROM Reviews
GROUP BY rating
ORDER BY rating;