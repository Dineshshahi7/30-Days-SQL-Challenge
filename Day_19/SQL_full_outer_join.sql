-- SQL FULL OUTER JOIN
-- The SQL FULL OUTER JOIN statement joins two tables based on a common column. It selects records that have matching values in these columns and the remaining rows from both of the tables.

-- full join Customers and Orders tables
-- based on their shared customer_id columns
-- Customers is the left table
-- Orders is the right table
SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer_id;


SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer;

SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer
WHERE Orders.amount >= 500;


-- use alias C for Categories table
-- use alias P for Products table
SELECT C.category_name, P.product_title
FROM Categories AS C
FULL OUTER JOIN Products AS P
ON C.category_id = P.cat_id;