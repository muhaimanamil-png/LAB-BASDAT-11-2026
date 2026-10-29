SELECT 
	e.employeenumber,
	CONCAT(e.firstname, ' ', e.lastname) AS nama_lengkap_karyawan,
	e.jobtitle,
	o.city,
	em.firstname AS atasan
FROM employees e
JOIN offices o ON e.officecode = o.officecode
JOIN employees em ON e.reportsto = em.employeenumber
WHERE 
	e.jobtitle ILIKE ('%Sales%') OR e.jobtitle ILIKE ('%Manager%')
ORDER BY o.city;