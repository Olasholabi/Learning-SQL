-- UNIONS --

SELECT employee_id, first_name, last_name
FROM employee_demographics
UNION 
SELECT employee_id, first_name, last_name
FROM employee_salary;

SELECT employee_id, first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT employee_id, first_name, last_name
FROM employee_salary;

SELECT employee_id, first_name, last_name
FROM employee_demographics
UNION ALL
SELECT employee_id, first_name, last_name
FROM employee_salary;

SELECT employee_id, first_name, last_name, "Old Man" AS Label
FROM employee_demographics
WHERE age > 40 AND gender = "male"
UNION
SELECT employee_id, first_name, last_name, "Old Woman" AS Label
FROM employee_demographics
WHERE age > 40 AND gender = "female"
UNION
SELECT employee_id, first_name, last_name, "Highly Paid" AS Label
FROM employee_salary
WHERE salary >= 70000
ORDER BY first_name, last_name;