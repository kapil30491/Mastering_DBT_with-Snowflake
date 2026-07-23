{% macro address_concat(v1,v2,v3) %}
    concat('{{v1}}', ',', '{{v2}}','-','{{v3}}')
{% endmacro %}

