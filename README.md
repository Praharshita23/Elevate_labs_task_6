Task 6: Sales Trend Analysis Using SQL

Objective

The objective of this task is to analyze monthly sales trends using SQL aggregation techniques. The analysis focuses on identifying:

Monthly Revenue

Monthly Order Volume

The dataset contains sales transactions from 2019–2020.

Dataset Overview

Dataset Name: Sales-Export_2019-2020.csv

Key Columns Used:

order_id – Unique order identifier

order_value_EUR – Sales amount per order

date – Order date

cost – Cost of the order

Data Cleaning Steps (Performed in MySQL)

Before analysis, the following preprocessing steps were completed to ensure accurate aggregation and date-based grouping.

1. Rename Imported Table
RENAME TABLE `sales-export_2019-2020`
TO online_sales;
2. Disable Safe Update Mode
SET SQL_SAFE_UPDATES = 0;
3. Remove Commas from Revenue Column
UPDATE online_sales
SET order_value_EUR = REPLACE(order_value_EUR, ',', '');
4. Convert Revenue to Numeric Type
ALTER TABLE online_sales
MODIFY order_value_EUR DECIMAL(12,2);
5. Convert Date from TEXT to DATE Format
UPDATE online_sales
SET date = STR_TO_DATE(date, '%m/%d/%Y');

ALTER TABLE online_sales
MODIFY date DATE;
SQL Query for Monthly Sales Trend
SELECT 
    YEAR(date) AS year,
    MONTHNAME(date) AS month,
    SUM(order_value_EUR) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY YEAR(date), MONTH(date), MONTHNAME(date)
ORDER BY YEAR(date), MONTH(date);

Results

The query generated a monthly summary table including:

Year

Month Name

Total Revenue

Total Number of Orders

Example Output:
Year	Month	Total Revenue	Total Orders
2019	January	4516614.82	44
2019	February	2895563.90	44
2019	March	2521827.99	41
...	...	...	...

Key Insights

Sales revenue fluctuates significantly across months.

Order volume remains relatively stable between 35–50 orders per month.

Noticeable seasonal variation is observed in revenue distribution.

Certain months show peak revenue performance.

Project Files

Dataset used

task_6.sql → Complete SQL script (data cleaning + aggregation)

task_6_results.csv → Exported monthly results table

Screenshot of SQL execution and output

Skills Demonstrated

SQL Data Cleaning

Data Type Conversion

Date Formatting & Extraction

Aggregation (SUM, COUNT)

GROUP BY & ORDER BY

Trend Analysis
