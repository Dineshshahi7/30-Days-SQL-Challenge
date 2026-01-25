use SalesDB
GO

-- Find the average scores of the customers before handling NULL value
SELECT CustomerID, 
Score,
AVG(score) OVER() AvgScores_with_NULL_value
FROM Sales.Customers

-- Find the average scores of the customers after handling NULL value
SELECT CustomerID, 
Score,
AVG(COALESCE(score, 0)) OVER() AvgScores_replace_NULL_with_0
FROM Sales.Customers

/* Display the full name of the customers in a single field by merging thier first and last names
and add 10 bonus points to each customer's score */
SELECT CustomerID,
FirstName,
LastName,
FirstName + ' ' + COALESCE(LastName, '') AS FullName,
Score,
COALESCE(Score, 0) + 10 AS ScoreWithBonus
FROM Sales.Customers