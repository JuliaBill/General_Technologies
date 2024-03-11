// 1. Найти количество сотрудников в каждом департаменте. Вывести departmentid и employeescnt

select count(*) as employees_cnt,
departments.department_id
from employees
join departments ON employees.department_id = departments.department_id
Group by employees.department_id

//2. Найти количество сотрудников в каждом департаменте. Вывести departmentname и employeescnt

select count(*) as employees_cnt,
departments.department_name
from employees
join departments ON employees.department_id = departments.department_id
Group by departments.department_name

// 3. Найти количество сотрудников у каждого менеджера. Вывести managerid и employeescnt

select count(*) as employees_cnt,
departments.manager_id
from employees
join departments ON employees.department_id = departments.department_id
Group by departments.manager_id

// 4. Найти количество сотрудников у каждого менеджера. Вывести firstname,  lastname и employees_cnt

select count(*) as employees_cnt,
employees.first_name,
employees.last_name
from employees
join departments ON employees.department_id = departments.department_id
join jobs on employees.job_id = jobs.job_id
Group by jobs.job_id

// 5. Найти максимальную зарплату в каждом департаменте. Вывести departmentid и maxsalary

select MAx(salary) as max_salary,
departments.department_id
from departments
join employees on departments.department_id = employees.department_id
group by department_id

// 6. Найти сотрудников, у которых наибольшая зарплата в их департаменте
select 
t1.first_name,
t1.last_name,
t1.salary,
t2.max_salary,
t1.department_id
from employees t1
join (
select
department_id,
max(salary) as max_salary
from employees
group by department_id
) t2
on t1.department_id = t2.department_id
where t1.salary = t2.max_salary;

// 7. Найти департаменты, в которых больше 10 сотрудников. Вывести department_name
 select
 count(*) as employee_cnt,
 department_name
 from departments
 join employees on departments.department_id = employees.department_id
 group by departments.department_name
 having employee_cnt > 10