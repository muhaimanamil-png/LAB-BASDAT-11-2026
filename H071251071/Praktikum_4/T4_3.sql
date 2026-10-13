SELECT
	productline,
	COUNT(DISTINCT productname),
	ROUND(AVG(msrp),2),
	STRING_AGG(productname, ', ' ORDER BY productname)
FROM products
GROUP BY productline
HAVING COUNT(productline) > 10;