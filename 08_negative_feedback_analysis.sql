SELECT
    feedback_category,
    COUNT(*) AS negative_feedback
FROM customer_feedback
WHERE sentiment = 'Negative'
GROUP BY feedback_category
ORDER BY negative_feedback DESC;
SELECT
    o.delivery_status,
    COUNT(*) AS negative_feedback
FROM customer_feedback cf
JOIN orders o
ON cf.order_id = o.order_id
WHERE cf.sentiment = 'Negative'
GROUP BY o.delivery_status
ORDER BY negative_feedback DESC;
SELECT
    c.customer_segment,
    COUNT(*) AS negative_feedback
FROM customer_feedback cf
JOIN customers c
ON cf.customer_id = c.customer_id
WHERE cf.sentiment = 'Negative'
GROUP BY c.customer_segment
ORDER BY negative_feedback DESC;
SELECT
    rating,
    sentiment,
    COUNT(*) AS total_feedback
FROM customer_feedback
GROUP BY rating, sentiment
ORDER BY rating DESC;
SELECT
    sentiment,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM customer_feedback),2) AS percentage
FROM customer_feedback
GROUP BY sentiment;