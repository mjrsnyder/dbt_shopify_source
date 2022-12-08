{% macro get_product_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "created_at", "datatype": dbt.type_timestamp(), "alias": "created_timestamp"},
    {"name": "handle", "datatype": dbt.type_string()},
    {"name": "id", "datatype": dbt.type_numeric(), "alias": "product_id"},
    {"name": "product_type", "datatype": dbt.type_string()},
    {"name": "published_at", "datatype": dbt.type_timestamp(), "alias": "published_timestamp"},
    {"name": "published_scope", "datatype": dbt.type_string()},
    {"name": "title", "datatype": dbt.type_string()},
    {"name": "updated_at", "datatype": dbt.type_timestamp(), "alias": "updated_timestamp"},
    {"name": "vendor", "datatype": dbt.type_string()},
    {"name": "status", "datatype": dbt.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}