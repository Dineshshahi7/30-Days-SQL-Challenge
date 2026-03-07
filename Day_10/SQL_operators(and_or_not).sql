-- SQL AND Operator
-- The SQL AND operator selects data if all conditions are TRUE. For example,
-- select the first_name and last_name of all customers
-- who live in 'USA' and have the last name 'Doe'

SELECT first_name, last_name
FROM Customers
WHERE country = 'USA' AND last_name = 'Doe';


-- SQL OR Operator
-- The SQL OR operator selects data if any one condition is TRUE. For example,
-- select first and last name of customers
-- who either live in the USA
-- or have the last name 'Doe'

SELECT first_name, last_name
FROM Customers
WHERE country = 'USA' OR last_name = 'Doe';


-- SQL NOT Operator
-- The SQL NOT operator selects data if the given condition is FALSE. For example,
-- select customers who don't live in the USA

SELECT first_name, last_name
FROM Customers
WHERE NOT country = 'USA';


-- Combining Multiple Operators

-- It is also possible to combine multiple AND, OR and NOT operators in an SQL statement.
-- For example, let's suppose we want to select customers where country is either USA or UK, and age is less than 26.
-- select customers who live in either USA or UK and whose age is less than 26

SELECT *
FROM Customers
WHERE (country = 'USA' OR country = 'UK') AND age < 26;
-- exclude customers who are from the USA and have 'Doe' as their last name

SELECT *
FROM customers
WHERE NOT country = 'USA' AND NOT last_name = 'Doe';
