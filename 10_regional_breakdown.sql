-- 10_regional_breakdown.sql
-- Business Question: What is the breakdown of total sales by division and district?
-- Key Insight: Revenue heavily concentrated in specific divisions/districts
-- Business Impact: Geographic dependency risk + untapped growth in underperforming regions
-- Recommendation:
--   1. Replicate strategies from top-performing regions
--   2. Launch targeted regional marketing campaigns

SELECT
    s.division,
    s.district,
    SUM(f.total_price) AS total_revenue
FROM store s
JOIN fact_table f ON f.store_id = s.store_id
GROUP BY 1, 2
ORDER BY total_revenue DESC;
