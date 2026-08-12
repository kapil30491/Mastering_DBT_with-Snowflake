{% macro balance_category(balance) %}
    case
        when {{ balance }} <= 25000 then 'Low'
        when {{ balance }} <= 50000 then 'Medium'
        when {{ balance }} <= 80000 then 'High'
        else 'Very_High'
    end
{% endmacro %}