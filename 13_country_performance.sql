-- 13_country_performance.sql
-- Business Question: Which country’s products are generating the most revenue, and what is the average unit price?
-- Note: True profit analysis requires cost data (not available). Using revenue + avg unit price instead.
-- Key Insight: Certain countries drive significantly more revenue; unit prices vary by source country
-- Business Impact: Sourcing strategy directly affects revenue contribution and potential margins
-- Recommendation:
--   1. Prioritize high-revenue countries for stronger supplier relationships
--   2. Evaluate full landed cost before expanding imports from high-price countries

SELECT
    country,
    SUM(total_price) AS total_revenue,
    ROUND(AVG(f.unit_price), 2) AS avg_unit_price
FROM item i
JOIN fact_table f ON f.item_id = i.item_id
GROUP BY 1
ORDER BY total_revenue DESC;
