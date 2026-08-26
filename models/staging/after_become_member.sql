-- Which item was purchased just before the customer became a member?

with after_become_member as
(
    select mem.customer_id, s.order_date,m.product_name,
    dense_rank()over(partition by s.customer_id order by s.order_date) as rn
    from sales s
    join members mem
    on s.customer_id = mem.customer_id
    join menu m
    on s.product_id  = m.product_id
    where s.order_date < mem.join_date
)

select customer_id,product_name 
from after_become_member
where rn=1