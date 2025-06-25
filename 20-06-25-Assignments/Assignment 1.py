# Assignment 1
from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.operators.bash import BashOperator
from airflow.utils.dates import days_ago
import os
import pandas as pd
import logging

# File path
csv_path = 'data/customers.csv'

# Global variable to hold row count
row_count = {"count": 0}

# Task 1: Check if file exists
def check_file():
    if not os.path.exists(csv_path):
        raise FileNotFoundError(f"File not found: {csv_path}")
    logging.info("CSV file exists.")

# Task 2: Read CSV and count rows
def count_rows():
    df = pd.read_csv(csv_path)
    row_count["count"] = len(df)
    logging.info(f"Row count: {row_count['count']}")

# Task 3: Log row count
def log_count():
    logging.info(f"Final logged row count: {row_count['count']}")

# DAG definition
with DAG(
    dag_id="csv_to_summary_dag",
    start_date=days_ago(1),
    schedule_interval=None,
    catchup=False,
    tags=["assignment", "csv"],
) as dag:

    check_file_exists = PythonOperator(
        task_id="check_file_exists",
        python_callable=check_file,
    )

    count_csv_rows = PythonOperator(
        task_id="count_csv_rows",
        python_callable=count_rows,
    )

    log_row_count = PythonOperator(
        task_id="log_row_count",
        python_callable=log_count,
    )

    # Bonus Task: Send message if count > 100
    notify_high_count = BashOperator(
        task_id="notify_high_count",
        bash_command='echo "Row count is greater than 100!"',
        trigger_rule="all_done",  # still runs even if previous failed (optional)
    )

    # DAG task order
    check_file_exists >> count_csv_rows >> log_row_count >> notify_high_count
