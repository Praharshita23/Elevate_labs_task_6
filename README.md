Elevate Labs – Task 6
Sales Trend Analysis Using SQL
📌 Objective

The objective of this task is to analyze monthly sales trends using SQL. The analysis focuses on calculating monthly revenue and total order volume from the sales dataset covering the years 2019–2020.

🗂 Dataset Information

Dataset Used: Sales-Export_2019-2020.csv

The dataset contains sales transaction records with the following important fields:

Order ID (unique identifier for each transaction)

Order Value (sales amount in EUR)

Order Date

Cost

Additional descriptive attributes such as country, category, sales manager, and sales representative

🛠 Data Cleaning Process

Before performing the analysis, several preprocessing steps were completed in MySQL to ensure accurate aggregation and proper date-based grouping.

The cleaning process included:

Renaming the imported table for easier reference

Removing comma separators from the revenue column

Converting the revenue column from text format to numeric format

Converting the date column from text to proper DATE format

Temporarily disabling safe update mode to allow data modification

These steps ensured that numerical calculations and date functions worked correctly during aggregation.

📊 Analysis Performed

The analysis focused on:

Extracting year and month from the order date

Calculating total monthly revenue

Counting the number of unique orders per month

Sorting the results chronologically to observe trends

This allowed identification of revenue fluctuations and order patterns across different months.

📈 Key Insights

Sales revenue shows noticeable variation across different months.

Order volume remains relatively stable month to month.

Certain months exhibit higher revenue peaks, indicating potential seasonal effects.

Revenue patterns suggest variation in order values across different periods.

📂 Project Files

task_6.sql – Complete SQL script including cleaning and aggregation

task_6_results.csv – Exported monthly results table

Screenshot of SQL execution and output

🧠 Skills Demonstrated

SQL Data Cleaning

Data Type Conversion

Date Formatting and Extraction

Aggregation using SUM and COUNT

GROUP BY and ORDER BY

Time-based Trend Analysis

- Conclusion

This project demonstrates the ability to clean raw transactional data, convert data types appropriately, and perform time-based aggregation using SQL. The monthly sales trend analysis provides meaningful insights into revenue distribution and order behavior over time.
