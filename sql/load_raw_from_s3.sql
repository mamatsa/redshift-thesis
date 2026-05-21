truncate table analytics_raw.customers;
truncate table analytics_raw.products;
truncate table analytics_raw.orders;

copy analytics_raw.customers
from 's3://thesis-sales-data/customers.csv'
iam_role 'arn:aws:iam::891377251939:role/ReadS3Files'
format as csv
ignoreheader 1
dateformat 'auto';

copy analytics_raw.products
from 's3://thesis-sales-data/products.csv'
iam_role 'arn:aws:iam::891377251939:role/ReadS3Files'
format as csv
ignoreheader 1;

copy analytics_raw.orders
from 's3://thesis-sales-data/orders.csv'
iam_role 'arn:aws:iam::891377251939:role/ReadS3Files'
format as csv
ignoreheader 1
dateformat 'auto';