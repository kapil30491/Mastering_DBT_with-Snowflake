-- select * from DBT_DB.DBT_DB_SCHEMA.STG_ORDERS

select * from  {{ source('dbt_src', 'stg_orders') }}     --using source.yml file