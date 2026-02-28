-- 11_year_over_year_growth.sql
-- Business Question: Calculate total revenue for each year and percentage growth compared to previous year
-- Key Insight: Positive growth = expansion; negative = potential slowdown
-- Business Impact: Growth rate influences investor confidence and operational decisions
-- Recommendation:
--   1. Investigate causes of slow/negative growth
--   2. Accelerate product/marketing efforts if growth stagnates

WITH yearly_revenue AS (
    SELECT
        t.year,
        SUM(f.total_price) AS total_revenue
    FROM time t
    JOIN fact_table f ON f.time_id = t.time_id
    GROUP BY t.year
)
SELECT
    year,
    total_revenue,
    LAG(total_revenue) OVER (ORDER BY year) AS prev_revenue,
    ROUND(
        (total_revenue - LAG(total_revenue) OVER (ORDER BY year)) * 100.0 /
        NULLIF(LAG(total_revenue) OVER (ORDER BY year), 0),
        2
    ) AS growth_perc
FROM yearly_revenue;
