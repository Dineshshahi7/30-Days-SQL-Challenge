Use SalesDB
Go


/* Create report showing total sales for each of the folowing categories:
High (sales over 50), Medium (sales 21-50), and Low (sales 20 or less)
Sort the categories from highest sales to lowest */
SELECT Category,
SUM(Sales) AS TotalSales
FROM(
	SELECT OrderID, 
	Sales,
	CASE 
		WHEN Sales > 50 THEN 'High'
		WHEN Sales > 20 THEN 'Medium'
		ELSE 'Low'
	END Category
	FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales DESC

-- Retrive employee details with gender displayed as full text
SELECT EmployeeID,
FirstName,
LastName,
Gender,
CASE
	WHEN Gender = 'F' THEN 'Female'
	WHEN Gender = 'M' THEN 'Male'
	ELSE 'Not Available'
END GenderFullText
FROM Sales.Employees

-- Retrive customers details with abbreviated cuntry code
SELECT CustomerID,
FirstName,
LastName,
Country,
CASE
	WHEN Country = 'Germany' THEN 'DE'
	WHEN Country = 'USA' THEN 'US'
	ELSE 'n/a'
END Countryabbr
FROM Sales.Customers

-- or 
SELECT CustomerID,
FirstName,
LastName,
Country,
CASE Country
	WHEN  'Germany' THEN 'DE'
	WHEN 'USA' THEN 'US'
	ELSE 'n/a'
END Countryabbr
FROM Sales.Customers

-- Handling NULL value (Replace null values with specific values)
-- NULL can lead to inaccurate results, which can lead to wrong decision-making.

/* Find the average scores of customers and treat NULL as 0
Additionally provide details such CustomerID and LastName */
SELECT CustomerID,
LastName,
Score,
CASE
	WHEN Score IS NULL THEN 0
	ELSE Score
END Scorewithoutnull,
AVG(CASE
	WHEN Score IS NULL THEN 0
	ELSE Score
END) OVER() AvgCustomerClean,
AVG(Score) OVER() AvgCustomer
FROM Sales.Customers

-- Count how many customer has made ann order with sales greater than 30
SELECT
CustomerID,
SUM(CASE
		WHEN Sales > 30 THEN 1
		ELSE 0
	END) TotalOrdersHighSales,
	COUNT(*) TotalOrders
FROM Sales.Orders
GROUP BY CustomerID


/* Categorize orders based on discount percentage */
SELECT 
	OrderID,
	Sales,
	Discount,
	CASE
		WHEN Discount >= 0.30 THEN 'High Discount'
		WHEN Discount >= 0.10 THEN 'Medium Discount'
		ELSE 'Low Discount'
	END DiscountCategory
FROM Sales.Orders;

/* Total sales for each discount category */
SELECT 
	DiscountCategory,
	SUM(Sales) AS TotalSales
FROM (
	SELECT 
		Sales,
		CASE
			WHEN Discount >= 0.30 THEN 'High Discount'
			WHEN Discount >= 0.10 THEN 'Medium Discount'
			ELSE 'Low Discount'
		END DiscountCategory
	FROM Sales.Orders
) t
GROUP BY DiscountCategory
ORDER BY TotalSales DESC;

/* Classify employees by their total sales */
SELECT 
	EmployeeID,
	SUM(Sales) TotalSales,
	CASE
		WHEN SUM(Sales) > 500 THEN 'Top Performer'
		WHEN SUM(Sales) > 200 THEN 'Average Performer'
		ELSE 'Low Performer'
	END PerformanceLevel
FROM Sales.Orders
GROUP BY EmployeeID;


/* Handle NULL phone numbers */
SELECT 
	CustomerID,
	FirstName,
	LastName,
	Phone,
	CASE
		WHEN Phone IS NULL THEN 'Not Provided'
		ELSE Phone
	END CleanPhone
FROM Sales.Customers;


/* Categorize customers based on number of orders */
SELECT
	CustomerID,
	COUNT(*) TotalOrders,
	CASE
		WHEN COUNT(*) >= 10 THEN 'Frequent'
		WHEN COUNT(*) >= 5 THEN 'Regular'
		ELSE 'Occasional'
	END CustomerType
FROM Sales.Orders
GROUP BY CustomerID;


/* Compare each order's sales with average sales */
SELECT
	OrderID,
	Sales,
	AVG(Sales) OVER() AvgSales,
	CASE
		WHEN Sales > AVG(Sales) OVER() THEN 'Above Average'
		ELSE 'Below Average'
	END SalesLevel
FROM Sales.Orders;


/* Categorize monthly sales performance */
SELECT
	MONTH(OrderDate) OrderMonth,
	SUM(Sales) MonthlySales,
	CASE
		WHEN SUM(Sales) > 1000 THEN 'Excellent'
		WHEN SUM(Sales) > 500 THEN 'Good'
		ELSE 'Poor'
	END SalesStatus
FROM Sales.Orders
GROUP BY MONTH(OrderDate);


/* Count how many orders exceed average sales */
SELECT
	SUM(
		CASE 
			WHEN Sales > (SELECT AVG(Sales) FROM Sales.Orders) THEN 1
			ELSE 0
		END
	) OrdersAboveAverage
FROM Sales.Orders;

/* Categorize countries by customer count */
SELECT
	Country,
	COUNT(*) TotalCustomers,
	CASE
		WHEN COUNT(*) > 20 THEN 'Strong Market'
		WHEN COUNT(*) > 10 THEN 'Growing Market'
		ELSE 'Small Market'
	END MarketStatus
FROM Sales.Customers
GROUP BY Country;


/* Rank orders and label them */
SELECT
	OrderID,
	Sales,
	RANK() OVER(ORDER BY Sales DESC) SalesRank,
	CASE
		WHEN RANK() OVER(ORDER BY Sales DESC) <= 5 THEN 'Top 5 Orders'
		ELSE 'Others'
	END OrderCategory
FROM Sales.Orders;
