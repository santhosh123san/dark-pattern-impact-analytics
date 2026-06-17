from google_play_scraper import reviews
import pandas as pd

apps = {
    "amazon": "in.amazon.mShop.android.shopping",
    "flipkart": "com.flipkart.android",
    "meesho": "com.meesho.supply",
    "swiggy": "in.swiggy.android",
    "zomato": "com.application.zomato",
    "phonepe": "com.phonepe.app"
}

for app_name, app_id in apps.items():
    try:
        result, _ = reviews(
            app_id,
            lang='en',
            country='in',
            count=100
        )

        df = pd.DataFrame(result)

        df.to_csv(
            f"data/raw/{app_name}_reviews.csv",
            index=False
        )

        print(f"{app_name} reviews saved!")

    except Exception as e:
        print(f"Error in {app_name}: {e}")

print("All review files generated successfully!")