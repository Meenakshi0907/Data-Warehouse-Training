# Assignment 2
from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.operators.bash import BashOperator
from airflow.utils.dates import days_ago
from airflow.exceptions import AirflowFailException
import pandas as pd
import os
import shutil
from datetime import datetime, timedelta
import logging

# File paths
input_path = '/opt/airflow/data/sales.csv'
archive_path = '/opt/airflow/archive/sales.csv'
output_dir = '/opt/airflow/output'

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=1),
    'execution_timeout': timedelta(minutes=5),  # ⏱️ Bonus condition
}

# Global variable for the dataframe
sales_df = {"df": None}

def read_csv():
    if not os.path.exists(input_path):
        raise FileNotFoundError(f"{input_path} not found.")
    df = pd.read_csv(input_path)
    if df.empty:
        raise AirflowFailException("Sales CSV is empty.")
    logging.info(f"Read {len(df)} rows with columns: {df.columns.tolist()}")
    sales_df["df"] = df

def summarize():
    df = sales_df.get("df")
    if df is None:
        raise AirflowFailException("No data found in sales_df['df']")
    if 'Category' not in df.columns or 'Amount' not in df.columns:
        raise AirflowFailException(f"Missing required columns. Found: {df.columns.tolist()}")
    summary = df.groupby('Category')['Amount'].sum().reset_index()
    summary.columns = ['Category', 'TotalSales']
    sales_df["summary"] = summary
    logging.info(f"Sales summary calculated:\n{summary}")

def save_summary():
    today = datetime.now().strftime('%Y-%m-%d')
    output_path = os.path.join(output_dir, f'sales_summary_{today}.csv')
    os.makedirs(output_dir, exist_ok=True)
    sales_df["summary"].to_csv(output_path, index=False)
    logging.info(f"Summary saved to {output_path}")

def archive_sales_file():
    os.makedirs(os.path.dirname(archive_path), exist_ok=True)
    shutil.move(input_path, archive_path)
    logging.info(f"Moved original sales file to {archive_path}")

# DAG definition
with DAG(
    dag_id='daily_sales_report',
    default_args=default_args,
    description='Automated daily sales summary with archiving',
    schedule_interval='0 6 * * *',  # Every day at 6 AM
    start_date=days_ago(1),
    catchup=False,
    tags=['sales', 'report'],
) as dag:

    read_sales_file = PythonOperator(
        task_id='read_sales_file',
        python_callable=read_csv,
    )

    summarize_sales = PythonOperator(
        task_id='summarize_sales',
        python_callable=summarize,
    )

    save_summary_file = PythonOperator(
        task_id='save_summary',
        python_callable=save_summary,
    )

    archive_original_file = PythonOperator(
        task_id='archive_file',
        python_callable=archive_sales_file,
    )

    # Set task dependencies
    read_sales_file >> summarize_sales >> save_summary_file >> archive_original_file
