create database HOMEWORK2
USE HOMEWORK2
TASK1
CREATE TABLE EMPLOYEES (EmpID INT, Name VARCHAR(50), Salary DECIMAL(10,2))
TASK2
INSERT INTO EMPLOYEES (EmpID, Name, salary) values (1, 'Ben', 3000.00)
INSERT INTO EMPLOYEES (EmpID, Name, salary) values (2, 'Shon', 3500.50)
INSERT INTO EMPLOYEES (EmpID, Name, salary) values (3, 'Breadly', 4000.75)
select * from EMPLOYEES
INSERT INTO EMPLOYEES (EmpID, Name, salary) values
                                                 (4, 'Cory', 3200.00),
												 (5, 'Fred', 3800.25),
												 (6, 'Clay', 4100.80)
select * from EMPLOYEES
TASK3
UPDATE EMPLOYEES SET salary = 7000.00 where EmpID = 1
select * from EMPLOYEES where EmpID = 1
TASK4
DELETE from EMPLOYEES where EmpID = 2
select * from EMPLOYEES
select * from EMPLOYEES where EmpID = 2
TASK5
DELETE: Remove some or all rows — can be filtered with WHERE.
TRUNCATE: Quickly remove all rows — no filtering.
DROP: Delete the whole table — gone forever.
TASK6
ALTER TABLE EMPLOYEES ALTER COLUMN Name VARCHAR(100)
SELECT * FROM EMPLOYEES
TASK7
ALTER TABLE EMPLOYEES ADD Department VARCHAR(50)
SELECT * FROM EMPLOYEES
TASK8
ALTER TABLE EMPLOYEES ALTER COLUMN Salary FLOAT
SELECT * FROM EMPLOYEES
TASK9
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50))
TASK10
TRUNCATE TABLE EMPLOYEES
SELECT *FROM EMPLOYEES
TASK11
INSERT INTO Departments (DepartmentID, DepartmentName)
select 1, 'HR'
UNION ALL
SELECT 2, 'Finance'
union all
select 3, 'IT'
union all
select 4, 'GeneralAffairs'
union all
select 5, 'RiskManagement'
select * from Departments
TASK12
UPDATE EMPLOYEES set Department = 'Management' where Salary > 5000 
TASK13
TRUNCATE TABLE EMPLOYEES
TASK14
ALTER TABLE EMPLOYEES DROP COLUMN Department
select * from EMPLOYEES
TASK15
exec sp_rename EMPLOYEES, StaffMembers 
TASK16
DROP TABLE Departments
TASK17
CREATE TABLE Products (ProductID int primary key, ProductName varchar(100), Category varchar(50), Price decimal(10, 2), StockQuantity int)
select * from Products
TASK18
ALTER TABLE Products ADD CONSTRAINT chk_price_positive CHECK (Price > 0)
select * from Products
TASK19
ALTER TABLE Products ADD StockQuantityc int default 50
TASK20
EXEC sp_rename 'Products.Category', 'ProductCategory', 'Column' 
select * from Products
TASK21
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity) VALUES (1, 'Laptop', 'Electronics', 1400.00, 20)
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity) VALUES (2, 'Chair', 'Furniture', 140.00, 20)
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity) VALUES (3, 'Water Bottle', 'Accessories', 14.40, 100)
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity) VALUES (4, 'Headphones', 'Electronics', 95.75, 60)
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity) VALUES (5, 'Notebook', 'Stationery', 4.25, 200)
select * from Products
TASK22
SELECT * INTO Products_Backup from Products
TASK23
EXEC sp_rename 'Products', 'Inventory'
select * from Inventory
TASK24
ALTER TABLE Inventory add column_Price float
TASK25
CREATE TABLE Inventory_New (ProductCode INT IDENTITY(1000, 5) PRIMARY KEY, ProductName VARCHAR(100), Price FLOAT, StockQuantity INT)
INSERT INTO Inventory_New (ProductName, Price, StockQuantity) SELECT ProductName, Price, StockQuantity FROM Inventory
drop table Inventory
exec sp_rename 'Inventory_New', 'Inventory'
select * from Inventory
