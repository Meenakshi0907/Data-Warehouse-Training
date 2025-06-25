from airflow import DAG
from airflow.operators.python import PythonOperator, BranchPythonOperator
from airflow.operators.empty import EmptyOperator
from airflow.utils.dates import days_ago
from datetime import datetime, timedelta

default_args = {
    'owner': 'airflow',
    'retries': 1,
    'retry_delay': timedelta(minutes=1),
}

with DAG(
    dag_id='time_branching_dag',
    default_args=default_args,
    description='Run different tasks based on time of day and skip on weekends',
    schedule_interval=None,
    start_date=days_ago(1),
    catchup=False
) as dag:

    def decide_branch():
        now = datetime.now()
        current_hour = now.hour
        weekday = now.weekday()

        print(f"Current time: {now.strftime('%Y-%m-%d %H:%M:%S')}")
        print(f" Weekday index (0=Mon): {weekday}")

        if weekday >= 5:
            print(" Weekend detected. Skipping DAG.")
            return 'skip_dag'

        if current_hour < 12:
            return 'morning_task'
        elif current_hour < 18:
            return 'afternoon_task'
        else:
            return 'skip_dag'

    branch = BranchPythonOperator(
        task_id='branch_decision',
        python_callable=decide_branch
    )

    morning_task = PythonOperator(
        task_id='morning_task',
        python_callable=lambda: print(" Running morning task")
    )

    afternoon_task = PythonOperator(
        task_id='afternoon_task',
        python_callable=lambda: print(" Running afternoon task")
    )

    skip_dag = EmptyOperator(
        task_id='skip_dag'
    )

    final_cleanup = PythonOperator(
        task_id='final_cleanup',
        python_callable=lambda: print("Final cleanup executed"),
        trigger_rule='none_failed_min_one_success'  
    )

    branch >> [morning_task, afternoon_task, skip_dag]
    [morning_task, afternoon_task, skip_dag] >> final_cleanup
