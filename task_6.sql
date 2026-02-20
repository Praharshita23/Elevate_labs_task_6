CREATE DATABASE sales_analysis;
USE sales_analysis;
RENAME TABLE `sales-export_2019-2020`
TO online_sales;
DESCRIBE online_sales;
SET SQL_SAFE_UPDATES = 0;
UPDATE online_sales
SET order_value_EUR = REPLACE(order_value_EUR, ',', '');
ALTER TABLE online_sales
MODIFY order_value_EUR DECIMAL(12,2);
DESCRIBE online_sales;
SELECT date FROM online_sales LIMIT 5;
UPDATE online_sales
SET date = STR_TO_DATE(date, '%m/%d/%Y');
ALTER TABLE online_sales
MODIFY date DATE;
DESCRIBE online_sales;

SELECT 
    YEAR(date) AS year,
    MONTH(date) AS month,
    SUM(order_value_EUR) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY YEAR(date), MONTH(date)
ORDER BY YEAR(date), MONTH(date);

SELECT 
    YEAR(date) AS year,
    MONTHNAME(date) AS month,
    SUM(order_value_EUR) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY YEAR(date), MONTH(date), MONTHNAME(date)
ORDER BY YEAR(date), MONTH(date);