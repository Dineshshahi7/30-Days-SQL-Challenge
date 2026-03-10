-- We use the SQL LIKE operator with the WHERE clause to get a result set that matches the given string pattern.
-- select customers who live in the UK 
SELECT first_name
FROM Customers
WHERE country LIKE 'UK';

-- SQL LIKE
-- select customers who live in the UK
SELECT *
FROM Customers
WHERE country LIKE 'UK';

-- SQL NOT LIKE Operator
-- We can also invert the working of the LIKE operator by using the NOT operator with it. This returns a result set that doesn't match the given string pattern.
-- select customers who don't live in the USA
SELECT *
FROM Customers
WHERE country NOT LIKE 'USA';


-- SQL LIKE With Multiple Values
-- We can use the LIKE operator with multiple string patterns using the OR operator.

-- select customers whose last_name starts with R and ends with t
-- or customers whose last_name ends with e
 SELECT *
FROM Customers
WHERE last_name LIKE 'R%t' OR last_name LIKE '%e';
