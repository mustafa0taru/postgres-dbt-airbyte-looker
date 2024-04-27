{{
  config(
    materialized='incremental',
    unique_key='id',
    incremental_strategy='delete+insert'
  )
}}
select
  id,
  location,
  getdate() as updated_at
from {{ var('bronze_schema') }}.stg_store
