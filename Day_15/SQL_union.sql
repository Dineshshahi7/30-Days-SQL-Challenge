-- SQL UNION
-- In SQL, the UNION operator selects fields from two or more tables.
-- select the union of name columns from two tables Teachers and Students 
SELECT name
FROM Teachers
UNION
SELECT name
FROM Students;

-- select the union of age columns from two tables Teachers and Students 
SELECT age
FROM Teachers
UNION
SELECT age
FROM Students;

-- SQL UNION With WHERE Clause
-- select the union of age columns from both Teachers and Students tables where age >= 20
SELECT age, name FROM Teachers
WHERE age >= 20
UNION
SELECT age, name FROM Students
WHERE age >= 20;

-- SQL UNION ALL Operator
-- The UNION ALL operator selects fields from two or more tables similar to UNION. However, unlike UNION, UNION ALL doesn't ignore duplicate fields.
-- Let's try the previous SQL command again using UNION ALL instead of UNION.
-- select the union of age from Teachers and Students tables
 SELECT age
FROM Teachers
UNION ALL
SELECT age
FROM Students;

-- SQL UNION ALL With WHERE Clause
-- select the union of age columns from both Teachers and Students tables where age >= 20
SELECT age, name FROM Teachers
WHERE age >= 20
UNION ALL
SELECT age, name FROM Students
WHERE age >= 20;