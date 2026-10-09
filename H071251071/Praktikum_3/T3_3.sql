SELECT 
	productcode,
	productname,
	buyprice,
	msrp,
	GREATEST(buyprice,msrp),
	LEAST(buyprice,msrp)
FROM products
WHERE productname ILIKE '%car%';