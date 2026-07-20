{{
    config(
        materialized='view'
    )
}}

SELECT * FROM {{ source('dbt_src', 'RAW_PAYMENTS') }}