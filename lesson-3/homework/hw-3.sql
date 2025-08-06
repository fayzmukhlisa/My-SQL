CREATE DATABASE HOMEWORK3
--TASK1
--BULK INSERT — это команда в SQL Server, используемая для быстрого и эффективного импорта большого объема данных из внешнего файла данных (например, .txt, .csv или .dat) непосредственно в таблицу SQL Server.
--TASK2
--CSV(COMMA-SEPARATED VALUES) - расширение: .csv, описание: Текстовый файл, в котором каждая строка представляет собой строку, а поля разделены запятыми, обычно используется с BULK INSERT, bcp или Wizard
--TASK3
CREATE TABLE PRODUCTS (ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Price DECIMAL(10,2))
--TASK4
INSERT INTO PRODUCTS (ProductID, ProductName, Price) VALUES (1, 'NOTEBOOK', 250.00)
SELECT * FROM PRODUCTS
--TASK5
--В SQL, NULL означает отсутствие значения, в то время как NOT NULL указывает, что столбец не может содержать NULL-значение. 
--Другими словами, NOT NULL гарантирует, что в данном столбце всегда должно быть какое-то конкретное значение, в то время как NULL означает, что значение 
--неизвестно или отсутствует. 
--TASK6
ALTER TABLE PRODUCTS ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName)
--TASK7
-- This query selects all products with a price greater than 100 SELECT * FROM Products WHERE Price > 100
/*This query retrieves all products that cost more than 100 units from the Products table*/
--TASK8
ALTER TABLE PRODUCTS ADD CATEGORYID INT
SELECT * FROM PRODUCTS
--TASK9
CREATE TABLE Categories (CategoryID INT PRIMARY KEY, CategoryName VARCHAR(100) UNIQUE)
--TASK10
--To automatically generate unique values, usually for primary key columns, without manually entering them.
--TASK11
BULK INSERT PRODUCTS FROM 'C:\SQL2022\PRODUCTS.txt' WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n', FIRSTROW = 2)
SELECT * FROM PRODUCTS
--TASK12
ALTER TABLE PRODUCTS ADD CONSTRAINT FK_PRODUCTS_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
--TASK13
--PRIMARY KEY однозначно идентифицирует каждую строку в таблице, и он не может содержать NULL значения. Кроме того, в таблице может быть только один PRIMERY KEY.
--UNIQUE KEY также обеспечивает уникальность данных, но в отличие от PRIMARY KEY, может содержать NULL значения (но только одно NULL значение на столбец)
--и в таблице может быть несколько уникальных ключей.
USE HOMEWORK3
--TASK14
ALTER TABLE PRODUCTS ADD CONSTRAINT CHK_PRODUCTS_Price CHECK (Price > 0)
--TASK15
ALTER TABLE PRODUCTS ADD Stock INT NOT NULL DEFAULT 0
SELECT * FROM PRODUCTS
--TASK16
SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price, CategoryID FROM PRODUCTS
--TASK17
--FOREIGN KEY constraints in SQL Server serve the purpose of enforcing referential integrity between two tables in a relational database. This means they ensure 
--that relationships between tables are maintained and that data remains consistent and valid across these related tables. Purpose: maintain referential integrity,
--prevent orphaned records, improve data quality. Usage: FOREIGN KEY constraints are typically defined during table creation or added to existing tables using ALTER TABLE.
--TASK18
CREATE TABLE Customers (CustomerID INT PRIMARY KEY, FirstName NVARCHAR(50), LastName NVARCHAR(50), Age INT CHECK (Age >= 18), Email NVARCHAR(100))
--TASK19
CREATE TABLE Orders (OrderID INT IDENTITY(100, 10) PRIMARY KEY, CustomerName NVARCHAR(100), OrderDate DATE, TotalAmount DECIMAL(10, 2))
SELECT * FROM Orders
--TASK20
CREATE TABLE OrderDetails (OrderID INT, ProductID INT, Quantity INT, UnitPrice DECIMAL(10, 2), PRIMARY KEY (OrderID, ProductID))
--TASK21
--ISNULL Function's purpose: Replaces NULL with a specified replacement value. Use ISNULL for simple, SQL Server-specific NULL replacement.
--COALESCE Function's purpose: Returns the first non-NULL value from a list of expressions. Use COALESCE for portable code, or when evaluating multiple fallback values.
--TASK22
CREATE TABLE EMPLOYEES (EmpID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), Email VARCHAR(100) UNIQUE, HireDate DATE)
--TASK23
CREATE TABLE Departments (DeptID INT PRIMARY KEY, DeptName VARCHAR(100))
CREATE TABLE Sportsmens (SptmID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), GroupID INT, FOREIGN KEY (GroupID) REFERENCES Departments(DeptID) ON DELETE CASCADE ON UPDATE CASCADE)
