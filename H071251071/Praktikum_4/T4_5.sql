SELECT
	productcode,
	COUNT(quantityordered),
	ROUND(AVG(quantityordered*priceeach),2)
FROM orderdetails
WHERE priceeach > 100
GROUP BY productcode
HAVING COUNT(quantityordered) > 50
ORDER BY COUNT(quantityordered) DESC;