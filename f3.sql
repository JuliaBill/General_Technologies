use hr_nelly;

-- 1. Найти сотрудников (имя, фамилия, зарплата), который зарабатывают больше всех в компании

SELECT 
employees.first_name,
employees.last_name,
max(salary) as max_salary
FROM employees
GROUP BY salary
