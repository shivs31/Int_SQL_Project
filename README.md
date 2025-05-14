# Intermediate SQL - Sales Analysis

## Overview 
Analysis of customer behavior, retention, and lifetime value for an e-commerce company to improve customer retention and maximize revenue.

## Business Questions
1. **Customer Segmentation:** Who are our most valuable customers?
2. **Cohort Analysis:** How do different customer groups generated revenue ?

3. **Retention Analysis:** Which customers haven't purchased recently?


## Analysis Approach

### 1. 

🖥️ Query: [1_customer_segmentation.sql](/1_customer_segmentation.sql)

**📈 Visualization:**

![Cohort Analysis](/images/customer_segmentation.jpg)

📊 **Key findings:**
- High-value segment (25% of customers) drives 66% of revenue ($ 135.4M)
- Mid-value segment (50% of customers) generates 32% of revenue ($66.6M)
- Low-Value segment (25% of customers) accounts for 2% of revenue ($4.3M)

💡 **Business Insights**
- High-value (66% revenue): Offer premium membership program to 12,372 VIP customers, as losing one customer significantly impacts revenue.
- Mid-value (32% revenue): Create upgrade paths through personalized promotions, with potential $66.6M to $135.4M revenue opportunity
- Low-Value (2% revenue): Design re-engagement campaigns and price-sensitive promotions to increase purchase frequency

### 2. Cohort Analysis
- Tracked revenue and customer count per cohorts
- Cohorts were grouped by year of first purchase
- Analyzed customer retention at a cohort level

Query:

 [2_cohort_analysis.sql](/2_cohort_analysis.sql)

**Key findings:**
- Revenue per customer shows an alarming decreasing trend over time
- 2022-2024 cohorts are consistently performing worse than earlier cohorts
- NOTE: Although net revenue is increasing, this is likely due to a larger customer value

**Business Insights**

- Value extracted from customers is decreasing over time and needs further investigation.
- In 2023 we saw a drop in number of customers acquired, which is concerning.
- With both lowering LTV and decreasing customer acquisition, the company is facing a potential revenue decline.  

### 3. 

🖥️ Query: [3_retention_analysis.sql](/3_retention_analysis.sql)

- Identified customers at risk of churning
- Analyzed last purchased patterns
- Calculated customer-specific metrics

📊 **Key findings:**
- Cohort churn stabilizes at ~90% after 2-3 years, indicating a predictable lon-term retention pattern.
- Retention rates are consistently low(8-10%) across all cohorts, suggesting retention issues are systemic rather than specific to certain years.
- Newer cohorts (2022-2023) show similar churn trajectories, signaling that without intervention, future cohorts will follow the same pattern.
 
💡 **Business Insights**
- Strengthen early engagement strategies to target the first 1-2 years with onboarding incentives, loyalty rewards, and personalized offers to improve long-tern retention.
- Re-engage high-value churned customers by focusing on targeted win-back campaigns rathe than road retention efforts, as reactivating valuable users may yield higher ROI.
- Predict & preempt churn risk and use customer specific warning indicators proactively intervene with at-risk users before they lapse.

## Technical Details

- **Database:** PostgreSQL
- **Analysis Tools:** PostgreSQL,DBeaver,PGadmin





