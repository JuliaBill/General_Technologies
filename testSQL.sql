SELECT
Suppliers.SupplierName,
AVG(Products.Price) AS avg_price
FROM Products
Join Suppliers ON Suppliers.SupplierID = Products.SupplierID
GROUP BY Suppliers.SupplierID
HAVING
avg_price >= 40
