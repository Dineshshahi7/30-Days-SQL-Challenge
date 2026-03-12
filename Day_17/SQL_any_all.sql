-- SQL ANY Operator
-- SQL ANY compares a value of the first table with all values of the second table and returns the row if there is a match with any value.
-- It has the following syntax:
SELECT column
FROM  table1
WHERE column OPERATOR ANY (
  SELECT column
  FROM table2
);

-- SQL ANY Operator
-- Suppose we want to find teachers whose age is similar to any of the student's age. Then, we can use the following query:
SELECT *
FROM Teachers
WHERE age = ANY (
  SELECT age
  FROM Students
);

-- SQL ANY With the < Operator
-- We can use any comparison operators like =, >, <, etc., with the ANY and ALL keywords.
-- Let's look at an example where we want teachers whose age is less than any student.
SELECT * 
FROM Teachers
WHERE age < ANY (
  SELECT age
  FROM Students
);

-- SQL ALL Operator
-- SQL ALL compares a value of the first table with all values of the second table and returns the row if there is a match with all values.
-- It has the following syntax:
SELECT column
FROM  table1
WHERE  column OPERATOR ALL (
  SELECT column
  FROM table2
);

-- SQL ALL Operator
-- For example, if we want to find teachers whose age is greater than all students, we can use
SELECT * 
FROM Teachers
WHERE age >  ALL (
  SELECT age
  FROM Students
);