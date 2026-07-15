WITH SOURCE AS(
    SELECT * FROM {{ source('dbt_src', 'RAW_PAYMENTS') }}
)
SELECT 
    id as payment_id,
    order_id,
    amount,
    payment_method,
    payment_date
from SOURCE    