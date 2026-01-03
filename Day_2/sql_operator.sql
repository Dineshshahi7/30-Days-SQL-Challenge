-- Comprasion Operator
-- Retrive all customers from Germany
SELECT * FROM customers
WHERE country = 'Germany'

-- Retrive all customers who are not from Germany
SELECT * FROM customers
WHERE country <> 'Germany'  -- !=

-- Retrieve all customers whose score is exactly 700
SELECT * FROM customers
WHERE score = 700

-- Retrive all customers with a score greater than 500
SELECT * FROM customers
WHERE score > 500

-- Retrive all customers with a score of 500 or less
SELECT * FROM customers
WHERE score <= 500


-- Logical Operator
/* Retrive all customers who are from USA
and have a score greater than 500 */
SELECT * FROM customers
WHERE country = 'USA' AND score > 500

/* Retrieve all customers who are from Germany
and have a score less than 400 */
SELECT * FROM customers
WHERE country = 'Germany' AND score < 400

/* Retrieve all customers who are from Germany
or from France */
SELECT * FROM customers
WHERE country = 'Germany' OR country = 'France';

/* Retrive all customers who are either from USA
or have a score greater than 500 */
SELECT * FROM customers
WHERE country = 'USA' OR score > 500

-- Retrive all customers with a score not less than 500
SELECT * FROM customers 
WHERE NOT score < 500 

-- Retrieve all customers who are not from USA
SELECT * FROM customers
WHERE NOT country = 'USA';


-- Range Operator
/* Retrive all customers whose score
falls in range between 100 and 500 */
SELECT * FROM customers 
WHERE score BETWEEN 100 AND 500

-- or
SELECT * FROM customers 
WHERE score >= 100 AND score <= 500

/* Retrieve all customers whose score
is outside the range 200 to 600 */
SELECT * FROM customers
WHERE score NOT BETWEEN 200 AND 600;


-- Membership Operator
/* Retrive all customers from
either Germany or USA */
SELECT * FROM customers 
WHERE country = 'Germany' OR country = 'USA' -- Normally

-- or
SELECT * FROM customers 
WHERE country IN ('Germany', 'USA') -- using membership operator

/* Retrieve all customers whose country
is not Germany, USA, or France */
SELECT * FROM customers
WHERE country NOT IN ('Germany', 'USA', 'France');

-- Retrieve all customers whose score is NULL
SELECT * FROM customers
WHERE score IS NULL;

-- Retrieve all customers whose score is NOT NULL
SELECT * FROM customers
WHERE score IS NOT NULL;


-- Search Operator
-- Find all customers whose first name starts with 'M'
SELECT * FROM customers
WHERE first_name LIKE 'M%'

-- Find all customers whose first name ends with 'n'
SELECT * FROM customers
WHERE first_name LIKE '%n'

-- Find all customers whose first name contains 'r'
SELECT * FROM customers
WHERE first_name LIKE '%r%'

/* Find all customers whose first name
has 'r' in the third position */
SELECT * FROM customers
WHERE first_name LIKE '__r%'

-- Retrieve all customers whose first name starts with 'A'
SELECT * FROM customers
WHERE first_name LIKE 'A%'

-- Retrieve all customers whose first name has exactly 5 characters
SELECT * FROM customers
WHERE first_name LIKE '_____'

/* Retrieve all customers whose first name starts with any letter
 and ends with 'a' */
SELECT * FROM customers
WHERE first_name LIKE '%a'