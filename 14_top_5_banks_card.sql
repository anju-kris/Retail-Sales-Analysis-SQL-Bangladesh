-- 14_top_5_banks_card.sql
-- Business Question: For card-based transactions, which top 5 banks' customers are spending the most?
-- Key Insight: A small group of banks drives the majority of card revenue
-- Business Impact: Strong partnerships with these banks boost card-based sales
-- Recommendation:
--   1. Collaborate with top banks on co-branded cashback / offers
--   2. Negotiate lower merchant discount rates (MDR) with high-volume banks

SELECT
    bank_name,
    SUM(total_price) AS total_revenue
FROM trans t
JOIN fact_table f ON f.payment_id = t.payment_id
WHERE trans_type = 'Card'
GROUP BY bank_name
ORDER BY total_revenue DESC
LIMIT 5;
