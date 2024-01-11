1. Вывести самый дорогой товар из категории 4

SELECT * FROM Products
WHERE
CategoryID = 4
ORDER BY Price DESC
LIMIT 1 OFFSET 1

2. Вывести страны поставщиков, кроме поставщика 1

SELECT Country 
FROM Suppliers
WHERE SupplierID NOT IN (1)


3. Вывести клиентов из Germany, имена которых начинаются на t

SELECT *
FROM Customers
WHERE ContactName
LIKE "t%";

4. Вывести телефоны перевозчиков

SELECT Phone
FROM Shippers