{% macro is_active_column() %}
    CASE
        WHEN active = TRUE THEN 'Active'
        ELSE 'Inactive'
    END
{% endmacro %}