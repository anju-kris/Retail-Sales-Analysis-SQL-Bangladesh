-- 06_top_5_items_by_quantity.sql
-- Business Question: Which are the top 5 most sold items by total quantity?
-- Key Insight: Top 5 items drive high volume → likely daily essentials or promoted products
-- Business Impact: Stock-outs of these items directly hurt revenue and foot traffic
-- Recommendation:
--   1. Ensure consistent availability of top sellers
--   2. Negotiate better supplier pricing for high-volume items
--   3. Bundle top items with slow-movers
--   4. Feature them in promotions

SELECT
    i.item_id,
    i.item_name,
    SUM(f.quantity) AS total_quantity_sold,
    SUM(quantity) / SUM(SUM(quantity)) OVER() AS quantity_share
FROM item i
JOIN fact_table f ON f.item_id = i.item_id
GROUP BY i.item_id, i.item_name
ORDER BY total_quantity_sold DESC
LIMIT 5;
