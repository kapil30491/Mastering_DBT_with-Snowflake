{% macro round_value(column_name) %}
    round({{column_name}},0)
{% endmacro %}