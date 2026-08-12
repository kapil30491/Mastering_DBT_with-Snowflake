select transaction_id,customer_name,
upper({{'CUSTOMER_NAME'}}) as upper_name,
amount,
round({{'amount'}}) as round_amount
from customer_transactions