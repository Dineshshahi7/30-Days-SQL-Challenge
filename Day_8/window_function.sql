/* 0. Find the total sales for each product
Additionally provide details such order Id, order date */
SELECT 
	SUM(Sales) OVER()
FROM Sales.Orders

/* =========================================
   TABLE USED : Sales.Orders
   COLUMNS USED:
   OrderID, ProductID, CustomerID, Sales, OrderDate
   ========================================= */


/* 1. Find the total sales for each product
   Additionally provide details such as OrderID and OrderDate */
SELECT
    OrderID,
    OrderDate,
    ProductID,
    Sales,
    SUM(Sales) OVER (PARTITION BY ProductID) AS total_sales_per_product
FROM Sales.Orders;


/* 2. Find the running total of sales ordered by OrderDate */
SELECT
    OrderID,
    OrderDate,
    Sales,
    SUM(Sales) OVER (ORDER BY OrderDate) AS running_total_sales
FROM Sales.Orders;


/* 3. Find the running total of sales for each customer */
SELECT
    CustomerID,
    OrderID,
    OrderDate,
    Sales,
    SUM(Sales) OVER (
        PARTITION BY CustomerID
        ORDER BY OrderDate
    ) AS customer_running_total
FROM Sales.Orders;


/* 4. Rank products based on total sales */
SELECT
    ProductID,
    SUM(Sales) AS total_sales,
    RANK() OVER (ORDER BY SUM(Sales) DESC) AS product_rank
FROM Sales.Orders
GROUP BY ProductID;


/* 5. Assign row number to each order based on OrderDate */
SELECT
    OrderID,
    OrderDate,
    ROW_NUMBER() OVER (ORDER BY OrderDate) AS row_num
FROM Sales.Orders;


/* 6. Find dense rank of customers based on total sales */
SELECT
    CustomerID,
    SUM(Sales) AS total_sales,
    DENSE_RANK() OVER (ORDER BY SUM(Sales) DESC) AS customer_rank
FROM Sales.Orders
GROUP BY CustomerID;


/* 7. Find previous order sales using LAG */
SELECT
    OrderID,
    OrderDate,
    Sales,
    LAG(Sales) OVER (ORDER BY OrderDate) AS previous_sales
FROM Sales.Orders;


/* 8. Find next order sales using LEAD */
SELECT
    OrderID,
    OrderDate,
    Sales,
    LEAD(Sales) OVER (ORDER BY OrderDate) AS next_sales
FROM Sales.Orders;


/* 9. Find difference between current and previous sales */
SELECT
    OrderID,
    OrderDate,
    Sales,
    Sales - LAG(Sales) OVER (ORDER BY OrderDate) AS sales_difference
FROM Sales.Orders;


/* 10. Find average sales per product
    Additionally show OrderID and OrderDate */
SELECT
    OrderID,
    OrderDate,
    ProductID,
    Sales,
    AVG(Sales) OVER (PARTITION BY ProductID) AS avg_sales_per_product
FROM Sales.Orders;


/* 11. Find maximum sale value per customer */
SELECT
    OrderID,
    CustomerID,
    Sales,
    MAX(Sales) OVER (PARTITION BY CustomerID) AS max_customer_sales
FROM Sales.Orders;


/* 12. Find minimum sale value per product */
SELECT
    OrderID,
    ProductID,
    Sales,
    MIN(Sales) OVER (PARTITION BY ProductID) AS min_product_sales
FROM Sales.Orders;


/* 13. Find 3-row moving average of sales based on OrderDate */
SELECT
    OrderDate,
    Sales,
    AVG(Sales) OVER (
        ORDER BY OrderDate
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg_3
FROM Sales.Orders;


/* 14. Find cumulative sales for each product */
SELECT
    ProductID,
    OrderDate,
    Sales,
    SUM(Sales) OVER (
        PARTITION BY ProductID
        ORDER BY OrderDate
    ) AS cumulative_product_sales
FROM Sales.Orders;


/* 15. Find highest sales order for each product */
SELECT *
FROM (
    SELECT
        Order

