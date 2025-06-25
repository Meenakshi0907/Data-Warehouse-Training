from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.operators.email import EmailOperator
from airflow.utils.dates import days_ago
from datetime import timedelta
import random

default_args = {
    'owner': 'airflow',
    'email': ['{{ var.value.alert_email | default("meenakshiapril25@gmail.com") }}'],  # variable-based
    'email_on_failure': True,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(seconds=5),
}

with DAG(
    dag_id='email_notification_dag',
    default_args=default_args,
    description='Send email on task failure and DAG success',
    schedule_interval=None,
    start_date=days_ago(1),
    catchup=False
) as dag:

    def risky_task():
        n = random.randint(1, 10)
        print(f" Random number: {n}")
        if n % 2 == 0:
            raise ValueError(" Simulated failure!")
        print(" Task succeeded.")

    task_may_fail = PythonOperator(
        task_id='task_may_fail',
        python_callable=risky_task
    )

    notify_success = EmailOperator(
        task_id='notify_success',
        to='{{ var.value.alert_email | default("meenakshiapril25@gmail.com") }}',
        subject=' DAG email_notification_dag succeeded',
        html_content='All tasks completed successfully!',
        trigger_rule='all_success'
    )

    task_may_fail >> notify_success