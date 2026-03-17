-- Comparison Operators
-- We can compare two values using comparison operators in SQL. These operators return either 1 (means true) or 0 (means false).

-- Operator	Description
-- =	Equal to
-- <	Less than
-- >	Greater than
-- <=	Less than or equal to
-- >=	Greater than or equal to
-- <>, !=	Not equal to

-- Equal to Operator
-- returns records where customer_id is only 4
SELECT order_id, item, amount
FROM Orders
WHERE customer_id = 4;

-- Less Than Operator
-- returns records where amount is less than 400 (exclusive)
SELECT order_id, item, amount
FROM Orders
WHERE amount < 400;

-- Greater Than Operator
-- returns records where amount is greater than 400 (exclusive)
SELECT order_id, item, amount
FROM Orders
WHERE amount > 400;

-- Less Than or Equal to Operator
-- returns records where amount is less than or equal to 400
SELECT order_id, item, amount
FROM Orders
WHERE amount <= 400;

-- Greater Than or Equal to Operator
-- returns records where amount is greater than or equal to 400
SELECT order_id, item, amount
FROM Orders
WHERE amount >= 400;

-- Not Equal to Operator
-- returns records where amount is not equal to 400
SELECT order_id, item, amount
FROM Orders
WHERE amount != 400;