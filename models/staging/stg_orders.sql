with source as
(
select * from {{ source('raw', 'Orders') }}
),
rename as
        (select 
        orderid as o_id,
        customerid as cust_id,
        productid as product_id,
        quantity,
        orderdate
        from source)

select * from rename
