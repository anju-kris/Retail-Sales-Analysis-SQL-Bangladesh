-- 12_most_frequent_customers.sql
-- Business Question: Who are our most frequent shoppers (highest number of unique transactions)?
-- Key Insight: Some customers show strong behavioral loyalty (frequent purchases)
-- Business Impact: Frequent buyers stabilize recurring revenue
-- Recommendation:
--   1. Introduce frequency-based rewards
--   2. Consider subscription/membership model

SELECT
    c.customer_id,
    c.full_name AS customer_name,
    COUNT(DISTINCT payment_id) AS total_unique_trans
FROM customer c
JOIN fact_table f ON f.customer_id = c.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY total_unique_trans DESC;
