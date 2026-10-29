SELECT 
    c.customername,
    COUNT(DISTINCT o.ordernumber) AS total_order,
    ROUND(AVG(od.quantityordered), 2) AS avg_quantity_per_order
FROM customers c
JOIN orders o ON c.customernumber = o.customernumber
JOIN orderdetails od ON o.ordernumber = od.ordernumber
GROUP BY c.customername
HAVING COUNT(DISTINCT o.ordernumber) > 3 AND AVG(od.quantityordered) > 35
ORDER BY total_order DESC, avg_quantity_per_order DESC;