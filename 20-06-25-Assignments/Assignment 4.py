from airflow import DAG
from airflow.operators.python import PythonOperator, BranchPythonOperator
from airflow.operators.empty import EmptyOperator
from airflow.utils.dates import days_ago
from airflow.utils.trigger_rule import TriggerRule
import os
import logging

# File path and size threshold
FILE_PATH = os.path.abspath('data/inventory.csv')
THRESHOLD_KB = 500  # 500 KB

# Branching logic based on file size
def decide_path():
    logging.info(f"Checking file at path: {FILE_PATH}")
    logging.info(f"Current working directory: {os.getcwd()}")

    if not os.path.exists(FILE_PATH):
        logging.error("File not found!")
        raise FileNotFoundError(f"{FILE_PATH} does not exist.")

    size_kb = os.path.getsize(FILE_PATH) / 1024
    logging.info(f"File size is {size_kb:.2f} KB")

    if size_kb < THRESHOLD_KB:
        logging.info("Small file - proceeding to task_a")
        return 'task_a'
    else:
        logging.info("Large file - proceeding to task_b")
        return 'task_b'

# Light summary task
def task_a_logic():
    logging.info("✅ Running light summary for small file.")

# Detailed processing task
def task_b_logic():
    logging.info("✅ Running detailed processing for large file.")

# Final cleanup task
def cleanup_logic():
    logging.info("🧹 Performing final cleanup after branching.")

default_args = {
    'owner': 'airflow',
    'start_date': days_ago(1),
}

with DAG(
    dag_id='branching_file_size_dag',
    default_args=default_args,
    schedule_interval=None,
    catchup=False,
    tags=['branching', 'conditional', 'assignment'],
) as dag:

    start = EmptyOperator(task_id='start')

    check_file_size = BranchPythonOperator(
        task_id='check_file_size',
        python_callable=decide_path,
    )

    task_a = PythonOperator(
        task_id='task_a',
        python_callable=task_a_logic,
    )

    task_b = PythonOperator(
        task_id='task_b',
        python_callable=task_b_logic,
    )

    join = EmptyOperator(
        task_id='join',
        trigger_rule=TriggerRule.ONE_SUCCESS,  # ✅ allows continuation if one path succeeds
    )

    cleanup = PythonOperator(
        task_id='cleanup',
        python_callable=cleanup_logic,
    )

    # DAG structure
    start >> check_file_size
    check_file_size >> task_a >> join
    check_file_size >> task_b >> join
    join >> cleanup
