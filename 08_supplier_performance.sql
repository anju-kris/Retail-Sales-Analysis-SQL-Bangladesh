-- 08_supplier_performance.sql
-- Business Question: List the total quantity sold and total revenue generated for each supplier.
-- Key Insight: A few suppliers generate the majority of revenue → concentration risk
-- Business Impact: Dependency on top suppliers creates supply chain vulnerability
-- Recommendation:
--   1. Negotiate bulk discounts with top performers
--   2. Review contracts of low performers
--   3. Diversify supplier base for risk reduction

SELECT
    i.supplier,
    SUM(f.quantity) AS total_quantity,
    SUM(f.total_price) AS total_revenue
FROM item i
JOIN fact_table f ON f.item_id = i.item_id
GROUP BY i.supplier
ORDER BY total_revenue DESC;
