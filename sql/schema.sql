-- Apps Table

CREATE TABLE Apps (
    app_id INT PRIMARY KEY,
    app_name VARCHAR(100),
    category VARCHAR(100),
    platform VARCHAR(50),
    created_date DATE
);

-- Reviews Table

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    app_id INT,
    user_name VARCHAR(255),
    rating INT,
    review_text TEXT,
    review_date DATE,
    sentiment VARCHAR(20),

    FOREIGN KEY (app_id)
    REFERENCES Apps(app_id)
);

-- DarkPatterns Table

CREATE TABLE DarkPatterns (
    pattern_id INT PRIMARY KEY,
    pattern_name VARCHAR(100),
    description TEXT,
    severity_level VARCHAR(20)
);

-- TrustScores Table

CREATE TABLE TrustScores (
    score_id INT PRIMARY KEY,
    app_id INT,
    trust_score DECIMAL(5,2),
    risk_level VARCHAR(20),
    calculated_date DATE,

    FOREIGN KEY (app_id)
    REFERENCES Apps(app_id)
);