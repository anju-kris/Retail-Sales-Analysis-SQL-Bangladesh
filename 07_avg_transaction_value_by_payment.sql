-- 07_avg_transaction_value_by_payment.sql
-- Business Question: What is the average total_price per transaction type?
-- Key Insight: Some payment types (likely digital) show higher average transaction value
-- Business Impact: Payment channel influences customer spending behavior and profitability
-- Recommendation:
--   1. Incentivize higher-ATV methods (cashback, discounts)
--   2. Optimize checkout process for preferred payment types

SELECT
    trans_type,
    ROUND(AVG(total_price), 2) AS avg_transaction_value
FROM trans t
JOIN fact_table f ON f.payment_id = t.payment_id
GROUP BY 1;
