SELECT
	ordernumber,
	orderdate,
	shippeddate,
	orderdate + INTERVAL '10 days' AS "Estimasi Kirim",
	COALESCE(shippeddate, orderdate + INTERVAL '10 days') AS "Tanggal Aktual",
	AGE(shippeddate,orderdate) AS "Selisih Waktu"
FROM orders
WHERE 
	comments ILIKE '%customer%' AND
	DATE_PART('month',orderdate) BETWEEN 10 AND 12
 	AND ordernumber % 2 != 0
ORDER BY orderdate DESC;