SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(*) AS total_orders FROM orders;
SELECT COUNT(*) AS total_order_items FROM order_items;
SELECT COUNT(*) AS total_products FROM products;
SELECT COUNT(*) AS total_feedback FROM customer_feedback;
SELECT COUNT(*) AS total_campaigns FROM marketing_performance;
SELECT *
FROM customers
WHERE customer_id IS NULL
   OR customer_name IS NULL
   OR customer_segment IS NULL;
SELECT *
FROM orders
WHERE order_id IS NULL
   OR customer_id IS NULL
   OR order_date IS NULL;
SELECT *
FROM products
WHERE product_id IS NULL
   OR product_name IS NULL;
SELECT *
FROM order_items
WHERE order_id IS NULL
   OR product_id IS NULL;
SELECT *
FROM customer_feedback
WHERE feedback_id IS NULL
   OR customer_id IS NULL
   OR order_id IS NULL;
SELECT *
FROM marketing_performance
WHERE campaign_id IS NULL;
SELECT customer_id,
       COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;
SELECT order_id,
       COUNT(*) AS duplicate_count
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;
SELECT product_id,
       COUNT(*) AS duplicate_count
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;
SELECT feedback_id,
       COUNT(*) AS duplicate_count
FROM customer_feedback
GROUP BY feedback_id
HAVING COUNT(*) > 1;
SELECT campaign_id,
       COUNT(*) AS duplicate_count
FROM marketing_performance
GROUP BY campaign_id
HAVING COUNT(*) > 1;
SELECT *
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
SELECT *
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
SELECT *
FROM order_items oi
LEFT JOIN orders o
ON oi.order_id = o.order_id
WHERE o.order_id IS NULL;SELECT *
FROM order_items oi
LEFT JOIN products p
ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;
SELECT *
FROM customer_feedback cf
LEFT JOIN orders o
ON cf.order_id = o.order_id
WHERE o.order_id IS NULL;
SELECT DISTINCT delivery_status
FROM orders;
SELECT DISTINCT payment_method
FROM orders;
SELECT DISTINCT customer_segment
FROM customers;
SELECT DISTINCT category
FROM products;
SELECT DISTINCT feedback_category
FROM customer_feedback;
SELECT DISTINCT sentiment
FROM customer_feedback;
SELECT DISTINCT channel
FROM marketing_performance;
SELECT MIN(date) AS first_campaign,
       MAX(date) AS last_campaign
FROM marketing_performance;
SELECT MIN(feedback_date) AS first_feedback,
       MAX(feedback_date) AS last_feedback
FROM customer_feedback;
SELECT MIN(registration_date) AS first_registration,
       MAX(registration_date) AS last_registration
FROM customers;
SELECT MIN(order_date) AS first_order,
       MAX(order_date) AS last_order
FROM orders;
SELECT MIN(rating) AS minimum_rating,
       MAX(rating) AS maximum_rating
FROM customer_feedback;
SELECT MIN(order_total),
       MAX(order_total),
       AVG(order_total)
FROM orders;
SELECT MIN(price),
       MAX(price)
FROM products;
SELECT MIN(roas),
       MAX(roas)
FROM marketing_performance;
