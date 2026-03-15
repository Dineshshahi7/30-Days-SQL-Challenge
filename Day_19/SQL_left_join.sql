-- SQL LEFT JOIN
-- The SQL LEFT JOIN combines two tables based on a common column. It then selects records having matching values in these columns and the remaining rows from the left table.

-- left join Customers and Orders tables based on their shared customer_id columns
-- Customers is the left table
-- Orders is the right table
SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;


-- left join the Customers and Orders tables
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer;