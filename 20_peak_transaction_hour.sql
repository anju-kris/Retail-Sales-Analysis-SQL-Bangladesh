-- 20_peak_transaction_hour.sql
-- Business Question: Which hour of the day has the highest volume of transactions (count, not revenue)?
-- Key Insight: One specific hour sees the highest transaction count (may differ from revenue peak)
-- Business Impact: Staffing mismatch causes long wait times or unnecessary labor costs
-- Recommendation:
--   1. Adjust staffing schedules based on transaction volume
--   2. Deploy experienced staff during the busiest hour
--   3. Use data-driven shift planning

SELECT
    hour,
    COUNT(payment_id) AS total_transactions
FROM fact_table f
JOIN time t ON t.time_id = f.time_id
GROUP BY hour
ORDER BY total_transactions DESC
LIMIT 1;
