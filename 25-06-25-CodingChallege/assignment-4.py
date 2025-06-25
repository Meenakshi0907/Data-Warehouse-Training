from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.utils.dates import days_ago
from datetime import timedelta
import time
import random

default_args = {
    'owner': 'airflow',
    'retries': 2,
    'retry_delay': timedelta(seconds=10)
}

with DAG(
    dag_id='retry_timeout_dag',
    default_args=default_args,
    description='DAG with retry and timeout handling',
    schedule_interval=None,
    start_date=days_ago(1),
    catchup=False
) as dag:

    def simulate_work():
        print(" Simulating long-running task...")
        delay = random.randint(5, 20)  # simulate variable execution time
        print(f" Sleeping for {delay} seconds")
        time.sleep(delay)
        if delay > 15:
            raise TimeoutError(" Simulated timeout exceeded!")
        print(" Task completed successfully.")

    def log_final_status():
        print(" Final log: DAG completed (check for retries or failure).")

    simulate_task = PythonOperator(
        task_id='simulate_work',
        python_callable=simulate_work,
        execution_timeout=timedelta(seconds=15)
    )

    final_log = PythonOperator(
        task_id='final_log',
        python_callable=log_final_status,
        trigger_rule='all_done'  # Runs even if previous task fails
    )

    simulate_task >> final_log
