-- Create database
CREATE DATABASE IF NOT EXISTS sales_analytics;
USE sales_analytics;

-- Create sales table
CREATE TABLE IF NOT EXISTS sales (
    order_id VARCHAR(20),
    order_date DATE,
    customer_id VARCHAR(20),
    product_name VARCHAR(255),
    category VARCHAR(50),
    region VARCHAR(50),
    sales DECIMAL(10,2),
    profit DECIMAL(10,2)
);
