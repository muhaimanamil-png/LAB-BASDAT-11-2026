SELECT 
    c.customername,
    SUM(p.amount) AS total_payment,
    MAX(p.amount) AS max_single_payment
FROM customers c
JOIN payments p ON c.customernumber = p.customernumber
GROUP BY c.customername
HAVING SUM(p.amount) > 50000
ORDER BY total_payment DESC;
