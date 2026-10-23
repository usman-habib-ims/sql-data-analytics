-- Switch to your database
USE MyDatabase;
GO

-- ===================================================================================================
-- SELECT QUERIES
-- ===================================================================================================

-- Retrieve all customer data
-- SELECT * from Customers

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
-- SELECT Country , SUM(score) from customers GROUP BY Country
-- SELECT Country , SUM(score) AS TotalScore , COUNT(id) AS CustomerCount from customers Group BY country

-- SQL QUERY HAVING Filter Aggregated Data
-- SELECT country , AVG(score) as avg_score from Customers where score != 0 GROUP BY country HAVING AVG(score) > 430
-- SELECT country , AVG(score) AS avg_score from customers where score != 0 GROUP BY country HAVING AVG(SCORE) > 430

-- DISTINCT QUERY
-- select DISTINCT COUNTRY FROM CUSTOMERS
-- SELECT id from customers
-- SELECT DISTINCT id from customers

-- TOP IN QUERY
-- SELECT TOP 3 * from customers
-- select TOP 3 * from CUSTOMERS ORDER BY score DESC
-- SELECT TOP 2 * from customers ORDER BY score ASC

-- RECENT ORDERS
-- SELECT * from orders ORDER BY order_date DESC
-- SELECT Top 2 * from orders ORDER BY order_date ASC

-- MULTI QUERIES

-- SELECT * FROM customers;

-- SELECT * FROM orders;

-- SELECT 123 AS static_number

-- SELECT 'Hello World' AS STATIC_STRING

-- SELECT id , first_name , 'New Customer' AS customer_type from customers

-- SELECT * FROM customers where country = 'Germany'

-- SELECT * FROM orders

-- ===================================================================================================
-- DDL Commands
-- ===================================================================================================

-- create new table persons
-- CREATE table Persons (
--     id INT NOT NULL,
--     person_name VARCHAR(50) not null,
--     birth_date DATE,
--     phone VARCHAR(15) not null,
--     CONSTRAINT pk_persons PRIMARY KEY (id),
-- );

-- SELECT * FROM Persons

-- add new column email to persons table
-- Alter table Persons
-- add email VARCHAR(50) NOT NULL;

-- delete column email from persons
-- Alter table Persons
-- drop column email;

-- Drop table persons
-- DROP TABLE Persons;

-- ===================================================================================================
-- DML Commands
-- ===================================================================================================

-- INSERT INTO customers (id , first_name , country , score)
-- VALUES (6 , 'John' , 'USA' , NULL),
-- (7, 'Jane' , NULL , 100)

-- INSERT INTO customers (id , first_name , country , score)
-- VALUES (8 , 'Max' , 'USA' , NULL)

-- INSERT INTO customers
-- VALUES (9 , 'Alias' , 'Germany' , NULL) , (10 , 'Mia' , NULL , NULL)

-- INSERT data from "Customers" int "Persons"
-- INSERT INTO persons (id , person_name , birth_date , phone)
-- SELECT id , first_name , NULL , 'UNKNOWN' FROM CUSTOMERS

-- Change score of customer 6 to 0
-- UPDATE customers SET score = 0 where SCORE IS NULL;

-- DELETE ROWS
-- delete from customers where id > 5;

-- Delete all rows from PERSONS table
-- TRUNCATE TABLE persons;

-- SELECT * FROM persons;