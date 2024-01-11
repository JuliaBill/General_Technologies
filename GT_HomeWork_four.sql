1. Вывести название и стоимость в USD одного самого дорогого проданного товара

select products.ProductName as Name, products.Price as Price_USD
from order_details
JOIN products ON products.ProductID =  order_details.ProductID
ORDER BY Price DESC
LIMIT 1;

2. Вывести два самых дорогих товара из категории Beverages из USA

SELECT Products.productName
FROM Products
JOIN Categories ON Categories.CategoryID = Products.CategoryID
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE Categories.CategoryName = "Beverages"
AND
Suppliers.Country = "USA"
ORDER BY Products.Price DESC
LIMIT 2;

3.Вывести список стран, которые поставляют морепродукты

SELECT DISTINCT Country 
FROM Products
JOIN Categories ON Categories.CategoryID = Products.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE CategoryName = "Seafood"