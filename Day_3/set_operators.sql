use SalesDB
GO
/* The SQL UNION operator is used to combine the result sets of two or more SELECT queries into a single 
output. It removes duplicate rows and returns only unique records from all combined queries. */

-- Combine the data from employees and customers into one table
SELECT FirstName,
LastName
FROM Sales.Customers
UNION 
SELECT FirstName,
LastName
FROM Sales.Employees

/* UNION ALL Operator is used to combine the results of two or more SELECTstatements into a single result set. 
Unlike the UNION operator, which eliminates duplicate records and UNION ALL includes all duplicates. 
This makes UNION ALL it faster and more efficient when we don't need to remove duplicates. */

-- Combine the data from employees and customers into one table, including duplicates
SELECT FirstName,
LastName
FROM Sales.Customers
UNION ALL
SELECT FirstName,
LastName
FROM Sales.Employees

-- When to use UNION ALL and UNION ?
-- Ans: UNION ALL is generally faster than UNION because UNION ALL does no extra processing for duplicates
--  If you are confident there are no duplicates in table, then use UNION ALL 
-- UNION is useful when data integrity requires unique records in the result set

/* The SQL EXCEPT operator returns rows from the first query that do not appear in the second. 
It works like subtracting one result set from another and is useful for identifying 
unmatched or missing records between tables. */
-- Return all distinct rows from the first query that are not found in the second query (like A - B)
-- It is the only one where the order of queries affects the final results
-- Returns only rows unique to the first SELECT.
-- Removes duplicates automatically.
-- Helps compare datasets and find non-overlapping records.

-- Find the employees who are not customers at the same time
SELECT FirstName,
LastName
FROM Sales.Customers
EXCEPT
SELECT FirstName,
LastName
FROM Sales.Employees

/* The INTERSECT operator in SQL is used to return only the records that appear in both of two SELECT query results. 
It acts like the intersection of two sets, showing only the common rows shared between them. */
-- Returns rows present in both SELECT statements
-- Automatically removes duplicates
-- Useful for finding overlapping or matching dataacross tables or queries.

-- Find the employees, who are also customers
SELECT FirstName,
LastName
FROM Sales.Customers
INTERSECT
SELECT FirstName,
LastName
FROM Sales.Employees