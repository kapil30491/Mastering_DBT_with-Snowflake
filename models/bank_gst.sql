select customer_id,first_name,account_type,balance,
{{bank_gst_cal('balance')}} as gst,
balance + {{bank_gst_cal('balance')}} as amount_including_gst
from bank