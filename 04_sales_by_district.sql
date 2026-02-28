-- 04_sales_by_district.sql
-- Business Question: Which district generated the highest total sales revenue?
-- Key Insight: Dhaka dominates with ~22.39% of total revenue (more than 3× the second district)
-- Business Impact: Extreme geographic concentration → high risk if Dhaka underperforms
-- Recommendation:
--   1. Protect & optimize Dhaka operations (inventory, loyalty, competitor monitoring)
--   2. Scale growth in mid-tier districts (especially Chittagong)
--   3. Replicate Dhaka's successful strategies regionally

SELECT
    district,
    SUM(total_price) AS total_revenue,
    ROUND(SUM(total_price) * 100.0 / SUM(SUM(total_price)) OVER(), 2) AS revenue_percentage
FROM store s
JOIN fact_table f ON f.store_id = s.store_id
GROUP BY 1
ORDER BY total_revenue DESC;
