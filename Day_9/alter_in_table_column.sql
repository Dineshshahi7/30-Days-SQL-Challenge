-- In SQL, the ALTER TABLE command is used to modify the structure of an existing table like adding, deleting, renaming columns, etc.
-- add phone column to Customers table
ALTER TABLE Customers
ADD phone varchar(10);

/* ALTER TABLE Operations
We can perform the following operations on a table using the ALTER TABLE command:

Add a column
Rename a column
Modify a column
Delete a column
Rename a table
*/

-- Add Column in a Table
-- add phone column to Customers table
ALTER TABLE Customers
ADD phone varchar(10);

-- Add Multiple Columns in a Table
-- add phone and age columns to Customers table
ALTER TABLE Customers
ADD phone varchar(10), age int;


-- Rename Column in a Table
-- rename column customer_id to c_id
ALTER TABLE Customers
RENAME COLUMN customer_id TO c_id;


-- Modify the Data Type of a Column
-- SQL Server
ALTER TABLE Customers
ALTER COLUMN age VARCHAR(2);

-- MySQL 
ALTER TABLE Customers
MODIFY COLUMN age VARCHAR(2);

-- Oracle
ALTER TABLE Customers
MODIFY age VARCHAR(2);

-- PostgreSQL
ALTER TABLE Customers
ALTER COLUMN age TYPE VARCHAR(2);


-- Drop Column in a Table
-- delete country column from Customers table
ALTER TABLE Customers
DROP COLUMN country;


-- Rename a Table
-- rename Customers table to New_customers
ALTER TABLE Customers
RENAME TO New_customers;