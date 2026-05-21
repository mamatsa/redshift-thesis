select
    order_id,
    customer_id,
    product_id,
    quantity,
    unit_price,
    discount_percent,
    lower(trim(order_status)) as order_status,
    lower(trim(sales_channel)) as sales_channel,
    order_date,

    cast(quantity * unit_price as decimal(12,2)) as gross_revenue,

    cast(
        quantity * unit_price * (discount_percent / 100.0)
        as decimal(12,2)
    ) as discount_amount,

    cast(
        quantity * unit_price * (1 - discount_percent / 100.0)
        as decimal(12,2)
    ) as net_revenue,

    date_trunc('month', order_date)::date as order_month
from {{ source('raw_sales', 'orders') }}