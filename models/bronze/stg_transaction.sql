select *
from {{ source('bronze', 'stg_transaction') }}
