1. Найти мин/стоимость товаров для каждой категории

SELECT MIN(Price) AS min_price,
Products.ProductName
FROM Products
GROUP BY Products.CategoryID

2. Вывести названия категорий, в которых более 10 товаров

SELECT 
CategoryID,
COUNT(*) AS count_products
FROM Products
GROUP BY Products.CategoryID
HAVING count_products >= 10
ORDER BY count_products DESC

3.Вывести три самых дешевых заказа

SELECT 
OrderID,
SUM(Products.Price * Quantity) AS total_cost
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderDetails.OrderID
ORDER BY total_cost ASC
LIMIT 3

4. Вывести имена и фамилии (и ко-во заказов) менеджеров, у которых ко-во заказов менее 15

SELECT
Employees.LastName,
Employees.FirstName,
COUNT(*) AS count_orders
FROM Orders
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.EmployeeID 
HAVING count_orders <= 15
ORDER BY count_orders ASC


5. Вывести ТОП-1 стран по ко-ву клиентов


SELECT 
Customers.Country,
COUNT(*) AS total_count_of_customers
FROM Customers
GROUP BY Customers.Country
ORDER BY total_count_of_customers DESC
LIMIT 1
