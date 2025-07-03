import pandas as pd
import numpy as np
import logging
import os

os.makedirs("logs", exist_ok=True)
logging.basicConfig(filename='logs/delay_summary.log', level=logging.INFO, format='%(asctime)s - %(message)s')

def run_analysis():
    try:
        customers = pd.read_csv("week-1/customers.csv")
        orders = pd.read_csv("week-1/orders.csv")
        delivery = pd.read_csv("week-1/delivery_status.csv")
        logging.info("Loaded all CSV files successfully.")
    except FileNotFoundError as e:
        logging.error(f"File not found: {e}")
        print("Missing input files. Aborting.")
        return

    df = orders.merge(customers, on="customer_id", how="left")
    df = df.merge(delivery[["order_id", "status"]], on="order_id", how="left")

    df['delivery_date'] = pd.to_datetime(df['delivery_date'], errors='coerce').fillna(pd.to_datetime('2000-01-01'))
    df['delay_days'] = (pd.Timestamp.today() - df['delivery_date']).dt.days
    df['delayed'] = np.where(df['delay_days'] > 0, 1, 0)

    delay_summary = df.groupby("customer_id")['delayed'].sum().sort_values(ascending=False)

    logging.info("=== Delay Summary ===")
    logging.info(delay_summary.to_string())
    logging.info("Python analysis completed successfully.")
    print("Analysis completed successfully.")

if __name__ == "__main__":
    run_analysis()
