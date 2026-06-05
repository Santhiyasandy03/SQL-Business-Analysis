SELECT COUNT(*) AS total_rows
FROM superstore;

-- 1. Total Sales
SELECT ROUND(SUM(sales),2) AS total_sales
FROM superstore;

-- 2. Total Profit
SELECT ROUND(SUM(profit),2) AS total_profit
FROM superstore;

-- 3. Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM superstore;

-- 4. Sales by Region
SELECT region,
       ROUND(SUM(sales),2) AS sales
FROM superstore
GROUP BY region
ORDER BY sales DESC;

-- 5. Profit by Region
SELECT region,
       ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY region
ORDER BY profit DESC;

-- 6. Category Performance
SELECT category,
       ROUND(SUM(sales),2) AS sales,
       ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY category
ORDER BY sales DESC;

-- 7. Sub-Category Performance
SELECT sub_category,
       ROUND(SUM(sales),2) AS sales,
       ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY sub_category
ORDER BY sales DESC;

-- 8. Top 10 Products by Sales
SELECT product_name,
       ROUND(SUM(sales),2) AS sales
FROM superstore
GROUP BY product_name
ORDER BY sales DESC
LIMIT 10;

-- 9. Top 10 Most Profitable Products
SELECT product_name,
       ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY product_name
ORDER BY profit DESC
LIMIT 10;

-- 10. Top 10 Customers by Sales
SELECT customer_name,
       ROUND(SUM(sales),2) AS sales
FROM superstore
GROUP BY customer_name
ORDER BY sales DESC
LIMIT 10;

-- 11. Top 10 Customers by Profit
SELECT customer_name,
       ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY customer_name
ORDER BY profit DESC
LIMIT 10;

-- 12. Average Sales per Order
SELECT ROUND(AVG(sales),2) AS avg_sales
FROM superstore;

-- 13. Average Profit per Order
SELECT ROUND(AVG(profit),2) AS avg_profit
FROM superstore;

-- 14. Orders by Ship Mode
SELECT ship_mode,
       COUNT(*) AS orders
FROM superstore
GROUP BY ship_mode
ORDER BY orders DESC;

-- 15. Sales by Segment
SELECT segment,
       ROUND(SUM(sales),2) AS sales
FROM superstore
GROUP BY segment
ORDER BY sales DESC;

-- 16. Profit by Segment
SELECT segment,
       ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY segment
ORDER BY profit DESC;

-- 17. State-wise Sales
SELECT state,
       ROUND(SUM(sales),2) AS sales
FROM superstore
GROUP BY state
ORDER BY sales DESC
LIMIT 10;

-- 18. State-wise Profit
SELECT state,
       ROUND(SUM(profit),2) AS profit
FROM superstore
GROUP BY state
ORDER BY profit DESC
LIMIT 10;

-- 19. Most Sold Categories
SELECT category,
       SUM(quantity) AS total_quantity
FROM superstore
GROUP BY category
ORDER BY total_quantity DESC;

-- 20. Most Sold Sub-Categories
SELECT sub_category,
       SUM(quantity) AS total_quantity
FROM superstore
GROUP BY sub_category
ORDER BY total_quantity DESC;