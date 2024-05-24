-- Stored Procedures --

CREATE PROCEDURE high_salaries()
SELECT*
FROM employee_salary
WHERE salary >= 50000;

CALL high_salaries();

DELIMITER $$
CREATE PROCEDURE high_salaries3()
BEGIN
	SELECT*
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT*
	FROM employee_salary
	WHERE salary < 50000;
END $$
DELIMITER ;

CALL high_salaries3();

-- Parameters --

DELIMITER $$
CREATE PROCEDURE high_salaries4(employee_id_param INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = employee_id_param;
END $$
DELIMITER ;

CALL high_salaries4(7);

