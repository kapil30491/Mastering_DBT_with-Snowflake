{{
    config(
        materialized='table'
    )
}}

with cte as
(select * from {{ source('raw', 'Customers') }})


select 
CUSTOMERID as cus_id,
EMAIL as E_mail,
PHONE as phone_number,
CITY
from cte