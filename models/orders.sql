with source as(
    select * from {{ source('dbt_src', 'RAW_ORDERS') }}
)
select 	
    ID as order_id ,
	CUSTOMER_ID ,
	STATUS ,
	ORDER_DATE ,
	TOTAL_AMOUNT ,
	CREATED_AT,
    UPDATED_AT
from source

