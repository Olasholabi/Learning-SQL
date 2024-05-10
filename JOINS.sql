-- JOIN --

SELECT*
FROM employee_demographics;

SELECT*
FROM employee_salary;

-- INNER JOIN --

SELECT*
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id ;
    
SELECT dem.employee_id, dem.first_name, dem.last_name, age, occupation, salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id ;
    
-- OUTER JOIN --

SELECT*
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id ;
    
SELECT*
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id ;
    
-- SELF JOIN - 

SELECT*
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
-- Applying Self Join in a scenario where employees are randomely paired for exchange of gifts on Christmas. --
    
SELECT emp1.employee_id AS emp_santa, 
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_id, 
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id;

-- Joining multiple tables --

SELECT*
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id ;
    
SELECT*
FROM parks_departments;

SELECT*
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS dep
	ON sal.dept_id = dep.department_id;
    
SELECT dem.employee_id, dem.first_name, dem.last_name, age, department_name, occupation, salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS dep
	ON sal.dept_id = dep.department_id;
