-- SQL Arithmetic Operators
-- Arithmetic operators perform simple arithmetic operations such as addition, subtraction, multiplication etc.

-- Operator	Description
-- +	Addition
-- -	Subtraction
-- *	Multiplication
-- /	Divide
-- %	Modulo (Remainder)

-- Addition Operator
-- returns new column named total_amount which is 
-- 100 added to the amount field
SELECT item, amount, amount+100 AS total_amount
FROM Orders;

-- Subtraction Operator
-- returns new column named offer_price which is 
-- 20 subtracted to the amount field
SELECT item, amount, amount-20 AS offer_price
FROM Orders;

-- Multiplication Operator
-- returns new column named total_amount  which is 
-- 4 multiplied to the amount field
SELECT item, amount, amount*4 AS total_amount
FROM Orders;

-- Division Operator
-- returns new column named half_amount which is 
-- divided by 2 to the amount field
SELECT item, amount, amount/2 AS half_amount
FROM Orders;

-- Modulo (Remainder) Operator
-- returns 1 which is remainder
SELECT 10 % 3 AS result;