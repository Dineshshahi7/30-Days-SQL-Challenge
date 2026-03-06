-- The SQL CREATE TABLE statement is used to create a database table. We use this table to store records (data). For example,
-- create a table named Companies with different columns
CREATE TABLE Companies (
  id int,
  name varchar(50),
  address text,
  email varchar(50),
  phone varchar(10)
);

 -- create a table Students with different columns
CREATE TABLE Students(
  id int,
  name varchar(50),
  address text,
  grades  varchar(50),
  phone varchar(10)
);

-- create a Companies table if it does not exist

CREATE TABLE IF NOT EXISTS Companies (
  id int,
  name varchar(50),
  address text,
  email varchar(50),
  phone varchar(10)
);

-- In SQL, DROP TABLE is used to delete the tables in our database.
-- delete Shippings table
DROP TABLE Shippings;

-- If a table does not exist, dropping it will throw an error. To fix this issue, we can add the optional IF EXISTS command while dropping a table. 
-- delete Orders table if it exists
DROP TABLE IF EXISTS Orders;