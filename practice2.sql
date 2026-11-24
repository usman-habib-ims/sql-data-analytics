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

-- =======================================
-- SQL FUNCTIONS
-- =======================================

-- SINGLE ROW FUNCTIONS (ROW LEVEL CALCULATIONS)

-- =================
-- 1: CONCAT = Concatenate two or more strings into one string

-- Select FirstName, country, CONCAT(FirstName, ' ' ,Country) AS name_country  from Sales.Customers

-- 2: UPPER = Convert a string to uppercase

-- SELECT FirstName, country, CONCAT(FirstName , ' ' , Country) AS name_country, UPPER(FirstName) AS Upper_FirstName
-- from Sales.Customers

-- 3: LOWER = Convert a string to lowercase

-- SELECT FirstName , country , CONCAT(FirstName, ' ' , country) AS name_country, LOWER(FirstName) as Lower_FirstName
-- , UPPER(FirstName) AS Upper_FirstName from Sales.Customers

-- 4: TRIM = Remove leading and trailing spaces from a string

-- SELECT FirstName,
-- LEN(FirstName) AS len_name,
-- LEN(TRIM(FirstName)) AS len_trim_name,
-- LEN(FirstName) - LEN(TRIM(FirstName)) AS len_diff
-- from Sales.Customers
-- WHERE LEN(FirstName) != LEN(TRIM(FirstName))
-- WHERE FirstName != TRIM(FirstName)

-- 5: REPLACE = Replace specific characters with a new characters
-- SELECT '123-456' as PHONE,
-- replace('123-456' , '-' , '/') AS Replace_phone

-- SELECT 'sql.txt' as old_file,
-- replace('sql.txt' , '.txt' , '.csv') AS new_file

-- 6: LEN = Counts how many characters
-- SELECT
-- FirstName,
-- LEN(FirstName) AS len_name
-- from Sales.Customers