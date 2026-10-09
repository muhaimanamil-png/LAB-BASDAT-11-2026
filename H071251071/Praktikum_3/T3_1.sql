SELECT 
    orderNumber, 
    UPPER(productCode) AS "Kode Produk", 
    quantityOrdered, 
    priceEach
FROM orderdetails
WHERE 
    LEFT(productCode, 3) = 'S18'
    AND (quantityOrdered BETWEEN 20 AND 50 OR priceEach < 30)
ORDER BY 
    quantityOrdered DESC;
