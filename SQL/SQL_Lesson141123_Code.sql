USE hr;
SELECT  FROM countries
WHERE region_id = '90' ;
SELECT * FROM employees WHERE department_id = 90;
SELECT * FROM employees WHERE salary > 5000;
SELECT * FROM employees WHERE last_name like 'L%';
SELECT city FROM locations WHERE country_id = 'US';
SELECT * FROM departments WHERE location_id = 1700; 
SELECT salary FROM employees WHERE first_name like 'Lex' AND last_name LIKE 'De Haan';
SELECT * FROM employees WHERE job_id = 'FI_ACCOUNT' AND salary < 8000;
SELECT * FROM employees WHERE last_name LIKE "_%kk%_" OR "_%ll%_";
SELECT * FROM departments;
SELECT * FROM employees WHERE commission_pct is null;
SELECT * FROM employees WHERE salary BETWEEN 5000 AND 7000;
SELECT * FROM employees WHERE salary >= 5000 and salary <= 7000;
SELECT * FROM employees WHERE salary in (6000, 7000, 9000);
SELECT * FROM employees WHERE salary not in (6000, 7000, 9000);
SELECT * FROM employees WHERE salary <> 6000 AND 7000 AND 9000;
