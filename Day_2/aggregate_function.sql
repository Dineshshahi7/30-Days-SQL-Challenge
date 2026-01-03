-- Aggregate Functions
-- Find the highest customer score
SELECT MAX(score) AS highest_score
FROM customers;

-- Find the average customer score
SELECT AVG(score) AS average_score
FROM customers;


-- Group By Clause
/* Find total number of customers
in each country */
SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country;


-- Order By Clause
-- Retrieve all customers ordered by score in descending order
SELECT * FROM customers
ORDER BY score DESC;


-- Limit Clause
-- Retrieve top 5 customers with highest scores
SELECT * FROM customers
ORDER BY score DESC
LIMIT 5;