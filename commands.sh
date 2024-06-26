# setting up airbyte on docker

git clone https://github.com/airbytehq/airbyte.git

cd airbyte

docker compose up

# setting up dbt core with postgre

# install dbt core

python -m venv dbt_venv
dbt_venv\Scripts\activate.bat  # For Windows

pip install dbt-postgres

# create a dbt project
dbt init project_name

cd project_name

# configure dbt profiles
project_name:
  outputs:
    dev:
      type: postgres
      host: localhost  # or your postgresql host
      port: 5432       # default postgresql port
      user: username
      password: password
      dbname: database
      schema: public   # or your desired schema
      threads: 1
  target: dev

# build dbt models
dbt compile  # Compiles the project and checks for syntax errors
dbt run      # Runs the models and creates views/tables in PostgreSQL
dbt test     # Tests your models to ensure data quality
dbt build    # Builds the entire project (compile, run, test)