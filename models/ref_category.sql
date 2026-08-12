select balance_band, count(*) as tot_customers
from {{ ref('bank_category') }}
group by 1