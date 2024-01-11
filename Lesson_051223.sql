USE Hr;
select * from jobs;

select * from departments;
select * from locations;

SELECT 
t1.first_name, 
t1.last_name,
t1.salary,
t2.min_salary,
t2.job_title
FROM employees t1
JOIN jobs t2 
ON t1.job_id = t2.job_id


SELECT 
t1.first_name, 
t1.last_name,
t2.job_title,
t3.department_name,
t4.city
FROM
employees t1
JOIN jobs t2 
ON t1.job_id = t2.job_id
JOIN  departments t3
ON t3.department_id = t1.department_id
join locations t4
ON t4.location_id = t3.location_id


SELECT 
t1.first_name, 
t1.last_name,
t1.salary,
t2.min_salary,
t2.jmax_salary
FROM employees t1
JOIN jobs t2 
ON t1.job_id = t2.job_id
WHERE t1.salary = t2.min_salary or t1.salary=t2.max_salary;