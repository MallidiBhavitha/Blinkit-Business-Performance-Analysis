SELECT
    campaign_name,
    ROUND(SUM(revenue_generated),2) AS total_revenue
FROM marketing_performance
GROUP BY campaign_name
ORDER BY total_revenue DESC;
SELECT
    campaign_name,
    ROUND(AVG(roas),2) AS average_roas
FROM marketing_performance
GROUP BY campaign_name
ORDER BY average_roas DESC;
SELECT
    channel,
    ROUND(SUM(revenue_generated),2) AS total_revenue
FROM marketing_performance
GROUP BY channel
ORDER BY total_revenue DESC;
SELECT
    channel,
    ROUND((SUM(conversions) * 100.0) / SUM(clicks),2) AS conversion_rate
FROM marketing_performance
GROUP BY channel
ORDER BY conversion_rate DESC;
SELECT
    campaign_name,
    ROUND((SUM(clicks) * 100.0) / SUM(impressions),2) AS ctr_percentage
FROM marketing_performance
GROUP BY campaign_name
ORDER BY ctr_percentage DESC;
