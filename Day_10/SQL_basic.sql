-- select first_name from Customers table 
SELECT first_name
FROM Customers;

-- select first_name and last_name columns from Customers table 
SELECT first_name, last_name
FROM Customers;

-- select all columns from Customers table 
SELECT *
FROM Customers;

-- select all columns from the customers table with last_name 'Doe' 
SELECT *
FROM Customers
WHERE last_name = 'Doe';

-- select age and country columns from customers table where the country is 'USA' 
SELECT age, country
FROM Customers
WHERE country = 'USA';

-- select all columns from Customers table with first name 'John'
SELECT *
FROM Customers
WHERE first_name = 'John';

-- select all columns from Customers table with age greater than 25
SELECT *
FROM Customers
WHERE age > 25;

-- select all columns from Customers table with last_name 'Doe' and country 'USA'
SELECT *
FROM Customers
WHERE last_name = 'Doe' AND country = 'USA';