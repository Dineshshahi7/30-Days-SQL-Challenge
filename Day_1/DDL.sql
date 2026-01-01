/* CREATE TABLE
Purpose : Create customers table to store customer details */
CREATE TABLE customer (
    id INT PRIMARY KEY,                -- Unique customer ID
    name VARCHAR(100) NOT NULL,         -- Customer full name
    email VARCHAR(150) UNIQUE,          -- Customer email address
    country VARCHAR(50),                -- Country of customer
    score INT DEFAULT 0,                -- Customer score
    created_at DATE                     -- Account creation date
);

/* ALTER TABLE (ADD COLUMN)
Purpose : Add phone number column to customers table */
ALTER TABLE customers
ADD phone VARCHAR(20);

/* ALTER TABLE (MODIFY COLUMN)
Purpose : Increase length of customer name */
ALTER TABLE customers
MODIFY name VARCHAR(150);

/* ALTER TABLE (RENAME COLUMN)
Purpose : Rename column score to customer_score */
ALTER TABLE customers
RENAME COLUMN score TO customer_score;

/* ALTER TABLE (DROP COLUMN)
Purpose : Remove phone column from customers table */
ALTER TABLE customers
DROP COLUMN phone;

/* RENAME TABLE
Purpose : Rename customers table to customer_details */
RENAME TABLE customers TO customer_details;

/* TRUNCATE TABLE
Purpose : Remove all records from customer_details table */
TRUNCATE TABLE customer_details;

/* DROP TABLE
Purpose : Permanently delete customer_details table */
DROP TABLE customer_details;
