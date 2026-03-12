-- SQL EXISTS Operator
-- The SQL EXISTS operator tests the existence of any value in a subquery i.e. it executes the outer SQL query only if the subquery is not NULL (empty result-set).

-- select customer id and first name of customers
-- whose order amount is less than 12000
SELECT customer_id, first_name
FROM Customers
WHERE EXISTS (
  SELECT order_id
  FROM Orders
  WHERE Orders.customer_id = Customers.customer_id AND amount < 12000
);

-- select customer id and first name of customers from Customers table
-- if the customer id exists in the Orders table
SELECT customer_id, first_name
FROM Customers
WHERE EXISTS (
  SELECT order_id
  FROM Orders
  WHERE Orders.customer_id = Customers.customer_id
);

-- SQL NOT EXISTS
-- We can also use the NOT operator to inverse the working of the EXISTS clause. The SQL command executes if the subquery returns an empty result-set.

-- select customer id and first name from Customers table
-- if the customer id doesn't exist in the Orders table
SELECT customer_id, first_name
FROM Customers
WHERE NOT EXISTS (
  SELECT order_id
  FROM Orders
  WHERE Orders.customer_id = Customers.customer_id
);