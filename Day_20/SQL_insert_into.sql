-- SQL INSERT INTO
-- In SQL, we use the INSERT INTO statement to insert new row(s) into a database table.
-- insert a row in the Customers table
INSERT INTO Customers(customer_id, first_name, last_name, age, country)
VALUES
(7, 'Ron', 'Weasley', 31, 'UK');

-- insert a row in the Customers table
INSERT INTO Customers(customer_id, first_name, last_name, age, country)
VALUES
(5, 'Harry', 'Potter', 31, 'USA');

-- It is also possible to insert values in a row without specifying columns. For example,
INSERT INTO Customers
VALUES
(5,'Harry', 'Potter', 31, 'USA');

-- Insert Multiple Rows at Once in SQL
-- It's also possible to insert multiple rows into a database table at once. For example,
INSERT INTO Customers(first_name, last_name, age, country)
VALUES
('Harry', 'Potter', 31, 'USA'),
('Chris', 'Hemsworth', 43, 'USA'),
('Tom', 'Holland', 26, 'UK');