FROM  python:3.6.9-slim

RUN apt-get update && apt-get install -y gcc
RUN pip install prefect
# Other libs
RUN pip install python-consul2
RUN pip install requests
RUN pip install boto3
# Postgres
RUN apt-get install -y libpq-dev
RUN pip install psycopg2
RUN pip install psycopg2-binary
# MSSQL
RUN apt-get install -y freetds-dev
RUN pip install pymssql

