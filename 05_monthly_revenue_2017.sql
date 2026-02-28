-- 05_monthly_revenue_2017.sql
-- Business Question: What is the total revenue per month for the year 2017?
-- Key Insight: Clear monthly fluctuations indicating seasonality (peaks likely from festivals/promotions)
-- Business Impact: Uneven cash flow affects planning; peak months need more stock/staff
-- Recommendation:
--   1. Identify drivers of peak months and replicate
--   2. Run promotions in low months
--   3. Adjust staffing and procurement based on seasonal forecast

SELECT
    t.year,
    t.month,
    SUM(f.total_price) AS total_revenue
FROM time t
JOIN fact_table f ON f.time_id = t.time_id
WHERE t.year = 2017
GROUP BY t.year, t.month
ORDER BY t.month;
