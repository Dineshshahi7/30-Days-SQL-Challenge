-- SQL Wildcards
-- A wildcard character in SQL is used with the LIKE clause to replace a single character or a set of characters in a string.
-- % and _ are two commonly used wildcard characters in SQL.

-- select customers who live in countries
-- that start with 'US' followed by a single character
SELECT *
FROM Customers
WHERE country LIKE 'US_'

-- select rows where the last name
-- of customers start with R 
SELECT *
FROM Customers
WHERE last_name LIKE 'R%';

-- % Wildcard in SQL
-- The % wildcard in SQL is used to represent zero or more characters.
-- select rows where the first names
-- of customers start with J 
SELECT *
FROM Customers
WHERE first_name LIKE 'J%';

-- _ Wildcard in SQL
-- The _ wildcard in SQL is used to represent exactly one character in a string.
-- select customers whose countries start with U
-- followed by a single character
SELECT *
FROM Customers
WHERE country LIKE 'U_';

-- [] Wildcard in SQL
-- The [] wildcard in SQL is used to represent any one character inside brackets. 
-- select customers with country that starts with UK or UA
-- and is followed by any number of characters
SELECT *
FROM Customers
WHERE country LIKE 'U[KA]%';

-- ! Wildcard in SQL
-- The ! wildcard in SQL is used to exclude characters from a string. 
--select rows where customer's last names don't start with D or R
SELECT *
FROM Customers
WHERE last_name LIKE '[!DR]%';

