SELECT 
    c.customername,
    c.city AS customer_city,
    off.city AS office_city,
    SUM(od.quantityordered) AS total_unit_terjual,
    ROUND(SUM(od.quantityordered * od.priceeach) / COUNT(o.ordernumber), 2) AS avg_nilai_per_order
FROM customers c
JOIN employees e ON c.salesrepemployeenumber = e.employeenumber
JOIN offices off ON e.officecode = off.officecode
JOIN orders o ON c.customernumber = o.customernumber
JOIN orderdetails od ON o.ordernumber = od.ordernumber
WHERE off.territory = 'EMEA'
GROUP BY c.customername, c.city, off.city
HAVING
	COUNT(DISTINCT DATE_PART('year',o.orderdate)) > 2
	AND SUM(od.quantityordered) > 1000
	AND (SUM(od.quantityordered * od.priceeach) / COUNT(DISTINCT o.ordernumber)) > 10000
ORDER BY avg_nilai_per_order DESC;