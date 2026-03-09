-- SQL SUM() Function
-- The SQL SUM() function is used to calculate the cumulative sum of numeric values in a column. It has the following syntax:
SELECT SUM(column_name)
FROM table;

--select the sum of amount from Orders table
SELECT SUM(amount) AS total_sales
FROM Orders;

--select the sum of the amount of id 4 from orders
SELECT SUM(amount) AS total_of_cus4
FROM Orders
WHERE customer_id = 4;


-- SQL AVG() Function
-- The SQL AVG() function is used to calculate the average of numeric values in a column. It has the following syntax:
SELECT AVG(column_name)
FROM table;

-- get average age of customers
SELECT AVG(age) AS average_age
FROM Customers;

--selects the average amount spent by each customer from the Orders table
SELECT customer_id, AVG(amount) AS average_spends
FROM Orders
GROUP BY customer_id;