{% macro build_date(year, month, day) %}
    concat('{{ year }}', '-', '{{ month }}', '-', '{{ day }}')
{% endmacro %}