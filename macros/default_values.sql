{% macro default_values(column,value) %}
    coalesce({{column}},{{value}})
{% endmacro %}