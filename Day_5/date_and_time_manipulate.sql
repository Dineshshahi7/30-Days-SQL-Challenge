use SalesDB
GO
-- DAY(): Returns the day from date
SELECT OrderID,
CreationTime, 
DAY(CreationTime) AS Day
FROM Sales.Orders

-- MONTH(): Returns the month from date
SELECT OrderID,
CreationTime, 
MONTH(CreationTime) AS Month
FROM Sales.Orders

-- YEAR(): Returns the year from date
SELECT OrderID,
CreationTime, 
YEAR(CreationTime) AS Year
FROM Sales.Orders

-- DATEPART(): Returns a specific part of a date as a number
SELECT OrderID,
CreationTime, 
DATEPART(year, CreationTime) year_dp,
DATEPART(month, CreationTime) month_dp,
DATEPART(day, CreationTime) day_dp,
DATEPART(hour, CreationTime) hour_dp,
YEAR(CreationTime) AS Year
FROM Sales.Orders

-- DATENAME(): Returns the name of a specific part of a date
SELECT OrderID,
CreationTime, 
DATENAME(month, CreationTime) as Month_dp,
DATEPART(year, CreationTime) year_dp,
DATEPART(month, CreationTime) month_dp,
DATEPART(day, CreationTime) day_dp,
DATEPART(hour, CreationTime) hour_dp,
YEAR(CreationTime) AS Year
FROM Sales.Orders