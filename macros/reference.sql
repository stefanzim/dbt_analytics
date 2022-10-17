{%- macro reference(src_ldts, src_source, source_model) -%}

{{- dbtvault.check_required_parameters(src_ldts=src_ldts, 
            src_source=src_source, source_model=source_model) -}}

{%- set src_ldts = dbtvault.escape_column_names(src_ldts) -%}
{%- set src_source = dbtvault.escape_column_names(src_source) -%}

{%- set source_cols = dbtvault.expand_column_list(columns=[src_ldts, src_source]) -%}

{{ dbtvault.prepend_generated_by() }}

SELECT * FROM STAGING_SAP_ECC.PUBLIC.{{ source_model }}

{%- endmacro -%}
