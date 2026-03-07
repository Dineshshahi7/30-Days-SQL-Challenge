-- SQL SELECT DISTINCT
-- The SELECT DISTINCT statement retrieves distinct values from a database table.
-- select the unique ages from the Customers table

SELECT DISTINCT age
FROM Customers;

-- select the unique countries from the customers table
SELECT DISTINCT country
FROM Customers;

-- SQL DISTINCT on Multiple Columns
-- We can also use SELECT DISTINCT with multiple columns. For example,
-- select rows if the first name and country of a customer is unique
SELECT DISTINCT country, first_name
FROM Customers;

-- DISTINCT With COUNT
-- We can use SQL DISTINCT with the COUNT() function to count the number of unique rows.
-- count the unique countries where customers are from 
SELECT COUNT(DISTINCT country)
FROM Customers;