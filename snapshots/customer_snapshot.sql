{% snapshot customer_snapshot %}

{{
    config(
        target_schema='DEMO_SCH',
        unique_key='customerid',
        strategy='check',
        check_cols=['customerid','customername', 'city']
    )
}}

SELECT customerid,customername,city
FROM {{ source('raw', 'Customers') }}

{% endsnapshot %}