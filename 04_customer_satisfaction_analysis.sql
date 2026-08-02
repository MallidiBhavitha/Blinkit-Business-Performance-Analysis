SELECT o.delivery_status,
       ROUND(AVG(cf.rating),2) AS average_rating,
       COUNT(cf.feedback_id) AS total_feedback
FROM orders o
JOIN customer_feedback cf
ON o.order_id = cf.order_id
GROUP BY o.delivery_status
ORDER BY average_rating DESC;
SELECT feedback_category,
       COUNT(*) AS total_complaints
FROM customer_feedback
GROUP BY feedback_category
ORDER BY total_complaints DESC;
SELECT sentiment,
       COUNT(*) AS total_feedback
FROM customer_feedback
GROUP BY sentiment
ORDER BY total_feedback DESC;
SELECT rating,
       COUNT(*) AS total_customers
FROM customer_feedback
GROUP BY rating
ORDER BY rating DESC;
SELECT c.customer_segment,
       ROUND(AVG(cf.rating),2) AS average_rating,
       COUNT(cf.feedback_id) AS total_feedback
FROM customers c
JOIN customer_feedback cf
ON c.customer_id = cf.customer_id
GROUP BY c.customer_segment
ORDER BY average_rating DESC;
SELECT feedback_category,
       ROUND(AVG(rating),2) AS average_rating,
       COUNT(*) AS total_feedback
FROM customer_feedback
GROUP BY feedback_category
ORDER BY average_rating ASC;