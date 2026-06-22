import pandas as pd

# Read original file
df = pd.read_csv("data/raw/amazon_reviews.csv")

# Keep only required columns
df = df[['reviewId', 'userName', 'content', 'score', 'appVersion']]

# Rename columns
df.columns = [
    'review_id',
    'user_name',
    'review_text',
    'rating',
    'app_version'
]

# Add app_id column
df['app_id'] = 1

# Reorder columns
df = df[
    [
        'review_id',
        'app_id',
        'user_name',
        'review_text',
        'rating',
        'app_version'
    ]
]

# Save cleaned file
df.to_csv(
    "data/processed/amazon_reviews_clean.csv",
    index=False
)

print("Amazon cleaned file created successfully!")