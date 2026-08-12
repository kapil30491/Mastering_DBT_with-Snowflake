{% macro month_extract(date_column) %}
    extract(month from{{date_column}})
{% endmacro %}