-- 09_peak_revenue_hour.sql
-- Business Question: At what hour of the day is the highest total revenue generated?
-- Key Insight: One specific hour generates maximum revenue → strong time-based concentration
-- Business Impact: Understaffing during peak reduces service; overstaffing elsewhere raises cost
-- Recommendation:
--   1. Align staff shifts with peak revenue hours
--   2. Run targeted promotions during slow hours

SELECT
    hour,
    SUM(total_price) AS total_revenue
FROM time t
JOIN fact_table f ON f.time_id = t.time_id
GROUP BY hour
ORDER BY total_revenue DESC
LIMIT 1;
