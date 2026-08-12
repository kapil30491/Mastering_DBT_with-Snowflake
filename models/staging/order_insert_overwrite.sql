{{
    config(
        materialized='incremental',
        incremental_strategy='insert_overwrite',
        partition_by={
                       'field':'orderdate',
                       'data_type':'date'
                     } 
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
orderdate,
current_timestamp() as ts
from cte
{% if is_incremental() %}
where orderdate >(select max(orderdate) from {{this}})
{% endif %}