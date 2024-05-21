-- Window Functions --

SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- Rolling Total --

SELECT dem.first_name, dem.last_name, gender, salary, SUM(salary) 
OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- Row number, Rank and Dense_rank functions --

SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;
