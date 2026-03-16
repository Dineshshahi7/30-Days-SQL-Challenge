-- SQL NOT NULL Constraint
-- In SQL, the NOT NULL constraint in a column means that the column cannot store NULL values.

-- create table with NOT NULL constraint
CREATE TABLE Colleges (
  college_id INT NOT NULL,
  college_code VARCHAR(20),
  college_name VARCHAR(50)
);

-- Remove NOT NULL Constraint
-- We can also remove the NOT NULL constraint if that is no longer needed. For example,

-- SQL Server
ALTER TABLE Colleges
ALTER COLUMN college_id INT;

-- Oracle
ALTER TABLE Colleges
MODIFY (college_id NULL);

-- MySQL
ALTER TABLE Colleges
MODIFY college_id INT;

-- PostgreSQL
ALTER TABLE Colleges
ALTER COLUMN college_id DROP NOT NULL;

-- NOT NULL Constraint With Alter Table
-- We can also add the NOT NULL constraint to a column in an existing table using the ALTER TABLE command. For example,

-- SQL Server
ALTER TABLE Colleges
ALTER COLUMN college_id INT NOT NULL;

-- Oracle
ALTER TABLE Colleges
MODIFY college_id INT NOT NULL;

-- MySQL
ALTER TABLE Colleges
MODIFY COLUMN college_id INT NOT NULL;

-- PostgreSQL
ALTER TABLE Colleges
ALTER COLUMN college_id SET NOT NULL;


-- Error Due to NOT NULL Constraint
-- We must enter a value into columns with the NOT NULL constraint. Otherwise, SQL will give us an error.
-- For example, the college_id column of our Colleges table has the NOT NULL constraint. So, we will get an error if we enter records into the table without supplying a value to college_id.

-- gives error due to NOT NULL constraint
INSERT INTO Colleges (college_code, college_name)
VALUES ('NYC', "US");