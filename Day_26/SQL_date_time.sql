-- SQL Date and Time
-- In SQL, there are different data types to help us work with dates and times.

-- create a table with different date and time fields
CREATE TABLE Users (
  id INT,
  full_name VARCHAR(50),
  date_of_birth DATE,
  last_login DATETIME,
  registered_at TIMESTAMP
);

-- insert values into the Users table.
INSERT INTO Users
VALUES
(1, 'Harry Potter', '1999-04-14', '2022-04-22 10:34:53.44', '2020-03-15 07:31:42.23');


-- Date and Time Data Types in SQL
-- Working with date and time can be tricky because the date formats may vary for different reasons. For example, the United States follows the date format of mm-dd-yyyy whereas the United Kingdom follows the date format of dd-mm-yyyy.
-- Moreover, different database systems use different data types to store date and time. Here's a quick overview of how date and time are stored by different database systems.

-- Query Records Using Dates
-- We can also run queries to retrieve records filtering by dates.

-- get the records of those teams
-- who registered on October 11, 2020
SELECT *
FROM Teams
WHERE registered = "2020-10-11";

-- get the records of those teams
-- who registered after October 12, 2020
SELECT *
FROM Teams
WHERE registered > "2022-10-12";


-- Commonly Used Date Functions
-- GETDATE()
-- This function is used to get the current date and time. For example,
SELECT GETDATE();

-- CURRENT_TIMESTAMP
-- This function is used to get the current timestamp in the system. For example,
SELECT CURRENT_TIMESTAMP;