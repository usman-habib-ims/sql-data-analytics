-- Switch to your database
USE MyDatabase;
GO

-- Retrieve all customer data
SELECT * from Customers

-- Retrieve name , country from customers data
-- select first_name , country from Customers


-- Retreive name , country , score from customers data >500
-- SELECT first_name , country , score from customers where score>500

-- Retrieve customer where score not equal to 0
-- SELECT * from customers where score != 0

-- Retrieve customer whose country is Germany
-- SELECT * from customers where country = 'Germany'
-- SELECT first_name , country from customers where country = 'USA'

-- Retrieve customer DATA ASC/DESC
-- SELECT * from customers ORDER BY SCORE ASC
-- SELECT * from customers ORDER BY SCORE DESC
-- SELECT * from customers ORDER BY Country ASC, score DESC
-- SELECT * FROM CUSTOMERS ORDER BY COUNTRY DESC

-- Combine rows with same value
SELECT Country , SUM(score) from customers GROUP BY Country
SELECT Country , SUM(score) AS TotalScore , COUNT(id) AS CustomerCount from customers Group BY country