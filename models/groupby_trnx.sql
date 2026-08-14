select payment_method,
sum(amount) as tot_amnt,
count(*) as tot_trnx
from {{ ref('cust_trnx') }}
group by payment_method