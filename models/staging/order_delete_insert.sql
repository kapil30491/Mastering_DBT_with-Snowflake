{{
    config(
        materialized='incremental',
        unique_key='orderid',
        incremental_strategy='delete + delete'
    )
}}

with cte as
(select * 
from {{ source('raw', 'Orders') }}
)

select 
orderid,
customerid,
quantity,
orderdate
from cte
{% if is_incremental() %}
where orderdate >(select max(orderdate) from {{this}})
{% endif %}
