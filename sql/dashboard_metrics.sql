SELECT
    COUNT(DISTINCT app_id) AS total_apps,
    COUNT(*) AS total_reviews,
    ROUND(AVG(rating),2) AS overall_average_rating,
    COUNT(CASE WHEN rating <= 2 THEN 1 END) AS total_negative_reviews,
    COUNT(CASE WHEN rating >= 4 THEN 1 END) AS total_positive_reviews
FROM Reviews;