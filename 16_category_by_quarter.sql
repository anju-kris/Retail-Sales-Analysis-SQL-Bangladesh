-- 16_category_by_quarter.sql
-- Business Question: Total revenue by Category, broken down by Quarter (Q1–Q4)
-- Key Insight: Certain categories show strong performance in specific quarters → seasonal patterns
-- Business Impact: Risk of stockouts in peak quarters or overstock in low ones
-- Recommendation:
--   1. Implement seasonal demand forecasting per category
--   2. Align marketing and promotions with high-performing quarters

SELECT
    i.category,
    t.quarter,
    t.year,
    SUM(total_price) AS total_revenue
FROM item i
JOIN fact_table f ON f.item_id = i.item_id
JOIN time t ON t.time_id = f.time_id
GROUP BY t.year, t.quarter, i.category
ORDER BY t.year, t.quarter;
