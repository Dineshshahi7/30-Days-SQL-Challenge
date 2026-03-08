-- SQL IS NULL and IS NOT NULL
-- In SQL, IS NULL and IS NOT NULL are used to check if a column in a table contains a NULL value or not.
-- IS NULL Syntax
-- In SQL, the IS NULL condition is used to select rows if the specified field is NULL.
SELECT column1, column2, ...
FROM table
WHERE column_name IS NULL;

-- select rows with NULL email values
SELECT *
FROM Employee
WHERE email IS NULL;

-- IS NOT NULL
-- In SQL, the IS NOT NULL condition is used to select rows if the specified field is NOT NULL.
SELECT column1, column2, ...
FROM table
WHERE column_name IS NOT NULL;

-- select rows where email is not NULL
SELECT *
FROM Employee
WHERE email IS NOT NULL;

-- IS NULL With COUNT()
-- We can use the COUNT() function with IS NULL to count the number of rows with an empty field. For example,
SELECT COUNT(*)
FROM Employee
WHERE email IS NULL;