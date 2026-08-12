select customer_id,first_name,account_type,balance,city,
{{balance_category('balance')}} as balance_band
from bank


