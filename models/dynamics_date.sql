select *
from customer_transactions
where {{dynamics_date_partitions('2022-01-01','2022-05-28')}}