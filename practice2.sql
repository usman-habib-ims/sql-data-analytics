-- Switch to your database
USE SalesDB;
GO

-- =======================================
-- Task
-- =======================================

-- SELECT
-- o.OrderID ,
-- o.Sales ,
-- c.FirstName as CustomerFirstName ,
-- c.LastName as CustomerLastName ,
-- p.Product as ProductName ,
-- p.Price ,
-- e.FirstName as EmployeeFirstName ,
-- e.LastName as EmployeeLastName
-- FROM Sales.Orders as o
-- LEFT JOIN Sales.Customers as c ON o.CustomerID = c.CustomerID
-- LEFT JOIN Sales.Products as p on o.ProductID = p.ProductID
-- LEFT JOIN Sales.Employees as e on o.SalesPersonID = e.EmployeeID

-- ===============================================================
-- SET OPERATORS
-- ===============================================================

-- =======================================
-- UNION
-- =======================================

-- SELECT FirstName, LastName from Sales.Customers

-- UNION

-- SELECT FirstName, LastName from Sales.Employees

-- =======================================
-- UNION ALL
-- =======================================

-- SELECT FirstName, LastName from Sales.Customers

-- UNION ALL

-- SELECT FirstName, LastName from Sales.Employees

-- =======================================
-- EXCEPT
-- =======================================

-- SELECT FirstName, LastName from Sales.Customers

-- EXCEPT

-- SELECT FirstName, LastName from Sales.Employees

-- =======================================
-- INTERSECT
-- =======================================

-- SELECT FirstName, LastName from Sales.Employees

-- INTERSECT

-- SELECT FirstName, LastName from Sales.Customers

-- =======================================
-- TASKS
-- =======================================

-- SELECT
-- 'Orders' AS SourceTable
--     ,[OrderID]
--     ,[ProductID]
--     ,[CustomerID]
--     ,[SalesPersonID]
--     ,[OrderDate]
--     ,[ShipDate]
--     ,[OrderStatus]
--     ,[ShipAddress]
--     ,[BillAddress]
--     ,[Quantity]
--     ,[Sales]
--     ,[CreationTime]
--     from Sales.Orders

-- UNION

-- SELECT
-- 'OrdersArchive' AS SourceTable
--     ,[OrderID]
--     ,[ProductID]
--     ,[CustomerID]
--     ,[SalesPersonID]
--     ,[OrderDate]
--     ,[ShipDate]
--     ,[OrderStatus]
--     ,[ShipAddress]
--     ,[BillAddress]
--     ,[Quantity]
--     ,[Sales]
--     ,[CreationTime]
--     from Sales.OrdersArchive

--     ORDER BY OrderID

-- =======================================

