select customer_name,amount,city,TRANSACTION_DATE,
extract(month from {{'TRANSACTION_DATE'}}) as trnx_months
from customer_transactions