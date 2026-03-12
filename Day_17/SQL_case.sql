-- SQL CASE
-- The SQL CASE statement evaluates a list of conditions and adds a column with values based on the condition.
--  add a new column 'order_volume' in the Orders table 
-- and flag any order greater than 10000 as 'Large Order'
-- and smaller than 10000 as 'Small Order'
SELECT *,
CASE
  WHEN amount >= 10000 THEN 'Large Order'
  WHEN amount < 10000 THEN 'Small Order'
END AS 'order_volume'
FROM Orders;

-- add a new column 'can_vote' to Customers table
-- insert 'Allowed' into it if customer is older than 17 
SELECT customer_id, first_name,
CASE
  WHEN age >= 18 THEN 'Allowed'
END AS can_vote
FROM Customers;

-- SQL CASE to Calculate the Discount Amount
-- Let's take a look at another example where we want to provide a 10% discount on each order for a Christmas sale if the amount is 400 or more.
SELECT order_id, customer_id,
CASE
    WHEN amount >= 400 THEN (amount - amount * 10/100)
END AS offer_price
FROM Orders;

-- CASE With Multiple Conditions
-- It is also possible to stack multiple conditions inside a single CASE clause.
-- Syntax
SELECT column1, column2, ...
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        -- Add more WHEN conditions and results as needed
    END AS alias_name
FROM table_name;

-- multiple CASE conditions in SQL
SELECT customer_id, first_name,
CASE
    WHEN country = 'USA' THEN 'United States of America'
    WHEN country = 'UK' THEN 'United Kingdom'
END AS country_name
FROM Customers;


-- CASE With ELSE
-- A CASE statement can have an optional ELSE clause. The ELSE clause is executed if none of the conditions in the CASE statement is matched.
-- Syntax
SELECT customer_id, first_name,
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        -- Add more WHEN conditions and results as needed
        ELSE else_result
    END AS alias_name
FROM table_name;

-- CASE condition with ELSE clause in SQL 
SELECT customer_id, first_name,
CASE
    WHEN country = 'USA' THEN 'United States of America'
    WHEN country = 'UK' THEN 'United Kingdom'
    ELSE 'Unknown Country'
END AS country_name
FROM Customers;