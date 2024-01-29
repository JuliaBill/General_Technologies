USE hr;
SELECT salary,
CASE
WHEN salary < 3000
THEN "Меньше среднего"
WHEN salary < 10000
THEN "Средний"
WHEN salary > 10000
THEN "выше среднего"
END AS group_category
FROM employees;
USE airport;


SELECT model_name,
range_val,
CASE 
WHEN range_val BETWEEN 1000 AND 2500
THEN "short-haul"
WHEN range_val BETWEEN 2500 AND 6000
THEN "medium-haul"
WHEN range_val > 6000
THEN "long-haul"
END AS Category
FROM airliners;

SELECT
id,
service_class,
price,
CASE
WHEN price BETWEEN 10000 AND 11000
THEN "Economy"
WHEN price BETWEEN 20000 AND 30000
THEN "PremiumEcnomy"
WHEN price > 100000
THEN "Busines"
END AS Category
FROM tickets;


SELECT 
side_number,
CASE 
WHEN production_year < 2000
THEN "old"
WHEN production_year <= 2010
THEN "Mid"
ELSE "New"
END Age
FROM airliners
WHERE range_val <= 30000
ORDER BY age;