SELECT
	cohort_year,
	COUNT(DISTINCT customerkey) AS total_customers,
	SUM(total_net_revernue ) AS total_revenue,
	SUM(total_net_revernue )/COUNT(DISTINCT customerkey) AS customer_revenue
FROM cohort_analysis 
WHERE orderdate=first_prchase_date 
GROUP BY cohort_year 