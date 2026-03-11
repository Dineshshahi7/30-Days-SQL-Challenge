-- SQL Subquery
-- In SQL, a SELECT statement may contain another SQL statement, known as a subquery or nested query.
-- use a subquery to select the first name of customer
-- with the highest age
SELECT first_name
FROM Customers
WHERE age= (
    -- subquery
    SELECT MAX(age)
    FROM CUSTOMERS
);

-- Select Customers with Minimum Age Using Subquery
-- select all the rows from the Customers table
-- with the minimum age
SELECT *
FROM Customers
WHERE age = (
  SELECT MIN(age)
  FROM Customers
);
