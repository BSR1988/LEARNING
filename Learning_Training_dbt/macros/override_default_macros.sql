-- how to override the default schema while working with DBT (Data Build tool) using Jinja Macro's 
{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- set default_schema = target.schema -%}
   
    {%- if custom_schema_name is none -%}
        {{ default_schema }}
        {{ log("Setting Default Schema: {0}".format(target.schema)) }}
    {%- else -%}
        {{ custom_schema_name | trim }}
        {{ log("Setting Custom Schema: {0}".format(custom_schema_name | trim)) }}
    {%- endif -%}
{% endmacro %} 