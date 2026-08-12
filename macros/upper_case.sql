{% macro make_upper(column_name) %}
    upper({{column_name}})
{% endmacro %}