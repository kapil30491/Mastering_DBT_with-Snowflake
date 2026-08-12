select transaction_id,customer_id,customer_name,amount,
round({{'amount'}},0)
from customer_transactions