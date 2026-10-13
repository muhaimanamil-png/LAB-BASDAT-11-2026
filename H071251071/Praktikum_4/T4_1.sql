SELECT
	customernumber,
	SUM(amount),
	COUNT(DISTINCT amount),
	MAX(amount)
FROM payments
GROUP BY customernumber
HAVING COUNT(amount) > 4 AND ROUND(AVG(amount),2) > 20000;