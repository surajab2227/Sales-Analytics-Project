-- Load cleaned CSV data into sales table

LOAD DATA LOCAL INFILE 'Data/sales_clean.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, order_date, customer_id, product_name, category, region, sales, profit);

