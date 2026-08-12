select transaction_id as trnx_id,
customer_name as cust_name,
amount,
PAYMENT_METHOD as method,TRANSACTION_DATE,
datediff(day,{{'TRANSACTION_DATE'}},{{'current_date'}}) as tot_days
from customer_transactions
order by tot_days 