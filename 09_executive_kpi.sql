SELECT ROUND(SUM(order_total),2) AS Total_Revenue
FROM orders;
SELECT COUNT(*) AS Total_Customers
FROM customers;
SELECT COUNT(*) AS Total_Orders
FROM orders;
SELECT ROUND(AVG(order_total),2) AS Average_Order_Value
FROM orders;
SELECT ROUND(AVG(rating),2) AS Average_Customer_Rating
FROM customer_feedback;
SELECT
ROUND(
SUM(CASE
WHEN delivery_status='On Time' THEN 1
ELSE 0
END)*100.0/COUNT(*),2)
AS Delivery_Success_Rate
FROM orders;
SELECT COUNT(*) AS Repeat_Customers
FROM
(
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id)>1
) t;
SELECT
p.category,
ROUND(SUM(oi.quantity*oi.unit_price),2) AS Revenue
FROM order_items oi
JOIN products p
ON oi.product_id=p.product_id
GROUP BY p.category
ORDER BY Revenue DESC
LIMIT 1;
SELECT
p.product_name,
ROUND(SUM(oi.quantity*oi.unit_price),2) AS Revenue
FROM order_items oi
JOIN products p
ON oi.product_id=p.product_id
GROUP BY p.product_name
ORDER BY Revenue DESC
LIMIT 1;
SELECT
c.customer_segment,
ROUND(SUM(o.order_total),2) AS Revenue
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY c.customer_segment
ORDER BY Revenue DESC
LIMIT 1;
SELECT
campaign_name,
ROUND(SUM(revenue_generated),2) AS Revenue
FROM marketing_performance
GROUP BY campaign_name
ORDER BY Revenue DESC
LIMIT 1;
SELECT
channel,
ROUND(SUM(revenue_generated),2) AS Revenue
FROM marketing_performance
GROUP BY channel
ORDER BY Revenue DESC
LIMIT 1;
SELECT
ROUND(AVG(roas),2) AS Average_ROAS
FROM marketing_performance;
SELECT
sentiment,
ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM customer_feedback),2) AS Percentage
FROM customer_feedback
GROUP BY sentiment;