create table analytics_raw.customers (
    customer_id int,
    customer_name varchar(150),
    country varchar(100),
    city varchar(100),
    customer_segment varchar(50),
    signup_date date
);

create table analytics_raw.products (
    product_id int,
    product_name varchar(150),
    category varchar(100),
    subcategory varchar(100),
    list_price decimal(10,2),
    cost decimal(10,2),
    is_active boolean
);

create table analytics_raw.orders (
    order_id int,
    customer_id int,
    product_id int,
    quantity int,
    unit_price decimal(10,2),
    discount_percent decimal(5,2),
    order_status varchar(30),
    sales_channel varchar(30),
    order_date date
);