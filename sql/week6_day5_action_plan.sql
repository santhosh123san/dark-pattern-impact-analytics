SELECT
    app_id,
    trust_score,
    risk_level,
    CASE
        WHEN risk_level = 'High Risk'
            THEN 'Immediate Review and Redesign'
        WHEN risk_level = 'Medium Risk'
            THEN 'Monitor and Improve Features'
        ELSE
            'Maintain Current Strategy'
    END AS action_plan
FROM TrustScores
ORDER BY trust_score ASC;