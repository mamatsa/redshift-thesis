select
    customer_id,
    trim(customer_name) as customer_name,
    trim(country) as country,
    trim(city) as city,
    trim(customer_segment) as customer_segment,
    signup_date
from {{ source('raw_sales', 'customers') }}