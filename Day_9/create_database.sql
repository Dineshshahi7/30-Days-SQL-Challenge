-- The CREATE DATABASE statement is the SQL command used to create databases.
CREATE DATABASE my_db;

-- If a database already exists, SQL will throw an error while creating another database of the same name.
-- In such situations, we can use the CREATE DATABASE IF NOT EXISTS statement to create a database only if there is no existing database with the same name. For example,
CREATE DATABASE IF NOT EXISTS my_db;

-- There could be multiple databases in a database management system. To show the list of databases, we can run the following statement.
SHOW DATABASES;

-- We often have to work with multiple databases. To switch between available databases, we can run the following statement.
USE my_db;
s