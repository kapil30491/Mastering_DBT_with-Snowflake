-- how many trnx are refunded and purshase and what was the tot amount

select transaction_type,
count(*) as cnt_tot_trnx,
sum(amount) as tot_amnt
from customer_transactions
group by 1