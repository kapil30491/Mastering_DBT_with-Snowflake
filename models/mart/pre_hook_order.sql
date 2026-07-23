{{
    config(
        materialized='table',
        pre_hook=['Create or replace temporary table DBT_DB.DB_SCHEMA.pre_hook_Orders as select * from DB.DEMO_SCH.ORDERS' ]
    )
}}

with cte as 
(select * from DBT_DB.DB_SCHEMA.Orders)

select * from cte