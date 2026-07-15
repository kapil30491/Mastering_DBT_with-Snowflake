with source as(
select * from {{ source('dbt_src', 'cust') }}
)
select 
	ID as cust_id ,
	NAME ,
	EMAIL,
	REGION,
	CREATED_AT,
	UPDATED_AT
from source


