-- Customer Segmentation : Who are our most valuable customers?

WITH customer_ltv AS (
SELECT 
	customerkey,
	cleaned_name,
	SUM(total_net_revenue) AS total_ltv
FROM  cohort_analysis
GROUP BY
	customerkey,
	cleaned_name
), customer_segments AS (
	SELECT 
		PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY total_ltv) AS ltv_25th_percentile,
		PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY total_ltv) AS ltv_75th_percentile
	FROM customer_ltv
), segment_value AS (
	SELECT 
		c.*,
		CASE
			WHEN c.total_ltv < cs.ltv_25th_percentile THEN '1 - Low Value'
			WHEN c.total_ltv <= cs.ltv_75th_percentile THEN '2 - Mid Value'
			ELSE '3 - High Value'
		END AS customer_segment	
	FROM customer_ltv c,
		customer_segments cs
)

SELECT 
	customer_segment,
	SUM(total_ltv) AS total_ltv
FROM segment_value
GROUP BY 
	customer_segment 
ORDER BY
	customer_segment DESC