# Retail Sales Analysis – SQL Project (Bangladesh Retail Stores)

## Executive Summary

This project is an end-to-end SQL analysis of multi-store retail sales data across Bangladesh to identify
key revenue drivers, customer behavior patterns, geographic concentration risks,
seasonality trends, and operational optimization opportunities.

The analysis addresses 20 real business questions using advanced SQL and translates raw numbers into **business insights**, **impacts**, and **recommended actions**.

## Project Overview

- **Dataset**: Retail sales fact table + dimensions  
  (fact_table, time, customer, store, item, trans)  
- **Objective**: Identify revenue drivers, customer behavior, geographic trends, payment patterns, seasonality, inventory health, and operational opportunities  
- **Tools Used**:
  - PostgreSQL
  - Advanced SQL (Joins, CTEs, Window Functions, Aggregations)
- **Key skills demonstrated**: Business-oriented analysis, insight generation, actionable recommendation writing

## Key Business Questions & Insights

1. **Total Revenue by Category**  
   Beverages contribute **24.55%** of total revenue – dominant category  
   **Insight**: High concentration creates dependency risk  
   **Impact**: Supply disruption or demand drop in Beverages could significantly hurt overall sales  
   **Action**: Protect beverage supply chain + promote mid-tier categories + cross-selling

2. **Top 5 Customers by Total Spend**  
   Top 5 customers show significantly higher spend than average → clear VIP segment  
   **Insight**: Strong loyalty & high lifetime value  
   **Impact**: Losing even one could cause noticeable revenue drop  
   **Action**: Launch VIP/loyalty program, personalized offers, early churn detection

3. **Payment Method Popularity**  
   Card transactions dominate both count and revenue; higher avg transaction value  
   **Insight**: Customers prefer digital payments  
   **Impact**: Lower cash-handling risk, faster checkout  
   **Action**: Secure digital infrastructure, negotiate lower card fees, promote mobile payments

4. **Sales by District**  
   Dhaka generates **~22.39%** of total revenue (3× more than second district)  
   **Insight**: Extreme geographic concentration  
   **Impact**: High dependency risk on Dhaka market  
   **Action**: Protect Dhaka + replicate success in Chittagong, Khulna, Rajshahi

5. **Monthly Revenue Trend (2017)**  
   Clear monthly fluctuations → seasonality present  
   **Insight**: Peak months likely tied to festivals/promotions  
   **Impact**: Uneven cash flow & inventory planning challenges  
   **Action**: Replicate peak-month success + promote during slow months

6. **Top 5 Most Sold Items (by Quantity)**  
   Top items show strong daily demand & high turnover  
   **Insight**: Core products driving foot traffic  
   **Impact**: Stock-outs directly hurt revenue  
   **Action**: Ensure availability + bundle with slow-movers + feature in promotions

7. **Average Transaction Value by Payment Type**  
   Digital payments show higher ATV than cash  
   **Insight**: Payment method influences spending behavior  
   **Impact**: Higher ATV channels improve profitability  
   **Action**: Incentivize high-ATV methods + optimize checkout flow

8. **Supplier Performance**  
   Few suppliers generate majority of revenue  
   **Insight**: High dependency on top suppliers  
   **Impact**: Supply risk concentrated  
   **Action**: Negotiate better terms with top suppliers + diversify base

9. **Peak Sales Hour (Revenue)**  
   One specific hour generates maximum revenue  
   **Insight**: Strong customer concentration at peak time  
   **Impact**: Understaffing hurts service; overstaffing increases cost  
   **Action**: Align shifts with peak hours + promote during slow hours

10. **Regional Breakdown (Division + District)**  
    Revenue heavily concentrated in certain divisions/districts  
    **Insight**: Clear performance gap between regions  
    **Impact**: Geographic dependency risk  
    **Action**: Replicate top-region strategy + regional marketing

11. **Year-over-Year Revenue Growth**  
    Calculated % change vs previous year  
    **Insight**: Positive = expansion; negative = warning signal  
    **Impact**: Growth rate affects investor & operational confidence  
    **Action**: Investigate slowdowns + accelerate expansion if needed

12. **Most Frequent Shoppers (by Transaction Count)**  
    Some customers shop very frequently (behavioral loyalty)  
    **Insight**: Frequency ≠ always highest spend  
    **Impact**: Loyal base stabilizes recurring revenue  
    **Action**: Frequency-based rewards + subscription model

13. **Global Sourcing (Country Performance)**  
    Country-wise revenue & avg unit price (profit needs cost data)  
    **Insight**: Some countries drive more revenue  
    **Impact**: Sourcing strategy affects pricing & margins  
    **Action**: Focus on high-revenue countries + evaluate full cost

14. **Top 5 Banks (Card Transactions)**  
    Top banks contribute majority of card revenue  
    **Insight**: Strong bank-customer alignment  
    **Impact**: Partnership quality drives card sales  
    **Action**: Collaborate on cashback + negotiate lower MDR

15. **Slow-Moving Items (Bottom 10 by Quantity)**  
    Several products have very low sales volume  
    **Insight**: Inventory inefficiency  
    **Impact**: Capital & storage cost tied up  
    **Action**: Discount/bundle + reduce reorder + consider discontinuation

16. **Category Revenue by Quarter**  
    Some categories show clear quarterly seasonality  
    **Insight**: Demand patterns vary by season  
    **Impact**: Risk of stockouts or overstock  
    **Action**: Seasonal forecasting + align marketing

17. **Dhaka Division – Sub-district Breakdown**  
    Revenue concentrated in few sub-districts within Dhaka  
    **Insight**: Micro-level performance gap  
    **Impact**: Local opportunities exist  
    **Action**: Replicate top sub-districts + localized promotions

18. **Packaging Impact (Cans vs Bottles)**  
    Container type affects quantity sold & avg price  
    **Insight**: Consumer packaging preference visible  
    **Impact**: Influences procurement & product development  
    **Action**: Focus promotion on preferred format

19. **Average Basket Size**  
    Average number of different items per transaction  
    **Insight**: Cross-selling strength (or weakness)  
    **Impact**: Higher basket size grows revenue efficiently  
    **Action**: Combo offers + staff training + recommendation engine

20. **Peak Transaction Hour (by Count)**  
    Highest number of transactions in one specific hour  
    **Insight**: Volume peak may differ from revenue peak  
    **Impact**: Staffing misalignment causes wait times or extra cost  
    **Action**: Data-driven scheduling + senior staff at peak

## Full SQL Queries

All 20 queries are available in the `/sql/` folder.

## 🚀 What This Project Demonstrates

- Strong SQL fundamentals
- Business thinking beyond numbers
- Ability to convert raw data into strategic insights
- Experience writing stakeholder-ready recommendations
