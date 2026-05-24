select
    p.category,
    count(distinct o.order_id) as total_orders,
    sum(o.quantity) as total_items_sold,
    cast(sum(o.gross_revenue) as decimal(14,2)) as gross_revenue,
    cast(sum(o.discount_amount) as decimal(14,2)) as total_discount,
    cast(sum(o.net_revenue) as decimal(14,2)) as net_revenue
from {{ ref('stg_orders') }} o
join {{ ref('stg_products') }} p
    on o.product_id = p.product_id
where o.order_status = 'completed'
group by p.category
