-- 17_dhaka_subdistrict_breakdown.sql
-- Business Question: Breakdown of total revenue in Dhaka division by sub-district
-- Key Insight: Revenue highly concentrated in a few sub-districts within Dhaka
-- Business Impact: Micro-level geographic opportunities + underperformance in others
-- Recommendation:
--   1. Replicate strategies from top-performing sub-districts
--   2. Run localized promotions in weaker sub-districts

SELECT
    s.division,
    s.sub_district,
    SUM(f.total_price) AS total_revenue,
    ROUND(SUM(f.total_price) * 100.0 / SUM(SUM(f.total_price)) OVER(), 2) AS perc_contribution
FROM store s
JOIN fact_table f ON s.store_id = f.store_id
WHERE division = 'Dhaka'
GROUP BY s.division, s.sub_district
ORDER BY total_revenue DESC;
