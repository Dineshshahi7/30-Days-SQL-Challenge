-- SQL HAVING Clause
-- The SQL HAVING clause is used if we need to filter the result set based on aggregate functions such as MIN() and MAX(), SUM() and AVG(), and COUNT().
-- select customers with the same first name based on their age count 
SELECT COUNT(age) AS Count, first_name
FROM Customers
GROUP BY first_name
HAVING COUNT(age) > 1;


-- select the count of customer ids greater than one and their corresponding country 
SELECT COUNT(customer_id), country
FROM Customers
GROUP BY country
HAVING COUNT(customer_id) > 1;

-- SQL HAVING vs. WHERE
-- HAVING Clause	WHERE Clause
-- The HAVING clause checks the condition on a group of rows.	The WHERE clause checks the condition on each individual row.
-- HAVING is used with aggregate functions.	The WHERE clause cannot be used with aggregate functions.
-- The HAVING clause is executed after the GROUP BY clause.	The WHERE clause is executed before the GROUP BY clause.
