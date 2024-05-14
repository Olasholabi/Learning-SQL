-- CASE Statements --

SELECT first_name, last_name, age,
CASE
WHEN age <= 30
THEN 'young'
WHEN age BETWEEN 31 AND 50
THEN 'old'
WHEN age >= 50
THEN 'Too Old'
END AS 'age_bracket'
FROM employee_demographics;

-- Pay increase and Bonus --
-- Salary < 50000 = 5% increase
-- Salary > 50000 = 7% increase
-- Working in Finance Department = 10% Bonus

-- My Attempt --
SELECT first_name, last_name, department_name AS department, salary,
CASE
WHEN salary < 50000
THEN salary + (5/100)*salary
WHEN salary > 50000
THEN salary + (7/100) * salary
END AS new_salary,
CASE
WHEN department_name = 'Finance'
THEN (10/100)* salary
END AS bonuses
FROM employee_salary AS sal
JOIN parks_departments AS dept
ON sal.dept_id = dept.department_id;

-- As done in the Tutorial --

SELECT first_name, last_name, salary,
CASE
WHEN salary < 50000
THEN salary + (5/100)*salary
WHEN salary > 50000
THEN salary + (7/100) * salary
END AS new_salary,
CASE
WHEN dept_id = 6
THEN (10/100)* salary
END AS bonuses
FROM employee_salary
