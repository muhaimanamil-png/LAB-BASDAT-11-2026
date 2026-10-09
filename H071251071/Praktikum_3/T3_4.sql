SELECT 
	ordernumber,
	orderdate,
	shippeddate,
	DATE_PART('year',orderdate) AS "Tahun",
	DATE_PART('month',orderdate) AS "Bulan",
	shippeddate - orderdate AS "Lama Pengiriman",
	AGE(shippeddate,orderdate) AS "Interval Pengiriman",
	CURRENT_DATE AS "Tanggal Laporan",
	CURRENT_TIME AS "Waktu Laporan"
FROM orders;