-- The SQL LIMIT keyword allows us to specify the number of records in the result set.
SELECT first_name, age
FROM Customers
LIMIT 2;

-- SQL LIMIT With OFFSET Clause
-- The OFFSET keyword is used with LIMIT to specify the starting rows from where to select the data. For example,
-- LIMIT 2 selects two results
-- OFFSET 3 excludes the first three results
SELECT first_name, last_name
FROM Customers
LIMIT 2 OFFSET 3;

-- SQL TOP Clause
-- The TOP keyword is used in place of LIMIT with the following database systems:

-- SQL Server
-- MS Access
SELECT TOP 2 first_name, last_name
FROM Customers;