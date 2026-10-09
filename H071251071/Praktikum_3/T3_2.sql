SELECT 
	customernumber,
	customername,
	country,
	CONCAT(contactfirstname,' ',contactlastname) AS "Nama Kontak",
	creditlimit,	
	creditlimit - 10000 AS "Selisih Kredit"
FROM customers
WHERE country IN ('USA','France','Canada') AND creditlimit > 30000
ORDER BY creditlimit DESC;
