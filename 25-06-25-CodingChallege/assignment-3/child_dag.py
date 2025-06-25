from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.utils.dates import days_ago

def process_metadata(**context):
    conf = context['dag_run'].conf or {}
    triggered_time = conf.get("triggered_time", "No timestamp provided")
    print(f"👶 Child DAG triggered with timestamp: {triggered_time}")

with DAG(
    dag_id='child_dag',
    start_date=days_ago(1),
    schedule_interval=None,  # Only runs when triggered manually or by parent
    catchup=False,
    description='Child DAG triggered by parent DAG'
) as dag:

    process = PythonOperator(
        task_id='process_trigger_data',
        python_callable=process_metadata,
        provide_context=True
    )
