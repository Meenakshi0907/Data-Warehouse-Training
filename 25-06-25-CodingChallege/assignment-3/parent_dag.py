from airflow import DAG
from airflow.operators.dummy import DummyOperator
from airflow.operators.trigger_dagrun import TriggerDagRunOperator
from airflow.utils.dates import days_ago
from datetime import datetime

with DAG(
    dag_id='parent_dag',
    start_date=days_ago(1),
    schedule_interval=None,
    catchup=False,
    description='Parent DAG that triggers a child DAG'
) as dag:

    start = DummyOperator(task_id='start_task')

    trigger_child = TriggerDagRunOperator(
        task_id='trigger_child_dag',
        trigger_dag_id='child_dag',  # ID of the child DAG
        conf={"triggered_time": str(datetime.now())}  # bonus: metadata passed
    )

    start >> trigger_child
