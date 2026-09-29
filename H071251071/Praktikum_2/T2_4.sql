SELECT productcode,productname,buyprice FROM products
WHERE buyprice > 50.00
ORDER BY buyprice DESC
LIMIT 7;