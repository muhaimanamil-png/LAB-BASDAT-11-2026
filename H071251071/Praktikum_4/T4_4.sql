SELECT DISTINCT reportsto AS employeenumber
FROM employees
WHERE reportsto IS NOT NULL
EXCEPT
SELECT employeenumber
FROM employees
WHERE jobtitle LIKE '%VP%' OR jobtitle LIKE '%President%';
