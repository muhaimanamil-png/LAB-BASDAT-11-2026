SELECT
	productcode,
	COUNT(quantityordered) AS jumlah_transaksi,
	SUM(quantityordered) AS total_unit_terjual,
	SUM(quantityordered*priceeach) AS pendapatan,
	ROUND(AVG(priceeach),2) AS rataRata_harga_jual
FROM orderdetails
GROUP BY productcode
HAVING SUM(quantityordered) > 500
ORDER BY pendapatan DESC;