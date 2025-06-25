#Assignment 3
from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.operators.empty import EmptyOperator
from airflow.operators.bash import BashOperator
from airflow.utils.dates import days_ago
from airflow.utils.trigger_rule import TriggerRule
import random
import logging
from datetime import timedelta

# Flaky API simulation
def flaky_api():
    if random.random() < 0.5:  # 50% failure chance
        logging.warning("API failed randomly!")
        raise Exception("Simulated API failure.")
    logging.info("API call succeeded.")

# Bonus task
def process_success():
    logging.info("Processing successful API response...")

# Alert task
def send_alert():
    logging.error("All retries failed. Sending alert...")

# DAG setup
default_args = {
    'owner': 'airflow',
    'retries': 3,
    'retry_delay': timedelta(seconds=10),
    'retry_exponential_backoff': True,
    'max_retry_delay': timedelta(minutes=5),
}

with DAG(
    dag_id='retry_with_alerts',
    default_args=default_args,
    start_date=days_ago(1),
    schedule_interval=None,
    catchup=False,
    tags=['retry', 'alert', 'assignment'],
) as dag:

    start = EmptyOperator(task_id="start")

    flaky_api_call = PythonOperator(
        task_id='flaky_api_call',
        python_callable=flaky_api,
    )

    alert_on_failure = PythonOperator(
        task_id='alert_on_failure',
        python_callable=send_alert,
        trigger_rule=TriggerRule.ONE_FAILED,  # Run only if flaky_api_call fails
    )

    process_if_successful = PythonOperator(
        task_id='process_if_successful',
        python_callable=process_success,
    )

    end = EmptyOperator(task_id="end")

    # DAG Flow
    start >> flaky_api_call
    flaky_api_call >> process_if_successful >> end
    flaky_api_call >> alert_on_failure >> end
