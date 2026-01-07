use SalesDB
GO
-- The following code follow RULE 2
SELECT FirstName,
LastName
FROM Sales.Customers

UNION

SELECT FirstName,
LastName
FROM Sales.Employees

-- The following code voilet the RULE 2
SELECT CustomerID,
FirstName,
LastName
FROM Sales.Customers

UNION

SELECT FirstName,
LastName
FROM Sales.Employees

-- The following code follow RULE 3
SELECT CustomerID, -- CustomerID is int Data type
LastName  -- LastName is varchar data type
FROM Sales.Customers

UNION

SELECT EmployeeID, -- EmployeeID is int Data type
LastName   -- LastName is varchar data type
FROM Sales.Employees

-- The following code voilet the RULE 3
SELECT CustomerID, -- CustomerID is int Data type
LastName  -- LastName is varchar data type
FROM Sales.Customers

UNION

SELECT FirstName, -- FirstName is varchar Data type
LastName   -- LastName is varchar data type
FROM Sales.Employees

-- The following code follow RULE 4
SELECT CustomerID, -- CustomerID occurs first than LastName
LastName  -- LastName occurs last compare to the CustomerID
FROM Sales.Customers

UNION

SELECT EmployeeID, -- EmployeeID occurs first than LastName
LastName   -- LastName occurs last compare to the CustomerID
FROM Sales.Employees

-- The following code voilet the RULE 4
SELECT LastName,  -- LastName does not occurs first compare to the CustomerID
CustomerID  -- CustomerID doest not occurs last compare to the LastName

FROM Sales.Customers

UNION

SELECT EmployeeID, -- EmployeeID occurs first than LastName
LastName   -- LastName occurs last compare to the CustomerID
FROM Sales.Employees

-- The following code follow RULE 5
SELECT CustomerID, -- CustomerID is the first column of the result set
LastName  -- LastName is the second column of the result set
FROM Sales.Customers

UNION

SELECT EmployeeID, -- EmployeeID column unseen in the result set
LastName   -- LastName column also in the result set
FROM Sales.Employees

-- The following code is good for RULE 5
SELECT CustomerID as Customers_and_Employees_ID, -- First column of the result set is common column for both customers and employee
LastName as Last_Name  -- Second column of the result set is common column for both customers and employee
FROM Sales.Customers

UNION

SELECT EmployeeID, -- EmployeeID column unseen in the result set
LastName   -- LastName column also in the result set
FROM Sales.Employees

-- The following code follow RULE 6
SELECT FirstName,  /* Number of columns, order of columns and data types of columns is same */
LastName				
FROM Sales.Customers

UNION

SELECT FirstName,
LastName       /* Number of columns, order of columns  and data types of columns is same */
FROM Sales.Employees

-- The following code give the result but incorrect (Not run time error but logical error)
SELECT FirstName,  /* Number of columns, order of columns and data types of columns is same */
LastName				
FROM Sales.Customers

UNION

SELECT LastName,
FirstName       /* Number of columns and data types of columns is same but order of columns is not match so result is incorrect */
FROM Sales.Employees