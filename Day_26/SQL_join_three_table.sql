-- SQL JOIN Three Tables
-- In SQL, we can join three tables based on a common field or relation.
SELECT
    Customers.first_name,
    Orders.item,
    Shippings.status
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
LEFT JOIN Shippings ON Orders.customer_id = Shippings.customer

-- Here, the SQL query performs a LEFT JOIN operation on the Customers, Orders, and Shippings tables.
-- It then displays the first_name field from Customers, the item field from Orders, and the status field from Shippings.


-- Join Three Tables
-- The most common types of joins are INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.
-- Let's look at an example using INNER JOIN.
SELECT
    Customers.first_name,
    Customers.last_name,
    Orders.item,
    Shippings.status
FROM
    Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id
INNER JOIN Shippings ON Orders.customer_id = Shippings.customer

-- SQL Join Three Tables With AS Alias
-- We can use AS aliases with table names to make our query short and clean.
SELECT
    c.first_name,
    c.last_name,
    o.item,
    o.amount,
    s.status
FROM
    Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Shippings s ON c.customer_id = s.customer

-- Here, the SQL command joins three tables: Customers, Orders, and Shippings. The Customers table is aliased as c, Orders as o, and Shippings as s.
-- This makes our query short and clean.