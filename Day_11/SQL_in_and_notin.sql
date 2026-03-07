-- We use the IN operator with the WHERE clause to match values in a list.
-- select customers from the USA
SELECT first_name, country
FROM Customers
WHERE country IN ('USA');

-- select rows if the country is either USA or UK
SELECT first_name, country
FROM Customers
WHERE country IN ('USA', 'UK');

-- IN Operator to Select Rows Based on Country Value
-- The IN operator can be used to choose rows where a specific value is present in the specified field.\
-- select rows with value 'USA' in the country column
SELECT first_name, country
FROM Customers
WHERE 'USA' IN (country);

-- SQL NOT IN Operator
-- The NOT IN operator excludes the rows that match values in the list. It returns all the rows except the excluded rows.
-- select rows where country is not in UK or UAE
SELECT first_name, country
FROM Customers
WHERE country NOT IN ('UK', 'UAE');