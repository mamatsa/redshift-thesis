select *
from {{ ref('stg_orders') }}
where discount_percent < 0
   or discount_percent > 100
