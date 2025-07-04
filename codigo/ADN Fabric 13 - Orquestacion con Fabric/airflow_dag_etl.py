from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime, time, timedelta

def bronce_etl():
    print("Ejecutando tarea Bronce ETL")

def plata_etl():
    print("Ejecutando tarea Plata ETL")

def oro_etl():
    print("Ejecutando tarea Oro ETL")

with DAG(
    dag_id="etl_medallon",
    start_date=datetime(2025, 1, 1, 4, 0),
    schedule_interval="0 4 * * *",
    catchup=False,
    tags=["ejemplo"]
) as dag:

    tarea_bronce = PythonOperator(
        task_id="bronce_etl",
        python_callable=bronce_etl
    )

    tarea_plata = PythonOperator(
        task_id="plata_etl",
        python_callable=plata_etl
    )

    tarea_oro = PythonOperator(
        task_id="oro_etl",
        python_callable=oro_etl
    )

    tarea_bronce >> tarea_plata >> tarea_oro
