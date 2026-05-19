select
    c.country,
    count(distinct o.order_id) as total_orders,
    sum(o.quantity * p.price) as total_revenue
from {{ ref('stg_orders') }} o
join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id
join {{ ref('stg_products') }} p
    on o.product_id = p.product_id
group by c.country