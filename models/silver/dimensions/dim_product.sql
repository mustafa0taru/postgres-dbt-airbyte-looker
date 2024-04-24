{{
  config(
    materialized='incremental',
    unique_key='id',
    incremental_strategy='delete+insert'
  )
}}
select
  id,
  unit_price,
  category,
  type,
  detail,
  getdate() as updated_at
from {{ ref('stg_product') }}
