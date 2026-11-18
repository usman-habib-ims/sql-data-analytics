-- Switch to your database
USE SalesDB;
GO

-- =======================================
-- Task
-- =======================================

SELECT
o.OrderID ,
o.Sales ,
c.FirstName as CustomerFirstName ,
c.LastName as CustomerLastName ,
p.Product as ProductName ,
p.Price ,
e.FirstName as EmployeeFirstName ,
e.LastName as EmployeeLastName
FROM Sales.Orders as o
LEFT JOIN Sales.Customers as c ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products as p on o.ProductID = p.ProductID
LEFT JOIN Sales.Employees as e on o.SalesPersonID = e.EmployeeID
