SELECT
    COUNT(*) AS total_applications,
    SUM(CASE WHEN risk_level = 'Low Risk' THEN 1 ELSE 0 END) AS low_risk_apps,
    SUM(CASE WHEN risk_level = 'Medium Risk' THEN 1 ELSE 0 END) AS medium_risk_apps,
    SUM(CASE WHEN risk_level = 'High Risk' THEN 1 ELSE 0 END) AS high_risk_apps,
    ROUND(AVG(trust_score),2) AS average_trust_score
FROM TrustScores;