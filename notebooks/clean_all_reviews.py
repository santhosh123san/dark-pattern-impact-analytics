import pandas as pd
import os

# Remaining datasets (Amazon already completed)
datasets = {
    "flipkart_reviews.csv": 2,
    "meesho_reviews.csv": 3,
    "swiggy_reviews.csv": 4,
    "zomato_reviews.csv": 5,
    "phonepe_reviews.csv": 6
}

raw_path = "data/raw"
processed_path = "data/processed"

# Create processed folder if it doesn't exist
os.makedirs(processed_path, exist_ok=True)

for file_name, app_id in datasets.items():
    try:
        file_path = os.path.join(raw_path, file_name)

        print(f"\nProcessing {file_name}...")

        df = pd.read_csv(file_path)

        # Keep required columns
        df = df[['reviewId', 'userName', 'content', 'score', 'appVersion']]

        # Rename columns
        df.columns = [
            'review_id',
            'user_name',
            'review_text',
            'rating',
            'app_version'
        ]

        # Add app_id
        df['app_id'] = app_id

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

        # Output filename
        output_file = file_name.replace(".csv", "_clean.csv")

        # Save cleaned file
        output_path = os.path.join(processed_path, output_file)

        df.to_csv(output_path, index=False)

        print(f"✓ Created: {output_file}")
        print(f"✓ Rows: {len(df)}")

    except Exception as e:
        print(f"✗ Error processing {file_name}")
        print(e)

print("\nAll datasets processed successfully!")