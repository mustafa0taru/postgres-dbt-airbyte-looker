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
from {{ ref('stg_store') }}
