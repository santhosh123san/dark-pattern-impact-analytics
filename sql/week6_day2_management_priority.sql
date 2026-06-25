SELECT
    app_id,
    trust_score,
    risk_level,
    CASE
        WHEN risk_level = 'High Risk' THEN 'Priority 1'
        WHEN risk_level = 'Medium Risk' THEN 'Priority 2'
        ELSE 'Priority 3'
    END AS management_priority
FROM TrustScores
ORDER BY
    CASE
        WHEN risk_level = 'High Risk' THEN 1
        WHEN risk_level = 'Medium Risk' THEN 2
        ELSE 3
    END;