{{
    config(
        materialized='incremental',
        incremental_strategy='append'
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

{# after insert this records  #}

{#INSERT INTO Orders VALUES
(2001,1,101,1,'2027-01-05'),
(2002,2,102,2,'2027-01-06'),
(2003,3,103,1,'2027-01-08'),
(2004,4,104,2,'2027-01-10'),
(2005,5,105,1,'2022-01-12');#}

{#select * from  DBT_DB.DEMO_SCH.ORDERS_APPEND; --20 records before run dbt

select * from DBT_DB.DEMO_SCH.ORDERS_APPEND; -- 24 records after run last record was skiped

becoz last record date is (2005,5,105,1,'2022-01-12') year is 2022 thats a reason#}