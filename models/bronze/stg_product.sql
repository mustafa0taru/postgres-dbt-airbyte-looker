select * 
from {{ source('bronze', 'stg_product') }}