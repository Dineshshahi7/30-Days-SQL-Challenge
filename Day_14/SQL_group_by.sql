-- SQL GROUP BY
-- In SQL, we use the GROUP BY clause to group rows based on the value of columns.
-- count the number of orders of each item
SELECT COUNT(order_id), item
FROM Orders
GROUP BY item;

-- GROUP BY Number of Customers in Each Country
-- count the number of customers in each country
SELECT country, COUNT(*) AS number
FROM Customers
GROUP BY country;

-- GROUP BY Amount Spent By Each Customer
-- calculate the total amount spent by each customer
SELECT customer_id, SUM(amount) AS total
FROM Orders
GROUP BY customer_id;

-- SQL GROUP BY Clause With JOIN
-- We can also use the GROUP BY clause with the JOIN clause. 

-- join the Customers and Orders tables
-- select customer_id and first_name from Customers table
-- also select the count of order ids from Orders table
-- group the result by customer_id
SELECT Customers.customer_id, Customers.first_name,
Count(Orders.order_id) AS order_count
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id
GROUP BY Customers.customer_id;