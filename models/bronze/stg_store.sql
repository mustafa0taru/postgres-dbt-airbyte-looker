select * 
from {{ source('bronze', 'stg_store') }}
