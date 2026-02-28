-- 18_packaging_impact.sql
-- Business Question: Compare quantity sold and avg unit price for 'Can' vs 'Bottle' containers
-- Key Insight: Container type influences both volume sold and pricing
-- Business Impact: Packaging preference affects procurement, pricing, and product development
-- Recommendation:
--   1. Focus production and promotion on the preferred packaging format
--   2. Optimize pricing strategy per container type

SELECT
    container,
    SUM(quantity) AS total_quantity_sold,
    ROUND(AVG(f.unit_price), 2) AS avg_unit_price
FROM item i
JOIN fact_table f ON f.item_id = i.item_id
WHERE container IN ('Can', 'Bottle')
GROUP BY container;
