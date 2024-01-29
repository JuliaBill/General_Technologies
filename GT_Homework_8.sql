 1 уровень сложности: 1. В рамках БД "песочница" выведите З/П каждого менеджера, исходя из ставки в 5% от суммы заказов

SELECT
Employees.LastName,
Employees.FirstName,
	SUM(Products.Price * OrderDetails.Quantity)*0.05 AS salary
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
JOIN Orders ON Employees.OrderID = Orders.OrderID
GROUP BY Employees.EmployeeID


2. Используя MySQL WorkBench (или аналогичный инструмент) создайте БД music (сервис онлайн-музыки) и в рамках нее таблицы users, tracks с полями на Ваше усмотрение
CREATE database Music;
CREATE TABLE users (
	user_id int primary key auto_increment,
  	first_name varchar(128),
  	last_name varchar(128),
  	email varchar(128),
	 created_at timestamp);
     
     CREATE TABLE tracks (
		track_id int,
    created_at timestamp,
    title varchar(64),
		author_id int,
    duration_secs int
);