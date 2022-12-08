{% macro get_order_line_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "fulfillable_quantity", "datatype": dbt.type_numeric()},
    {"name": "fulfillment_service", "datatype": dbt.type_string()},
    {"name": "fulfillment_status", "datatype": dbt.type_string()},
    {"name": "gift_card", "datatype": "boolean", "alias": "is_gift_card"},
    {"name": "grams", "datatype": dbt.type_numeric()},
    {"name": "id", "datatype": dbt.type_numeric(), "alias": "order_line_id"},
    {"name": "index", "datatype": dbt.type_numeric()},
    {"name": "name", "datatype": dbt.type_string()},
    {"name": "order_id", "datatype": dbt.type_numeric()},
    {"name": "pre_tax_price", "datatype": dbt.type_float()},
    {"name": "pre_tax_price_set", "datatype": dbt.type_string()},
    {"name": "price", "datatype": dbt.type_float()},
    {"name": "price_set", "datatype": dbt.type_string()},
    {"name": "product_id", "datatype": dbt.type_numeric()},
    {"name": "property_charge_interval_frequency", "datatype": dbt.type_numeric()},
    {"name": "property_for_shipping_jan_3_rd_2020", "datatype": dbt.type_string()},
    {"name": "property_shipping_interval_frequency", "datatype": dbt.type_numeric()},
    {"name": "property_shipping_interval_unit_type", "datatype": dbt.type_string()},
    {"name": "property_subscription_id", "datatype": dbt.type_numeric()},
    {"name": "quantity", "datatype": dbt.type_numeric()},
    {"name": "requires_shipping", "datatype": "boolean", "alias": "is_requiring_shipping"},
    {"name": "sku", "datatype": dbt.type_string()},
    {"name": "taxable", "datatype": "boolean", "alias": "is_taxable"},
    {"name": "tax_code", "datatype": dbt.type_string()},
    {"name": "title", "datatype": dbt.type_string()},
    {"name": "total_discount", "datatype": dbt.type_float()},
    {"name": "total_discount_set", "datatype": dbt.type_string()},
    {"name": "variant_id", "datatype": dbt.type_numeric()},
    {"name": "variant_title", "datatype": dbt.type_string()},
    {"name": "variant_inventory_management", "datatype": dbt.type_string()},
    {"name": "vendor", "datatype": dbt.type_string()},
    {"name": "properties", "datatype": dbt.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}