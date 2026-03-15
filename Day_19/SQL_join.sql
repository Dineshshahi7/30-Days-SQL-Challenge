-- SQL JOINS
-- The SQL JOIN statement is used to combine rows from two tables based on a common column and selects records that have matching values in these columns.

-- join the Customers and Orders tables
-- based on the common values of their customer_id columns
SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers
JOIN Orders
ON Customers.customer_id = Orders.customer_id;


-- Join Two Table Based on Common Column
-- join Customers and Orders tables based on 
-- customer_id of Customers and customer column of Orders
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
JOIN Orders
ON Customers.customer_id = Orders.customer;

-- JOIN Multiple Tables
-- We can also join more than two tables using JOIN
-- join three tables: Customers, Orders, and Shippings
SELECT Customers.first_name, Orders.item, Shippings.status
FROM Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
JOIN Shippings ON Customers.customer_id = Shippings.customer;