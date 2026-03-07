-- SQL SELECT AS Alias
-- The AS keyword is used to give columns or tables a temporary name that can be used to identify that column or table later.
SELECT first_name AS name
FROM Customers;

-- SQL AS With More Than One Column
-- We can also use aliases with more than one column.
SELECT customer_id AS cid, first_name AS name
FROM Customers;

-- SQL AS With Expression
-- We can combine data from multiple columns and represent it in a single column using the CONCAT() function. For example,
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM Customers;

-- concatenate first_name, empty space, and last_name 
-- into a single column named full_name in the result set
SELECT first_name || ' ' || last_name AS full_name
FROM Customers;