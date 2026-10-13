SELECT
	productcode,
	COUNT(quantityordered),
	SUM(quantityordered*priceeach),
	ROUND(AVG(priceeach),2),
	MAX(priceeach) - MIN(priceeach) AS volatilitas
FROM orderdetails
WHERE (quantityordered) > 20
GROUP BY productcode
HAVING SUM(quantityordered*priceeach) > 50000
ORDER BY SUM(quantityordered*priceeach) DESC;	