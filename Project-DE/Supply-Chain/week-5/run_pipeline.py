import pandas as pd
import numpy as np

# Load and clean
df = pd.read_csv("orders.csv")
df['delivery_date'] = pd.to_datetime(df['delivery_date'], errors='coerce')
df['delay_days'] = (pd.Timestamp.today() - df['delivery_date']).dt.days
df['is_delayed'] = np.where(df['delay_days'] > 0, 1, 0)

# Save processed output
df.to_csv("output/processed_orders.csv", index=False)
print("Pipeline executed successfully. Output saved.")
