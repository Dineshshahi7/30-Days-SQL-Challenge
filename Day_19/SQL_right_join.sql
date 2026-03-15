-- SQL RIGHT JOIN
-- The SQL RIGHT JOIN statement joins two tables based on a common column. It selects records that have matching values in these columns and the remaining rows from the right table.

-- join Customers and Orders tables
-- based on their shared customer_id columns
-- Customers is the left table
-- Orders is the right table
SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;


-- join Customers and Orders tables
-- based on customer_id of Customers and customer of Orders
-- Customers is the left table
-- Orders is the right table
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer;


-- left join Orders and Customers tables
-- Orders is the left table
-- Customers is the right table
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Orders
LEFT JOIN Customers
ON Orders.customer = Customers.customer_id;


SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer
WHERE Orders.amount >= 500;

-- use alias C for Categories table
-- use alias P for Products table
SELECT C.category_name, P.product_title
FROM Categories AS C
RIGHT JOIN Products AS P
ON C.cat_id = P.cat_id;