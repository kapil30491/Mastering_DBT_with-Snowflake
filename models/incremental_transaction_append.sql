-- 1. Append Strategy (New Transactions Only)
-- Create models/incremental_transactions_append.sql:
{{
    config(
        materialized="incremental",
        unique_key="trans_id",
        incremental_strategy="append",
    )
}}
select trans_id, customer_id, product_id, amount, transaction_date, status, last_updated
from {{ source("dbt_src", "transactions") }}
{% if is_incremental() %}
    -- Only get transactions newer than our latest record
    where last_updated > (select max(last_updated) from {{ this }})
{% endif %}
