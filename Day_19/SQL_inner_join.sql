-- SQL INNER JOIN
-- The SQL INNER JOIN statement joins two tables based on a common column and selects rows that have matching values in these columns.
-- join Customers and Orders tables with their matching fields customer_id
SELECT Customers.customer_id, Orders.item
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;


-- join the Customers and Orders tables
-- with customer_id and customer fields
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer;

-- Join Two Tables With a Matching Field
-- join Categories and Products tables 
-- with their matching fields cat_id
SELECT Categories.cat_name, Products.prod_title
FROM Categories
INNER JOIN Products
ON Categories.cat_id = Products.cat_id;