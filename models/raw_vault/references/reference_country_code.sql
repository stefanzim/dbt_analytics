{%- set source_model = "COUNTRY_CODE" -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbt_analytics.reference(src_ldts=src_ldts,src_source=src_source, 
                        source_model=source_model) }}