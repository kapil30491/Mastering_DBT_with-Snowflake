select customer_id,customer_name,amount,
coalesce({{'amount'}},{{100.00}}) as default_amount_value

from customer_transactions