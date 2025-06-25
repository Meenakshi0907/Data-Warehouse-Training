from airflow import DAG
from airflow.operators.python import PythonOperator, BranchPythonOperator
from airflow.operators.dummy import DummyOperator
from airflow.utils.dates import days_ago
from airflow.utils.trigger_rule import TriggerRule
from datetime import datetime
import time

def choose_branch():
    now = datetime.now()
    current_hour = now.hour
    weekday = now.weekday()

    print(f"Current time: {now}, Hour: {current_hour}, Weekday: {weekday}")

    # Weekday: 0 (Mon) to 6 (Sun) — skip on Saturday/Sunday
    if weekday >= 5:
        print("It's the weekend — skipping tasks.")
        return 'skip_task'

    if current_hour < 12:
        print("Morning detected → running task_morning")
        return 'task_morning'
    else:
        print("Afternoon detected → running task_afternoon")
        return 'task_afternoon'

def morning_task():
    print("Good morning! Executing morning logic...")

def afternoon_task():
    print("Good afternoon! Executing afternoon logic...")

def cleanup_task():
    print("Performing cleanup...")

default_args = {
    'owner': 'airflow',
    'start_date': days_ago(1),
}

with DAG(
    dag_id='assignment5_time_based_branching',
    default_args=default_args,
    schedule_interval=None,
    catchup=False,
    description='Run different tasks based on time of day with weekend skip'
) as dag:

    branch_task = BranchPythonOperator(
        task_id='check_time_and_branch',
        python_callable=choose_branch
    )

    task_morning = PythonOperator(
        task_id='task_morning',
        python_callable=morning_task
    )

    task_afternoon = PythonOperator(
        task_id='task_afternoon',
        python_callable=afternoon_task
    )

    skip_task = DummyOperator(
        task_id='skip_task'
    )

    cleanup = PythonOperator(
        task_id='final_cleanup',
        python_callable=cleanup_task,
        trigger_rule=TriggerRule.NONE_FAILED_MIN_ONE_SUCCESS  # ensures it runs regardless of branch
    )

    branch_task >> [task_morning, task_afternoon, skip_task] >> cleanup
