SELECT customernumber
FROM customers
WHERE creditlimit > 80000
INTERSECT
SELECT customernumber
FROM orders
WHERE status IN ('Cancelled','On Hold')
EXCEPT
SELECT customernumber
FROM payments
GROUP BY customernumber
HAVING SUM(amount) > 100000;