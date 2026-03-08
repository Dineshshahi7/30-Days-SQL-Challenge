-- SQL MAX() and MIN()
-- In SQL,
-- The MAX() function returns the maximum value of a column.
-- The MIN() function returns the minimum value of a column.

-- SQL MAX() Function
-- The syntax of the SQL MAX() function is:
SELECT MAX(columnn)
FROM table;

SELECT MAX(age)
FROM Customers;

-- SQL MIN() Function
-- The syntax of the SQL MIN() function is:
SELECT MIN(columnn)
FROM table;

SELECT MIN(age)
FROM Customers;

-- MAX() and MIN() With Strings
-- The MAX() and MIN() functions also work with texts.
--select the minimum value of first_name from Customers
SELECT MIN(first_name) AS min_first_name
FROM Customers;

-- MAX() and MIN() in Nested SELECT
-- As we know, the MAX() function returns the maximum value. Similarly, the MIN() function returns the minimum value.
-- However, if we want to select the whole row containing that value, we can use the nested SELECT statement like this.
-- MIN() function in a nested SELECT statement
SELECT *
FROM Customers
WHERE age = (
    SELECT MIN(age)
    FROM Customers
);