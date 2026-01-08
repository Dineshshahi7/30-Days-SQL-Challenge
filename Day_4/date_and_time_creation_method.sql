use SalesDB
GO

-- Hardcoded constant string value
SELECT OrderID,
CreationTime,
'2025-08-20' HardCoded
FROM Sales.Orders

-- GETDATE(): Return the current date and time at the moment when the query is executed
SELECT OrderID,
CreationTime,
GETDATE() Today
FROM Sales.Orders

-- 1️⃣ Hardcoded constant string value
SELECT OrderID,
CreationTime,
'2025-08-20' AS HardCodedDate
FROM Sales.Orders


-- 2️⃣ GETDATE(): Returns current system date and time
SELECT OrderID,
CreationTime,
GETDATE() AS CurrentDateTime
FROM Sales.Orders


-- 3️⃣ CURRENT_TIMESTAMP: ANSI SQL standard for current date & time
SELECT OrderID,
CreationTime,
CURRENT_TIMESTAMP AS CurrentTimestamp
FROM Sales.Orders


-- 4️⃣ SYSDATETIME(): Returns current date & time with higher precision
SELECT OrderID,
CreationTime,
SYSDATETIME() AS HighPrecisionDateTime
FROM Sales.Orders


-- 5️⃣ CAST(): Convert string to DATE or DATETIME
SELECT OrderID,
CAST('2025-08-20' AS DATE) AS CastDate,
CAST('2025-08-20 10:30:00' AS DATETIME) AS CastDateTime
FROM Sales.Orders


-- 6️⃣ CONVERT(): Convert string to DATE or DATETIME with style
SELECT OrderID,
CONVERT(DATE, '20-08-2025', 105) AS ConvertedDate,
CONVERT(DATETIME, '2025-08-20 10:30:00', 120) AS ConvertedDateTime
FROM Sales.Orders


-- 7️⃣ DATEFROMPARTS(): Create date from year, month, day
SELECT OrderID,
DATEFROMPARTS(2025, 8, 20) AS DateFromParts
FROM Sales.Orders


-- 8️⃣ DATETIMEFROMPARTS(): Create datetime from date and time parts
SELECT OrderID,
DATETIMEFROMPARTS(2025, 8, 20, 10, 30, 00, 0) AS DateTimeFromParts
FROM Sales.Orders


-- 9️⃣ TIMEFROMPARTS(): Create time from hour, minute, second
SELECT OrderID,
TIMEFROMPARTS(10, 30, 00, 0, 0) AS TimeFromParts
FROM Sales.Orders


-- 🔟 SYSDATETIMEOFFSET(): Returns date, time & time zone offset
SELECT OrderID,
SYSDATETIMEOFFSET() AS DateTimeWithOffset
FROM Sales.Orders


-- 1️⃣1️⃣ GETUTCDATE(): Returns current UTC date and time
SELECT OrderID,
GETUTCDATE() AS UtcDateTime
FROM Sales.Orders


-- 1️⃣2️⃣ SYSUTCDATETIME(): High precision UTC date & time
SELECT OrderID,
SYSUTCDATETIME() AS HighPrecisionUtcDateTime
FROM Sales.Orders


-- 1️⃣3️⃣ DATEADD(): Create new date by adding interval
SELECT OrderID,
DATEADD(DAY, 7, GETDATE()) AS DateAfter7Days
FROM Sales.Orders


-- 1️⃣4️⃣ DATEDIFF(): Generate difference between dates (logical creation)
SELECT OrderID,
DATEDIFF(DAY, CreationTime, GETDATE()) AS DaysSinceOrder
FROM Sales.Orders


-- 1️⃣5️⃣ EOMONTH(): Get end of month date
SELECT OrderID,
EOMONTH(GETDATE()) AS EndOfCurrentMonth
FROM Sales.Orders
