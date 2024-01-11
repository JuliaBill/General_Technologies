1.
Вывести ко-во товаров с ценой от 10 до 250 EUR

SELECT COUNT(*) AS total_products 
FROM Products
WHERE Price BETWEEN 10 AND 250;

2. Вывести ко-во поставщиков не из UK и не из China
SELECT 
COUNT(*) AS not_UK_China_Suppliers 
FROM Suppliers
WHERE Not Country IN ("UK", "China");

3. Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5

 AVG
SELECT AVG (Price) AS avg_price,
COUNT(*) AS total_products
FROM Products
WHERE CategoryID IN (3,5)

MIN

SELECT MIN(Price) AS min_price,
COUNT(*) AS total_products
FROM Products
WHERE CategoryID IN (3,5)

MAX
SELECT MAX(Price) AS max_price,
COUNT(*) AS total_products
FROM Products
WHERE CategoryID IN (3,5)

4 Вывести общую сумму проданных товаров

SELECT SUM(Orders.OrderID * OrderDetails.Quantity) AS total_quanntity
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID

5. Вывести данные о заказах (номерзаказа, имяклиента, странаклиента, фамилияменеджера, названиекомпанииперевозчика)
SELECT 
Orders.OrderID,
Customers.CustomerName,
Customers.Country,
Employees.LastName,
Shippers.ShipperName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

6. Вывести сумму, на которую было отправлено товаров клиентам в Germany

SELECT SUM(Products.Price * OrderDetails.Quantity) AS order_cost_germany
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
JOIN Orders On Customers.OrderID = Orders.OrderID
WHERE Customers.Country = "Germany";

с последнeй задачей возникли проблемы. к сожалению не получилось вывести результат.