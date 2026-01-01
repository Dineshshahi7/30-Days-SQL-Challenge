-- Retrive each customers name, country and score 

 SELECT * FROM customers

-- Retrive customers with a socre not equal to 0
 SELECT * FROM customers
 WHERE score != 0

-- Retrive customers from Germany
SELECT * FROM customers
WHERE country = 'Germany'

-- Retrive all customers and sort the results by highest socre first
SELECT * FROM customers
ORDER BY score DESC

-- Retrive all customers and sort the results by lowest socre first
SELECT * FROM customers
ORDER BY score ASC

-- Retrive all customers and sort the results by country and then by highest socre
SELECT * FROM customers
ORDER BY country ASC, score DESC

-- Find the total score for each country
SELECT country, 
SUM(score) AS total_score 
FROM customers
GROUP BY country

-- Find the total socre and total number of customers for each country
SELECT country, 
SUM(score) AS total_score,
COUNT(id) AS total_customers
FROM customers
GROUP BY country

/* Find the average score for each country 
considering only customers with a score not equal to 0
and return only those cuntries with an average score greater than 430 */
SELECT
country,
AVG(score) AS avg_score
FROM customers
WHERE score !=0 
GROUP BY country
HAVING AVG(score) > 430

-- Retrive only 3 customers
SELECT TOP 3 * FROM customers

-- Retrive top 3 customers with the highest score 
SELECT 
TOP 3 * FROM customers
ORDER BY score DESC

-- Retrive the lowest 2 customers based on the socre
SELECT 
TOP 2 * FROM customers
ORDER BY score ASC