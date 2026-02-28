-- 19_average_basket_size.sql
-- Business Question: Average number of different items per transaction (basket size)
-- Key Insight: Average basket size shows current cross-selling / bundling strength
-- Business Impact: Higher basket size grows revenue without acquiring more customers
-- Recommendation:
--   1. Introduce combo offers and bundles
--   2. Train staff on suggestive selling
--   3. Implement digital recommendation engine at checkout

SELECT 
    ROUND(AVG(item_count), 2) AS avg_basket_size
FROM (
    SELECT
        payment_id,
        COUNT(DISTINCT item_id) AS item_count
    FROM fact_table
    GROUP BY payment_id
) AS sub;
