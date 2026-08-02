SELECT
    c.customer_segment,
    ROUND(SUM(o.order_total),2) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_segment
ORDER BY total_revenue DESC;
SELECT
    c.customer_segment,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_segment
ORDER BY total_orders DESC;
SELECT
    c.customer_id,
    c.customer_name,
    ROUND(SUM(o.order_total),2) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC
LIMIT 10;
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC
LIMIT 10;
SELECT
    c.customer_segment,
    ROUND(AVG(o.order_total),2) AS average_order_value
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_segment
ORDER BY average_order_value DESC;
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.order_total) AS total_spent,
    DENSE_RANK() OVER (ORDER BY SUM(o.order_total) DESC) AS spending_rank
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;