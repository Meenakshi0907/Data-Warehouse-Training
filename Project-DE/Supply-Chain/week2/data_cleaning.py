import pandas as pd
import numpy as np

df = pd.read_csv("supply_chain_data.csv")


df_cleaned = df.dropna(subset=['product_name', 'supplier_name', 'order_date', 'delivery_date']).copy()


df_cleaned['order_date'] = pd.to_datetime(df_cleaned['order_date'], errors='coerce')
df_cleaned['delivery_date'] = pd.to_datetime(df_cleaned['delivery_date'], errors='coerce')


df_cleaned = df_cleaned.dropna(subset=['order_date', 'delivery_date'])


today = pd.Timestamp.today()
df_cleaned['delay_days'] = (today - df_cleaned['delivery_date']).dt.days
df_cleaned['is_delayed'] = np.where(df_cleaned['delay_days'] > 0, 1, 0)


df_processed = df_cleaned[[
    'order_id', 'product_name', 'supplier_name', 'order_date', 'delivery_date',
    'quantity', 'status', 'delay_days', 'is_delayed'
]]


df_processed.to_csv("cleaned_supply_chain_data.csv", index=False)
print("Cleaned data saved to 'cleaned_supply_chain_data.csv'")
