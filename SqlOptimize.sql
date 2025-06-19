-- Simple Query.sql: laploy, June 2025 
USE LoyDB2025;
GO

SELECT 
	c.CustomerID,
	SUM(LineTotal)
FROM Sales.SalesOrderDetail od
	JOIN Sales.SalesOrderHeader oh
		ON od.SalesOrderID = oh.SalesOrderID 
	JOIN Sales.Customer c
		ON oh.CustomerID = c.CustomerID
WHERE c.CustomerID = 11007
GROUP BY c.CustomerID;
GO

-------------------------------------------------------
-- Simple Query JOIN removed.sql: laploy, June 2025 
USE LoyDB2025;
GO

SELECT 
	oh.CustomerID,
	SUM(LineTotal)
FROM Sales.SalesOrderDetail od
	JOIN Sales.SalesOrderHeader oh
		ON od.SalesOrderID = oh.SalesOrderID 
WHERE CustomerID = 11007
GROUP BY oh.CustomerID;
GO