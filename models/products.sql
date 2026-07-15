WITH SOURCE AS(
    SELECT * FROM {{ source('dbt_src', 'RAW_PRODUCTS') }}
)
SELECT 
    id as product_id,
    NAME,
    category,
    price
FROM source