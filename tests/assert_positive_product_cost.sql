select *
from {{ ref('stg_products') }}
where cost <= 0