{% macro cents_to_dollars(price_column) -%}

round({{ price_column }} / 100.0, 2)

{%- endmacro %}