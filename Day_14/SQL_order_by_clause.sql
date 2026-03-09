-- SQL ORDER BY Clause
-- The ORDER BY clause in SQL is used to sort the result set in ascending or descending order.
-- orders all rows from Customers in ascending order by country
SELECT *
FROM Customers
ORDER BY country;

-- ORDER BY ASC (Ascending Order)
-- We can use the ASC keyword to explicitly sort selected records in ascending order.
-- orders all rows from Customers in ascending order by age 
SELECT *
FROM Customers
ORDER BY age ASC;

-- ORDER BY DESC (Descending Order)
-- We use the DESC keyword to sort the selected records in descending order.
-- order all rows from Customers in descending order by age
SELECT *
FROM Customers
ORDER BY age DESC;

-- ORDER BY With Multiple Columns
-- We can also use ORDER BY with multiple columns.
-- sort all rows from Customers, first by first_name and then by age
SELECT *
FROM Customers
ORDER BY first_name, age;

-- ORDER BY With WHERE
-- We can also use ORDER BY with the SELECT WHERE clause.
-- select last_name and age of customers who don't live in the UK
-- and sort them by last_name in descending order
SELECT last_name, age
FROM Customers
WHERE NOT country = 'UK'
ORDER BY last_name DESC;