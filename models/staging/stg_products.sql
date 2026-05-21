select
    product_id,
    trim(product_name) as product_name,
    trim(category) as category,
    trim(subcategory) as subcategory,
    list_price,
    cost,
    is_active,
    list_price - cost as unit_margin
from {{ source('raw_sales', 'products') }}