from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.utils.dates import days_ago
from datetime import timedelta
import time

default_args = {
    'owner': 'airflow',
    'retries': 3,
    'retry_delay': timedelta(seconds=10),
    'retry_exponential_backoff': True,
    'max_retry_delay': timedelta(minutes=2)
}

def long_running_task():
    try:
        print("Starting simulated work...")
        time.sleep(25)  
        print("Task completed successfully.")
    except Exception as e:
        print(f"Task failed due to: {str(e)}")
        raise

with DAG(
    dag_id='assignment4_retry_timeout_dag',
    default_args=default_args,
    start_date=days_ago(1),
    schedule_interval=None,
    catchup=False,
    description='DAG with retry and timeout handling'
) as dag:

    run_with_timeout = PythonOperator(
        task_id='long_running_task',
        python_callable=long_running_task,
        execution_timeout=timedelta(seconds=30)
    )
