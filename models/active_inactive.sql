select * 
from {{ source('dbt_src', 'active_status') }}
--where active = 'true'