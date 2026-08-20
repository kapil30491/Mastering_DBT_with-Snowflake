{% test trans_date_less_than_current_date(model, column_name) %}

with validation as (
    select {{ column_name }} as test_column
    from {{ model }}
),

validation_error as (
    select test_column
    from validation
    where test_column >= current_date
       
)

select *
from validation_error

{% endtest %}