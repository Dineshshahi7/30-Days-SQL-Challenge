-- SQL UPDATE
-- In SQL, the UPDATE statement is used to modify existing records in a database table.

--update a single value in the given row
UPDATE Customers
SET age = 21
WHERE customer_id = 1;


-- Update a Single Value in a Row
-- In SQL, we can update a single value by using the UPDATE command with a WHERE clause. For example,
-- update a single value in the given row
UPDATE Customers
SET first_name = 'Johnny'
WHERE customer_id = 1;


-- Update Multiple Values in a Row
-- We can also update multiple values in a single row at once. For example,

-- update multiple values in the given row
UPDATE Customers
SET first_name = 'Johnny', last_name = 'Depp'
WHERE customer_id = 1;


-- Update Multiple Rows
-- We use the UPDATE statement to update multiple rows at once. For example,

-- update multiple rows satisfying the condition
UPDATE Customers
SET country = 'NP'
WHERE age = 22;

-- Update all Rows
-- We can update all the rows in a table at once by omitting the WHERE clause. For example,
-- update all rows
UPDATE Customers
SET country = 'NP';