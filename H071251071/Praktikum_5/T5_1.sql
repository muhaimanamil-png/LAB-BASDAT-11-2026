SELECT 
    c.contactfirstname,
    c.customername,
    o.city AS office_city,
    CONCAT(e.firstName, ' ', e.lastName) AS sales_rep_name
FROM customers c
JOIN employees e ON c.salesrepemployeenumber = e.employeenumber
JOIN offices o ON e.officecode = o.officecode
WHERE c.contactfirstname ILIKE 'a%' AND o.city != 'NYC'
ORDER BY c.customername ASC;