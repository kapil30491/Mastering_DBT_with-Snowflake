select account_type,sum(balance) as tot_bal
from bank
group by account_type