-- 15_slow_moving_items.sql
-- Business Question: Which items are our 'slow-movers'? Top 10 lowest quantity sold + supplier
-- Key Insight: Several products have very low sales volume → clear inventory inefficiency
-- Business Impact: Capital tied up + increased storage/holding costs
-- Recommendation:
--   1. Discount or bundle slow-movers to move stock
--   2. Reduce reorder frequency for these items
--   3. Consider discontinuing the worst performers

SELECT
    i.item_id,
    i.item_name,
    supplier,
    SUM(quantity) AS total_quantity_sold
FROM item i
JOIN fact_table f ON f.item_id = i.item_id
GROUP BY i.item_id, i.item_name, supplier
ORDER BY total_quantity_sold ASC
LIMIT 10;
