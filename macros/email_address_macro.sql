{% macro create_email(username, domain) %}
    concat('{{ username }}', '@', '{{ domain }}')
{% endmacro %}