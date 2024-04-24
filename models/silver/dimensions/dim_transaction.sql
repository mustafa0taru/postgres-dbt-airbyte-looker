{{
  config(
    materialized='incremental',
    unique_key='id',
    incremental_strategy='delete+insert'
  )
}}
select
  id,
  date,
  time,
  quantity,
  store_id,
  product_id,
  getdate() as updated_at
from {{ ref('stg_transaction') }}
