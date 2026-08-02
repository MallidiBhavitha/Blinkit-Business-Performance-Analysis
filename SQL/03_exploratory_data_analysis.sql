SELECT COUNT(*) AS total_customers
FROM customers;
SELECT COUNT(*) AS total_orders
FROM orders;
SELECT ROUND(SUM(order_total),2) AS total_revenue
FROM orders;
SELECT ROUND(AVG(order_total),2) AS average_order_value
FROM orders;
SELECT COUNT(*) AS total_products
FROM products;
SELECT COUNT(DISTINCT category) AS total_categories
FROM products;
SELECT COUNT(*) AS total_feedback
FROM customer_feedback;
SELECT ROUND(AVG(rating),2) AS average_rating
FROM customer_feedback;
SELECT delivery_status,
       COUNT(*) AS total_orders
FROM orders
GROUP BY delivery_status
ORDER BY total_orders DESC;
SELECT customer_segment,
       COUNT(*) AS total_customers
FROM customers
GROUP BY customer_segment
ORDER BY total_customers DESC;
