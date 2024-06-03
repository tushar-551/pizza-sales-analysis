-- What is the total revenue generated from pizza sales?
SELECT SUM(total_price) AS TOTAL_REVENUE
FROM pizza_sales;

-- What is the average order value of all orders?
SELECT SUM(total_price)/ COUNT(DISTINCT order_id) AS AVG_ORDER_VALUE
FROM pizza_sales;

-- How many pizzas were sold in total?
SELECT SUM(quantity) AS TOTAL_PIZZA_SOLD
FROM pizza_sales;

-- How many distinct order dates are there in the dataset?
SELECT COUNT(DISTINCT order_date) AS TOTAL_ORDER
FROM pizza_sales;

-- What is the average number of pizzas per order?
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id)  AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS AVG_PIZZA_PER_ORDER
FROM pizza_sales;

-- What is the total number of orders for each day of the week?
SELECT DATENAME(DW, order_date) AS ORDER_DAY,
COUNT(DISTINCT order_id) AS TOTAL_ORDER
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);

-- Which month had the highest number of orders?
SELECT DATENAME(MONTH, order_date) AS MONTH_NAME, 
COUNT(DISTINCT order_id) AS TOTAL_ORDER
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY TOTAL_ORDER DESC;

-- For January, what were the total sales and percentage of sales for each pizza category?
SELECT pizza_category, SUM(total_price) AS TOTAL_SALES , SUM(total_price) * 100 / 
(SELECT SUM(total_price) FROM pizza_sales WHERE MONTH(order_date) = 1) AS PERCENTAGE_SALES
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_category;

-- For the first quarter, what were the total sales and percentage of sales for each pizza size?
SELECT pizza_size,CAST( SUM(total_price) AS DECIMAL(10,2)) AS TOTAL_SALES ,
CAST( SUM(total_price) * 100 / 
(SELECT SUM(total_price) FROM pizza_sales  WHERE DATEPART(QUARTER,order_date) =1) AS DECIMAL(10,2)) AS PERCENTAGE_SALES
FROM pizza_sales
WHERE DATEPART(QUARTER,order_date) =1
GROUP BY pizza_size
ORDER BY PERCENTAGE_SALES DESC;

-- What are the top 5 least popular pizza names based on total revenue?
SELECT TOP 5 pizza_name, SUM(total_price) AS TOTAL_REVENUE
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TOTAL_REVENUE ASC

-- What are the top 5 most popular pizza names based on total quantity sold?
SELECT TOP 5 pizza_name, SUM(quantity) AS TOTAL_QUANTITY
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TOTAL_QUANTITY DESC

-- What are the top 5 most popular pizza names based on the number of distinct orders?
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS TOTAL_ORDERS
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TOTAL_ORDERS 