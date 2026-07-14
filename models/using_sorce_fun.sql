select 
cust_id,
cust_name,
cust_email
from {{ source('dbt_src', 'cust') }}                              --(DBT_DB.DBT_DB_SCHEMA.CUST)