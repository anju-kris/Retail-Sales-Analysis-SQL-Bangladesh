-- 03_payment_method_popularity.sql
-- Business Question: How many transactions were made using each transaction type (e.g., Cash vs. Card)?
-- Key Insight: Card is the most frequently used method (35 out of 39 types) and generates the highest revenue; higher average transaction value with digital payments
-- Business Impact: Lower cash-handling risk, faster checkout, but heavy dependency on card infrastructure
-- Recommendation:
--   1. Secure digital infrastructure (backup internet, POS, gateways)
--   2. Negotiate lower card processing fees (MDR reduction)
--   3. Promote mobile payments to diversify channels

SELECT
    trans_type,
    COUNT(DISTINCT f.payment_id) AS total_transaction,
    SUM(total_price) AS total_revenue,
    ROUND(SUM(total_price) / COUNT(DISTINCT f.payment_id), 2) AS avg_transaction_value
FROM trans t
JOIN fact_table f ON f.payment_id = t.payment_id
GROUP BY 1
ORDER BY total_revenue DESC;
