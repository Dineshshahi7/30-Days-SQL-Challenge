-- SQL SUBSTRING()
-- In SQL, the SUBSTRING() function is used to extract substring from a string.

-- extract the first 3 characters from the first names of each customer
SELECT customer_id, SUBSTRING(first_name, 1, 3) AS first_name_short
FROM Customers;

-- SUBSTRING() With JOIN
-- In SQL, the SUBSTRING() function can also be used in more complex scenarios, such as in conjunction with JOIN operations.

-- extract part of item names in order details
SELECT o.order_id, SUBSTRING(o.item, 1, 5) AS item_short, o.amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.country = 'UK';

-- SUBSTRING() With WHERE Clause in SQL
-- We can use the SUBSTRING() function with the WHERE clause to filter data based on specific string patterns.

-- select customers with 'Jo' at the beginning of their first name
SELECT customer_id, first_name, last_name
FROM Customers
WHERE SUBSTRING(first_name, 1, 2) = 'Jo';