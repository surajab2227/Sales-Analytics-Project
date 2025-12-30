-- Total Sales
SELECT ROUND(SUM(sales), 2) AS total_sales
FROM sales;

-- Total Profit
SELECT ROUND(SUM(profit), 2) AS total_profit
FROM sales;

-- Sales by Region
SELECT region, ROUND(SUM(sales), 2) AS region_sales
FROM sales
GROUP BY region
ORDER BY region_sales DESC;

-- Sales by Category
SELECT category, ROUND(SUM(sales), 2) AS category_sales
FROM sales
GROUP BY category
ORDER BY category_sales DESC;

-- Year-wise Sales Trend
SELECT YEAR(order_date) AS year, ROUND(SUM(sales), 2) AS yearly_sales
FROM sales
GROUP BY YEAR(order_date)
ORDER BY year;

-- Top 10 Products by Sales
SELECT product_name, ROUND(SUM(sales), 2) AS product_sales
FROM sales
GROUP BY product_name
ORDER BY product_sales DESC
LIMIT 10;
