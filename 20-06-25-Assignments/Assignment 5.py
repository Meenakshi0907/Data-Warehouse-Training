#Assignment 5
from airflow.decorators import dag, task
from airflow.utils.dates import days_ago
from airflow.exceptions import AirflowFailException
import os
import pandas as pd
from typing import List

# Config
INPUT_DIR = '/data/input/'
SUMMARY_DIR = '/data/summaries/'
MERGED_OUTPUT = '/data/final/merged_summary.csv'
EXPECTED_HEADERS = ['id', 'name', 'value']

@dag(
    schedule_interval=None,
    start_date=days_ago(1),
    catchup=False,
    tags=['dynamic', 'csv', 'taskflow'],
)
def dynamic_csv_processor():

    @task()
    def list_csv_files() -> List[str]:
        files = [f for f in os.listdir(INPUT_DIR) if f.endswith('.csv')]
        full_paths = [os.path.join(INPUT_DIR, f) for f in files]
        if not full_paths:
            raise AirflowFailException("No CSV files found.")
        return full_paths

    @task()
    def process_file(file_path: str) -> str:
        df = pd.read_csv(file_path)

        # Validate headers
        if list(df.columns) != EXPECTED_HEADERS:
            raise AirflowFailException(f"Invalid headers in {file_path}")

        # Row count
        row_count = len(df)
        summary = pd.DataFrame([{
            'file': os.path.basename(file_path),
            'row_count': row_count
        }])

        # Write summary
        os.makedirs(SUMMARY_DIR, exist_ok=True)
        summary_path = os.path.join(SUMMARY_DIR, f'summary_{os.path.basename(file_path)}')
        summary.to_csv(summary_path, index=False)
        return summary_path

    @task()
    def merge_summaries(summary_paths: List[str]):
        all_summaries = [pd.read_csv(p) for p in summary_paths]
        merged = pd.concat(all_summaries, ignore_index=True)
        os.makedirs(os.path.dirname(MERGED_OUTPUT), exist_ok=True)
        merged.to_csv(MERGED_OUTPUT, index=False)

    # DAG flow
    files = list_csv_files()
    summaries = process_file.expand(file_path=files)
    merge_summaries(summaries)

# Instantiate the DAG
dynamic_csv_processor()
