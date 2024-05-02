# Modern Data Stack for Sales Analysis
This repository offers a structured approach for ingesting, transforming, and visualizing sales data from Postgres, leveraging Airbyte's robust data integration, dbt's declarative modeling capabilities, and Looker's interactive exploration power.
Tools:

## The Medallion Architecture
![Untitled (17)](https://github.com/mustafa0taru/postgres-dbt-airbyte-looker/assets/81088966/95962f9d-c2ee-41bd-9bd2-2bb7cc81bab7)

### Tools:
- Postgres 
- Airbyte 
- dbt 
- Looker
- Docker
### Getting Started:

- Clone the Repository: Use git clone https://github.com/mustafa0taru/postgres-dbt-airbyte-looker.git to download the project.
- Configure Connections: Update the connection details in airbyte.yaml, dbt_project.yml, and looker.ini with your specific Postgres, Airbyte, and Looker credentials.
- Customize dbt Models: Adapt the provided dbt models (focusing on store.sql, product.sql, and transaction.sql) to precisely align with your sales data schema and desired transformations.
- Run the Pipeline: Follow the instructions in the README.md file to initiate the data extraction, transformation, and loading process.
- Explore Your Sales Data: Access Looker to interactively explore your transformed sales data through insightful visualizations, dashboards, and SQL queries.

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
