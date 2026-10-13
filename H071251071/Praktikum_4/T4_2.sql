SELECT
	customernumber,
	SUM(amount)
FROM payments
GROUP BY customernumber
HAVING SUM(amount) > 80000
ORDER BY SUM(amount) DESC;