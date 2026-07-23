select * from {{ ref('product') }}
where productname is null