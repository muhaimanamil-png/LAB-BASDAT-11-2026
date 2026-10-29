SELECT 
    p.productline,
    SUM(od.quantityordered) AS total_terjual,
    ROUND(AVG(od.priceeach), 2) AS rata_rata_harga,
    ROUND(AVG((p.msrp - od.priceeach) / p.msrp * 100), 2) AS avg_discount_percentage
FROM products p
JOIN orderdetails od ON p.productcode = od.productcode
GROUP BY p.productline
HAVING SUM(od.quantityordered) > 3000 AND AVG(od.priceeach) > 80
ORDER BY total_terjual DESC;