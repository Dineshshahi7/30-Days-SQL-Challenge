use MyDatabase
go

-- CONCAT(): Show the list of customers first names together with their country in one column
SELECT first_name,
country,
CONCAT(first_name, ' ', country) AS name_as_country
FROM customers 

-- LOWER(): Transform the customers first name to lowercase
SELECT first_name,
country,
LOWER(first_name) AS lower_name
FROM customers 

-- UPPER(): Transform the customers first name to lowercase
SELECT first_name,
country,
UPPER(first_name) AS upper_name
FROM customers 

-- TRIM(): The SQL TRIM function removes unwanted leading and trailing characters (by default, spaces) from a string.
-- Find customers whose first name contains leading or trailing spaces
SELECT first_name
FROM customers
WHERE first_name != TRIM(first_name)

-- LTRIM(): Remove leading spaces
SELECT first_name,
LTRIM(first_name) AS left_trimmed
FROM customers

-- RTRIM(): Remove trailing spaces
SELECT first_name,
RTRIM(first_name) AS right_trimmed
FROM customers

-- or 
SELECT first_name,
LEN(first_name) AS len_name_before_trim,
LEN(TRIM(first_name)) AS len_name_after_trim
FROM customers

-- or 
SELECT first_name,
LEN(first_name) AS len_name_before_trim,
LEN(TRIM(first_name)) AS len_name_after_trim,
LEN(first_name) - LEN(TRIM(first_name)) AS flag
FROM customers

-- REPLACE(): 
-- Replace File extence from txt to csv
SELECT
'report.txt' AS old_filename,
REPLACE('report.txt', '.txt', '.csv') AS new_filename

-- SUBSTRING(): Extract part of a string
-- Extract first 3 characters from customer first name
SELECT first_name,
SUBSTRING(first_name, 1, 3) AS short_name
FROM customers

-- LEFT(): Extract the sqecific number of characters from the start
-- Get first 4 letters of first name
SELECT first_name,
LEFT(first_name, 4) AS left_part
FROM customers

-- RIGHT(): Extract the sqecific number of characters from the end
-- Get last 3 letters of first name
SELECT first_name,
RIGHT(first_name, 3) AS right_part
FROM customers

-- LEN(): Find length of a string
-- Find length of customer first name
SELECT first_name,
LEN(first_name) AS name_length
FROM customers

-- REVERSE(): Reverse a string
-- Reverse customer first name
SELECT first_name,
REVERSE(first_name) AS reversed_name
FROM customers

-- FORMAT(): Format string output
-- Format customer ID with prefix
SELECT id,
CONCAT('CUST-', id) AS formatted_id
FROM customers


-- TRANSLATE(): Replace multiple characters
-- Replace vowels with *
SELECT first_name,
TRANSLATE(first_name, 'aeiou', '*****') AS masked_name
FROM customers

-- STRING_SPLIT(): Split string into rows
-- Split full name by space
SELECT value AS name_part
FROM STRING_SPLIT('Dinesh Shahi', ' ')


-- SPACE(): Generate spaces
-- Add spacing between words
SELECT CONCAT(first_name, SPACE(5), country) AS spaced_text
FROM customers


-- String Manipulation function: CONCAT, UPPER, LOWER, TRIM, REPLACE
-- String calculation funciton: LEN
-- String Extraction funciton : LEFT, RIGHT, SUBSTRING 