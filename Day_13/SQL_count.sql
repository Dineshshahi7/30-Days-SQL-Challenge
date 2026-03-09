-- SQL COUNT()
-- The SQL COUNT() function returns the number of records returned by a query.
-- returns the count of rows in the Orders table
SELECT COUNT(*)
FROM Orders;

-- --returns the number of rows in the Customers table
SELECT COUNT(*)
FROM Customers;

-- Specify Column to Count
-- We can also specify a column name in COUNT() to only count the rows in that particular column.
--returns the count of non-null values in the age column
SELECT COUNT(age)
FROM Customers;

-- COUNT() With WHERE
-- We can use COUNT() with WHERE to count rows that match the given value.
-- count of customers who live in the UK
SELECT COUNT(country)
FROM Customers
WHERE country = 'UK';

-- COUNT() With DISTINCT
-- If we need to count the number of unique rows, we can use the COUNT() function with the DISTINCT clause. 
-- count the unique countries in Customers table
SELECT COUNT(DISTINCT country)
FROM Customers;