{{
  config(
    materialized='incremental',
    unique_key='id',
    incremental_strategy='delete+insert'
  )
}}
with transformed as (
  select
    t.id as transactions_id,
    t.date as transaction_date,
    t.time as transaction_time,
    t.quantity,
    s.location as store_location,
    p.category,
    p.details,
    p.type,
    p.unit_price,
    t.quantity * p.unit_price as total_price,
    getdate() as updated_at
  from {{ ref('dim_transaction') }} t
  join {{ ref('dim_store') }} s on t.store_id = s.id
  join {{ ref('dim_product') }} p on t.product_id = p.id
)

select * from transformed
