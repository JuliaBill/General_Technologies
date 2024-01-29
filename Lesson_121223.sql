SELECT FROM Employees
Employee_id
Update employees
set phone = "5155.123.4555"
WHERE employee_id = 102;

SET SQL_SAFE_UPDATES =  0;

delete from employees
where first_name = "Alexander"
AND last_name = "Hunold"


CREATE TABLE video_comments (
comment_id int,
created_at timestamp,
author_id int,
content text,
video_id int);
CREATE TABLE video_reaction (
reaction_id int,
created_at timestamp,
author_id int,
value_ int,
video_id int);

INSERT INTO video_comments (comment_id, created_at, author_id, content, video_id)
VALUES 
(1, current_timestamp, 5, "Super!!!", 1),
(2, current_timestamp, 10, "Very interesting!", 2),
(2, current_timestamp, 12, "Lovely", 2);

INSERT INTO video_reaction (reaction_id, created_at, author_id, value_, video_id)
VALUES
(1, current_timestamp, 3, 2, 1),
(2, current_timestamp, 2, 1, 2),
(3, current_timestamp, 7, 2, 1),
(4, current_timestamp, 6, 1, 2);
DROP  table employees;

CREATE TABLE employees (
	employee_id int primary key auto_increment,
  	first_name varchar(128),
  	last_name varchar(128),
  	email varchar(128),
	salary int,
  	department varchar(128))

select * from employees
where department = "IT"
AND salary > 12000;
SET SQL_SAFE_UPDATES = 0;

update employees
set salary = salary*5
WHERE department = "Human Resources";

-- Повысить зарплату работников отдела Human Resources в 5 раз

update employees
set salary = salary * 2
where first_name = 'Laura'or first_name = 'Adam';

select * 
from employees
where first_name = 'Laura'or first_name = 'Adam';


delete from employees
Where department = "sales";

Update employees
set salary = salary +5000, department = "Marketing"
Where first_name = "John" and Lastname = "Russell";

-- John Russell перевели в отдел Marketing и повысили зарплату на 5000. Измените данные для работника John Russell.
update employees
set department = 'Marketing', salary = salary + 5000
where first_name = 'John' and  last_name = 'Russell';

select * from employees
where first_name like "S%";
where first_name like "_S%";
where first_name like "____";
where first_name like "%S%";
where first_name like "_S%_";
where first_name like "Tom";

select * from employees
where last_name like "____";


select * from employees
where email like "A___o";

select *from employees
where first_name not like "A%";

-- (not) between min and max
-- (not) in ( , , )
-- not 
-- (not) like
-- is null
-- is not null