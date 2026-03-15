-- SQL DELETE and TRUNCATE
-- In SQL, the DELETE clause is used to delete row(s) from a database table.
DELETE FROM Customers
WHERE customer_id = 4;

-- Delete a Single Row in a Table
-- We can delete a single row in a table using the DELETE command. For example,
DELETE FROM Customers
WHERE customer_id = 4;

-- Delete all Rows in a Table
-- The WHERE clause determines which rows to delete. However, we can delete all rows at once if we omit the WHERE clause. For example,
DELETE FROM Customers;

-- Truncate Table in SQL
-- The TRUNCATE TABLE clause is another way to delete all rows from a table at once. For example,
TRUNCATE TABLE Customers;

-- SQL DELETE vs. TRUNCATE
-- SQL DELELTE	SQL TRUNCATE
-- SQL DELETE supports the WHERE clause.	SQL TRUNCATE doesn't support the WHERE clause.
-- SQL DELETE can remove single, multiple, or all rows/records from a table.	SQL TRUNCATE can only remove all the records from a table.
