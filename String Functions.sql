-- String Functions --

SELECT LENGTH("Serendipity");

SELECT first_name, LENGTH (first_name) AS no_of_characters
FROM employee_demographics
ORDER BY no_of_characters ASC;

SELECT UPPER("Serendipity");

SELECT LOWER("Serendipity");

SELECT first_name, UPPER (first_name) AS upper_case
FROM employee_demographics;

-- TRIM --

SELECT TRIM("         Sky         ");

SELECT LTRIM("         Sky         ");

SELECT RTRIM("         Sky         ");

-- SUBSTRING --

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6,2) AS birth_month
FROM employee_demographics;

-- REPLACE --

SELECT first_name,
REPLACE(first_name, "a", "2")
FROM employee_demographics;

-- LOCATE --

SELECT LOCATE("k", "Freckles");

SELECT first_name,
LOCATE("e", first_name)
FROM employee_demographics;

-- CONCATENATE --

SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS full_name
FROM employee_demographics;