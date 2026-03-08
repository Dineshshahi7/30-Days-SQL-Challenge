-- SQL BETWEEN Operator
-- In SQL, the BETWEEN operator with the WHERE clause selects values within a given range.
-- select rows where the amount is between 200 and 600
SELECT * 
FROM Orders
WHERE amount BETWEEN 200 AND 600;

-- SQL NOT BETWEEN Operator
-- The NOT BETWEEN operator is used to exclude the rows that match the values in the range. It returns all the rows except the excluded rows.
-- exclude rows with amount between 300 and 500
SELECT item, amount
FROM Orders
WHERE amount NOT BETWEEN 300 AND 500;

-- SQL BETWEEN Operator with Text
-- The BETWEEN operator also works with text data.
-- select rows where items begin with letters between 'I' and 'L' inclusive
-- this includes all items starting with 'I', 'J', 'K', and any items starting with 'L'
SELECT item, amount
FROM Orders
WHERE item BETWEEN 'I' AND 'L';

-- select rows where items begin with letters between 'I' and 'L'
-- include all items beginning with 'L' followed by other characters
SELECT item, amount
FROM Orders
WHERE item BETWEEN 'I' AND 'L~';

-- SQL BETWEEN Dates
-- In SQL, we can also use BETWEEN to filter data between two dates.
-- get the records of those teams
-- who registered between given dates
SELECT *
FROM Teams
WHERE registered BETWEEN '2021-01-01' AND '2022-11-01';
