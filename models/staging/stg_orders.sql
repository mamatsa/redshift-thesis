select
    order_id,
    customer_id,
    product_id,
    quantity_wrong,
    order_date
from {{ ref('orders') }}