SELECT 
    c.customername,
    SUM(od.quantityordered * od.priceeach) AS total_transaksi,
    COUNT(DISTINCT o.status = 'Shipped')  AS total_shipped_orders,
    ROUND(SUM(od.quantityordered * od.priceeach) / COUNT(o.ordernumber), 2) AS avg_transaction_per_order
FROM customers c
JOIN orders o ON c.customernumber = o.customernumber
JOIN orderdetails od ON o.ordernumber = od.ordernumber
GROUP BY c.customername
HAVING COUNT(DISTINCT DATE_PART('year',o.orderdate)) > 1
ORDER BY total_transaksi DESC
LIMIT 5;