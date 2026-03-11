-- SQL Views
-- In SQL, views contain rows and columns similar to a table, however, views don't hold the actual data.
-- You can think of a view as a virtual table environment that's created from one or more tables so that it's easier to work with data.

-- Creating a View in SQL
-- We can create views in SQL by using the CREATE VIEW command. 
CREATE VIEW us_customers AS
SELECT customer_id, first_name
FROM Customers
WHERE Country = 'USA';

-- Here, a view named us_customers is created from the customers table.
-- Now to select the customers who lives in USA, we can simply run,
SELECT *
FROM us_customers;

-- Updating a View
-- It's possible to change or update an existing view using the CREATE OR REPLACE VIEW command
CREATE OR REPLACE VIEW us_customers AS
SELECT *
FROM Customers
WHERE Country = 'USA';

-- Deleting a View
-- We can delete views using the DROP VIEW command. 
DROP VIEW us_customers;

-- Views for Complex Queries
-- Suppose A and B are two tables and we wan't to select data from both of the tables. For that, we have to use SQL JOINS.
-- However using the JOIN each time could be a tedious task. For that, we can create a view to fetch records easily.
CREATE VIEW order_details AS
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- Now, to select the data, we can run
SELECT *
FROM order_details;