--select * from RAW_ORDER_ITEMS-- we can also write this way 
with source as
(
    select * from {{ source('dbt_src', 'RAW_ORDER_ITEMS') }}
)
select 
	ID as order_item_id,
	ORDER_ID ,
	PRODUCT_ID ,
	QUANTITY ,
	UNIT_PRICE 
from source  