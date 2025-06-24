import pandas as pd
import numpy as np

try:
    customers_df = pd.read_csv('customers.csv')
    orders_df = pd.read_csv('orders.csv')
    status_df = pd.read_csv('delivery_status.csv')
    print("Data loaded successfully.")
except FileNotFoundError as e:
    print(f"Error loading file: {e}")
    exit()

merged_df = pd.merge(orders_df, customers_df, on='customer_id', how='left')
merged_df = pd.merge(merged_df, status_df[['order_id', 'status']], on='order_id', how='left')

print("Cleaning data...")

# Fill missing customer info
merged_df['customer_id'] = merged_df['customer_id'].fillna(0).astype(int)
merged_df['name'] = merged_df['name'].fillna("Unknown")
merged_df['email'] = merged_df['email'].fillna("unknown@example.com")

# Fill missing dates with default
default_date = pd.to_datetime('2000-01-01')
merged_df['order_date'] = pd.to_datetime(merged_df['order_date'], errors='coerce').fillna(default_date)
merged_df['delivery_date'] = pd.to_datetime(merged_df['delivery_date'], errors='coerce').fillna(default_date)

# Fill missing status
merged_df['status'] = merged_df['status'].fillna("Unknown")

print("Data cleaned. Total rows:", len(merged_df))


print("\nCalculating delivery delays...")
merged_df['delay_days'] = (pd.Timestamp.today() - merged_df['delivery_date']).dt.days
merged_df['delayed'] = np.where(merged_df['delay_days'] > 0, 1, 0)
print("Delay calculation completed.")

print("\nTop 5 customers with most delivery delays:")
delay_summary = merged_df.groupby('customer_id')['delayed'].sum().sort_values(ascending=False)
print(delay_summary.head(5))

print("\nMost common delivery issues by status:")
status_summary = merged_df['status'].value_counts()
print(status_summary)

merged_df.to_csv('orders_cleaned.csv', index=False)
delay_summary_df = delay_summary.reset_index()
delay_summary_df.columns = ['customer_id', 'total_delays']
delay_summary_df.to_csv('top_delayed_customers.csv', index=False)

status_summary_df = status_summary.reset_index()
status_summary_df.columns = ['status', 'count']
status_summary_df.to_csv('delivery_issues_summary.csv', index=False)

print("All outputs exported:")
print(" - orders_cleaned.csv")
print(" - top_delayed_customers.csv")
print(" - delivery_issues_summary.csv")
