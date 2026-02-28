-- 02_top_5_customers.sql
-- Bussiness Question : Top 5 Customers: Who are the top 5 customers based on their total spending?
-- Key Insight :The top 5 customers contribute a significantly higher total spend compared to the average customer → clear VIP/high-value segment
-- Business Impact :Losing even one of these top customers could create a noticeable drop in total revenue , they represent strong loyalty and high LTV
-- Recommendation:
-- Recomendation :
--   1. Create VIP / Loyalty Program (exclusive discounts, early access, special rewards)
--   2. Personalized marketing based on purchase history
--   3. Monitor purchase frequency for early churn detection
--   4. Compare top 5 vs average customers for segmentation

select 
		c.customer_id,
		c.full_name,
		sum(f.total_price) as total_spend ,
		round(sum(f.total_price) * 100.0 / sum(sum (f.total_price)) over(),3) as percentage
from customer c
join fact_table f on f.customer_id = c.customer_id
group by c.customer_id,c.full_name
order by total_spend desc
limit 5 ;
