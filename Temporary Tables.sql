-- Temporary Tables --

-- First Method

CREATE TEMPORARY TABLE temp_table
(first_name VARCHAR(20), 
last_name VARCHAR(20), 
best_movie VARCHAR(200)); 

INSERT INTO temp_table
VALUES ("Gafar", "Sholabi", "Pacific Rim");

SELECT*
FROM temp_table;

SELECT*
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT*
FROM employee_salary
WHERE salary > 50000;

DROP TEMPORARY TABLE salary_over_50k;

SELECT*
FROM salary_over_50k;