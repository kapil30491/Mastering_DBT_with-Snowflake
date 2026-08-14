{% macro dynamics_date_partitions(start_date,end_date) %}
    transaction_date between'{{start_date}}'and'{{end_date}}'
{% endmacro %}