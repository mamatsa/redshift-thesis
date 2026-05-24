select *
from {{ ref('stg_products') }}
where list_price <= 0