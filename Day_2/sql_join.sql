use MyDatabase
-- No join
/* Retrive all data from customers 
and orders in two different results */
SELECT * FROM customers
SELECT * FROM orders

-- Inner Join or Default Join (If any join not define then there is inner join happens)
/* Get all customers along with their orders,
but only for customers who placed on order */
SELECT 
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id

/* Retrieve all orders placed by customers from Germany */
SELECT 
c.first_name,
c.country,
o.order_id,
o.sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
WHERE c.country = 'Germany';

/* Find total sales made by each customer */
SELECT 
c.id,
c.first_name,
SUM(o.sales) AS total_sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id, c.first_name;


-- Left Join
/* Get all customers along with their orders,
including those without orders */
SELECT 
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

/* Retrieve customers who have NOT placed any orders */
SELECT 
c.id,
c.first_name
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.order_id IS NULL;


-- Right Join
/* Get all customers along with their orders,
including orders without matching customers */
SELECT 
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id

/* Get all customers along with their orders,
including orders without matching customers */
SELECT 
c.id,
c.first_name,
o.order_id,
o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id

/* Retrieve orders that belong to customers with score above 600 */
SELECT 
o.order_id,
o.sales,
c.first_name,
c.score
FROM orders o
RIGHT JOIN customers c
ON o.customer_id = c.id
WHERE c.score > 600;


-- Full Join
/* Get all customers and all orders,
even if there no match */
SELECT 
c.id,
c.first_name,
o.order_id,
o.sales
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id



-- JOIN with BETWEEN
/* Retrieve orders made by customers whose score is between 300 and 700 */
SELECT 
c.first_name,
c.score,
o.order_id,
o.sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
WHERE c.score BETWEEN 300 AND 700;


-- JOIN with ORDER BY
/* Retrieve all orders sorted by sale amount (highest first) */
SELECT 
c.first_name,
o.order_id,
o.sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
ORDER BY o.sales DESC;

-- JOIN with LIMIT
/* Retrieve top 5 highest sales orders with customer names */
SELECT TOP 5
c.first_name,
o.order_id,
o.sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
ORDER BY o.sales DESC;


-- GROUP BY with JOIN
/* Count total orders placed by each customer */
SELECT 
c.first_name,
COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.first_name;

-- HAVING clause with JOIN
/* Retrieve customers whose total sales exceed 1000 */
SELECT 
c.first_name,
SUM(o.sales) AS total_sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.first_name
HAVING SUM(o.sales) > 1000;

-- SUBQUERY with JOIN
/* Retrieve customers who placed at least one order */
SELECT *
FROM customers
WHERE id IN (
    SELECT customer_id
    FROM orders
);


-- EXISTS with JOIN logic
/* Retrieve customers who have any orders */
SELECT *
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.id
);


-- JOIN with date filter
/* Retrieve orders placed after '2024-01-01' */
SELECT 
c.first_name,
o.order_id,
o.order_date,
o.sales
FROM customers c
JOIN orders o
ON c.id = o.customer_id
WHERE o.order_date > '2024-01-01';


-- JOIN with alias calculation
/* Show sale after adding 10% tax */
SELECT 
c.first_name,
o.order_id,
o.sales,
o.sales * 1.10 AS sale_with_tax
FROM customers c
JOIN orders o
ON c.id = o.customer_id;



