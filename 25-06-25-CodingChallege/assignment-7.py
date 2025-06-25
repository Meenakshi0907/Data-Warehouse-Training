from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.utils.dates import days_ago
import requests
import pandas as pd
import os

default_args = {
    'owner': 'airflow',
    'start_date': days_ago(1),
}

dag = DAG(
    dag_id='external_api_dag',
    default_args=default_args,
    schedule_interval='@daily',
    catchup=False,
    description='Extract and process data from external API'
)

API_URL = 'https://jsonplaceholder.typicode.com/posts'  # Dummy API

OUTPUT_DIR = os.path.join(os.environ['AIRFLOW_HOME'], 'dags', 'assignment7', 'output')
os.makedirs(OUTPUT_DIR, exist_ok=True)

def fetch_data():
    response = requests.get(API_URL)
    data = response.json()
    df = pd.DataFrame(data)
    output_path = os.path.join(OUTPUT_DIR, 'api_data.csv')
    df.to_csv(output_path, index=False)
    print(f'Data saved to {output_path}')

def process_data():
    input_path = os.path.join(OUTPUT_DIR, 'api_data.csv')
    df = pd.read_csv(input_path)
    summary = df.groupby('userId').size().reset_index(name='post_count')
    output_path = os.path.join(OUTPUT_DIR, 'summary.csv')
    summary.to_csv(output_path, index=False)
    print(f'Summary saved to {output_path}')

fetch_task = PythonOperator(
    task_id='fetch_api_data',
    python_callable=fetch_data,
    dag=dag
)

process_task = PythonOperator(
    task_id='process_api_data',
    python_callable=process_data,
    dag=dag
)

fetch_task >> process_task
