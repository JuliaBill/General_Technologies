-- Вывести количество сотрудников в каждом департаменте.

SELECT 
count(*) as total_employees,
t2.department_name
FROM employees t1
JOIN departments t2 ON t1.department_id = t2.department_id
group by  t1.department_id;


-- Вывести среднюю зарплату по департаментам. (имя департамента и средняя зарплата)
Select
t2.department_name,
avg(t1.salary) as avg_salary
FROM employees t1
JOIN departments t2  ON t1.department_id = t2.department_id
group by t1.department_id

-- Вывести общее количество сотрудников в каждом городе.
Select
City,
count(*) as total_employees
from employees t1
Join departments t2 ON t1.department_id = t2.department_id
Join locations t3 ON t2.location_id = t3.location_id
Group by t3.city

-- Найти департаменты с более чем 5 сотрудниками.(имя департамента, кол/во сотрудников)

Select
department_name,
count(*) as emp_count
from employees t1
join departments t2 on t1.department_id = t2.department_id
Group by t2.department_id
having emp_count > 5

-- Найти страны, в которых количество сотрудников превышает 20. (country_name и кол/во сотрудников)
select
t4.country_name,
count(*) as emp_count
from employees t1
Join departments t2 ON t1.department_id = t2.department_id
Join locations t3 ON t2.location_id = t3.location_id
Join countries t4 ON t3 .country_id = t4.country_id
group by t4.country_name
having  emp_count > 20


