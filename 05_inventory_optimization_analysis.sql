SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 10;
SELECT
    p.product_name,
    ROUND(SUM(oi.quantity * oi.unit_price),2) AS total_revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 10;
SELECT
    p.category,
    ROUND(SUM(oi.quantity * oi.unit_price),2) AS category_revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;
SELECT
    product_name,
    margin_percentage
FROM products
ORDER BY margin_percentage DESC
LIMIT 10;
SELECT
    product_name,
    min_stock_level,
    max_stock_level
FROM products
ORDER BY min_stock_level ASC
LIMIT 10;
SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold ASC
LIMIT 10;