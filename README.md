# Modern Data Stack for Sales Analysis
This repository offers a structured approach for ingesting, transforming, and visualizing sales data from Postgres, leveraging Airbyte's robust data integration, dbt's declarative modeling capabilities, and Looker's interactive exploration power.
Tools:

## The Medallion Architecture
![Untitled (18)](https://github.com/mustafa0taru/postgres-dbt-airbyte-looker/assets/81088966/e09540cf-9d2b-4b4b-b668-038cde3a957d)

### Tools:
- Postgres 
- Airbyte 
- dbt 
- Looker
- Docker
## The Dashboard
![Screenshot 2024-03-05 044641](https://github.com/mustafa0taru/postgres-dbt-airbyte-looker/assets/81088966/47f50462-549a-48da-8cd4-b657120a9e79)
[View here](https://lookerstudio.google.com/reporting/e98b2842-104a-4306-8569-0c6858228bf4/page/D77qD)

### Getting Started:

- Clone the Repository: Use git clone `git clone https://github.com/mustafa0taru/postgres-dbt-airbyte-looker.git` to download the project.
- Configure Connections: Update the connection details in `airbyte.yaml`, `dbt_project.yml`, and `looker.ini` with your specific Postgres, Airbyte, and Looker credentials.
- Customize dbt Models: Adapt the provided dbt models (focusing on stg_store.sql, stg_product.sql, and stg_transaction.sql) to precisely align with your sales data schema and desired transformations.
- Run the Pipeline: Follow the instructions in the `README.md` file to initiate the data extraction, transformation, and loading process.
- Explore Your Sales Data: Access Looker to interactively explore your transformed sales data through insightful visualizations, dashboards, and SQL queries.

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
