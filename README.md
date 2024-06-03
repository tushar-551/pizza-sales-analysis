# Pizza Sales Analysis

This repository contains SQL queries used to analyze pizza sales data. The queries are designed to provide insights into various aspects of pizza sales, such as total revenue, order values, pizza quantities, order dates, pizza categories, pizza sizes, and popular pizza names.

## Dataset

The dataset used in these queries is assumed to be a table named `pizza_sales` containing the following columns:

- `order_id`: Unique identifier for each order
- `order_date`: Date when the order was placed
- `pizza_name`: Name of the pizza ordered
- `pizza_category`: Category of the pizza (e.g., vegetarian, non-vegetarian)
- `pizza_size`: Size of the pizza ordered
- `quantity`: Number of pizzas ordered
- `total_price`: Total price of the order

## Queries

The repository includes the following SQL queries:

1. **Total Revenue**: Calculates the total revenue generated from pizza sales.
2. **Average Order Value**: Calculates the average order value of all orders.
3. **Total Pizzas Sold**: Calculates the total number of pizzas sold.
4. **Total Order Dates**: Counts the number of distinct order dates in the dataset.
5. **Average Pizzas per Order**: Calculates the average number of pizzas per order.
6. **Orders by Day of the Week**: Counts the total number of orders for each day of the week.
7. **Month with Highest Orders**: Identifies the month with the highest number of orders.
8. **January Sales by Pizza Category**: Calculates the total sales and percentage of sales for each pizza category in January.
9. **First Quarter Sales by Pizza Size**: Calculates the total sales and percentage of sales for each pizza size in the first quarter.
10. **Top 5 Least Popular Pizza Names by Revenue**: Identifies the top 5 least popular pizza names based on total revenue.
11. **Top 5 Most Popular Pizza Names by Quantity**: Identifies the top 5 most popular pizza names based on total quantity sold.
12. **Top 5 Most Popular Pizza Names by Orders**: Identifies the top 5 most popular pizza names based on the number of distinct orders.

## Usage

To use these queries, you'll need access to a SQL database management system (DBMS) and the `pizza_sales` table with the appropriate data. You can execute each query individually or combine them as needed for your analysis.

Note: The queries assume the use of SQL Server syntax, specifically the `DATENAME` and `DATEPART` functions. If you're using a different DBMS, you may need to modify the queries accordingly.

## Conclusion

These SQL queries provide a comprehensive analysis of pizza sales data, enabling you to gain insights into various aspects of your business, such as revenue generation, order patterns, popular pizza choices, and sales trends. By leveraging these queries, you can make data-driven decisions to optimize your operations and improve customer satisfaction.
