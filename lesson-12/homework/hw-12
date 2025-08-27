CREATE DATABASE HOMEWORK12; 
USE HOMEWORK12; 
Create table Person (personId int, firstName varchar(255), lastName varchar(255))
Create table Address (addressId int, personId int, city varchar(255), state varchar(255))
Truncate table Person
insert into Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen')
insert into Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob')
Truncate table Address
insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York')
insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California'); 

SELECT*FROM Person; 
SELECT*FROM Address; 
--TASK1; 
SELECT p.firstName, p.lastName, a.city, a.state FROM Person p 
LEFT JOIN Address a ON p.personId = a.personId; 

Create table Employee (id int, name varchar(255), salary int, managerId int)
Truncate table Employee
insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3')
insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4')
insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', NULL)
insert into Employee (id, name, salary, managerId) values ('4', 'Max', '90000', NULL); 
SELECT*FROM Employee; 
--TASK2; 
SELECT e.name AS Employee FROM Employee e 
JOIN Employee m ON e.managerId = m.id WHERE e.salary > m.salary; 

DROP table IF EXISTS Person;
Create table Person (id int, email varchar(255)) 
insert into Person (id, email) values ('1', 'a@b.com') 
insert into Person (id, email) values ('2', 'c@d.com') 
insert into Person (id, email) values ('3', 'a@b.com'); 
SELECT*FROM Person; 
--TASK3; 
SELECT email FROM Person GROUP BY  email HAVING COUNT(email) > 1; 
SELECT DISTINCT p1.email
FROM Person p1
JOIN Person p2
  ON p1.email = p2.email
 AND p1.id <> p2.id; 

Truncate table Person; 
insert into Person (id, email) values ('1', 'john@example.com') 
insert into Person (id, email) values ('2', 'bob@example.com') 
insert into Person (id, email) values ('3', 'john@example.com'); 
SELECT*FROM Person; 
--TASK4; 
DELETE p1 FROM Person p1 JOIN Person p2 ON p1.email = p2.email 
AND p1.id > p2.id; --(1tadan kop bosa ochsin degani) 

CREATE TABLE boys (
    Id INT PRIMARY KEY,
    name VARCHAR(100),
    ParentName VARCHAR(100));
CREATE TABLE girls (
    Id INT PRIMARY KEY,
    name VARCHAR(100),
    ParentName VARCHAR(100));

INSERT INTO boys (Id, name, ParentName) 
VALUES 
(1, 'John', 'Michael'),  
(2, 'David', 'James'),   
(3, 'Alex', 'Robert'),   
(4, 'Luke', 'Michael'),  
(5, 'Ethan', 'David'),    
(6, 'Mason', 'George');  
INSERT INTO girls (Id, name, ParentName) 
VALUES 
(1, 'Emma', 'Mike'),  
(2, 'Olivia', 'James'),  
(3, 'Ava', 'Robert'),    
(4, 'Sophia', 'Mike'),  
(5, 'Mia', 'John'),      
(6, 'Isabella', 'Emily'),
(7, 'Charlotte', 'George'); 
SELECT*FROM boys; 
SELECT*FROM girls; 
--TASK5; 
SELECT ParentName FROM boys 
UNION SELECT ParentName FROM girls; 
SELECT DISTINCT COALESCE(b.ParentName, g.ParentName) AS ParentName
FROM boys b
FULL OUTER JOIN girls g
  ON b.ParentName = g.ParentName; --COALESCE NI YANA BIR MARTA CHUNVOLISHIM KERE 

--TASK6; --QILINMADI!!!!!!!!!!!!!!!!!!!
SELECT 
    custid,
    SUM(freight) AS TotalSalesAmount,   -- assuming freight represents sales amount
    MIN(freight) AS LeastWeight
FROM Sales.Orders
WHERE freight > 50
GROUP BY custid; 

DROP TABLE IF EXISTS Cart1;
DROP TABLE IF EXISTS Cart2;
GO

CREATE TABLE Cart1
(Item  VARCHAR(100) PRIMARY KEY);
GO
CREATE TABLE Cart2
(Item  VARCHAR(100) PRIMARY KEY);
GO

INSERT INTO Cart1 (Item) VALUES
('Sugar'),('Bread'),('Juice'),('Soda'),('Flour');
GO
INSERT INTO Cart2 (Item) VALUES
('Sugar'),('Bread'),('Butter'),('Cheese'),('Fruit');
GO
SELECT*FROM Cart1; 
SELECT*FROM Cart2;
--TASK7; 
SELECT c1.Item AS [Item Cart 1], c2.Item AS [Item Cart 2] 
FROM Cart1 c1 
FULL OUTER JOIN Cart2 c2 ON c1.Item = c2.Item 
ORDER BY CASE WHEN c1.Item IS NOT NULL 
AND c2.Item IS NOT NULL THEN 1 
WHEN c1.Item IS NOT NULL THEN 2 ELSE 3 END, COALESCE(c1.Item, c2.Item); -- then 1, then 2, then 3 nima demoqchi? 

Create table Customers (id int, name varchar(255))
Create table Orders (id int, customerId int)
Truncate table Customers
insert into Customers (id, name) values ('1', 'Joe')
insert into Customers (id, name) values ('2', 'Henry')
insert into Customers (id, name) values ('3', 'Sam')
insert into Customers (id, name) values ('4', 'Max')
Truncate table Orders
insert into Orders (id, customerId) values ('1', '3')
insert into Orders (id, customerId) values ('2', '1'); 
SELECT*FROM Customers; 
SELECT*FROM Orders; 
--TASK8; 
SELECT c.name AS Customers FROM Customers c 
LEFT JOIN Orders o ON c.id = o.customerId WHERE o.id IS NULL; 

Create table Students (student_id int, student_name varchar(20))
Create table Subjects (subject_name varchar(20))
Create table Examinations (student_id int, subject_name varchar(20))
Truncate table Students
insert into Students (student_id, student_name) values ('1', 'Alice')
insert into Students (student_id, student_name) values ('2', 'Bob')
insert into Students (student_id, student_name) values ('13', 'John')
insert into Students (student_id, student_name) values ('6', 'Alex')
Truncate table Subjects
insert into Subjects (subject_name) values ('Math')
insert into Subjects (subject_name) values ('Physics')
insert into Subjects (subject_name) values ('Programming')
Truncate table Examinations
insert into Examinations (student_id, subject_name) values ('1', 'Math')
insert into Examinations (student_id, subject_name) values ('1', 'Physics')
insert into Examinations (student_id, subject_name) values ('1', 'Programming')
insert into Examinations (student_id, subject_name) values ('2', 'Programming')
insert into Examinations (student_id, subject_name) values ('1', 'Physics')
insert into Examinations (student_id, subject_name) values ('1', 'Math')
insert into Examinations (student_id, subject_name) values ('13', 'Math')
insert into Examinations (student_id, subject_name) values ('13', 'Programming')
insert into Examinations (student_id, subject_name) values ('13', 'Physics')
insert into Examinations (student_id, subject_name) values ('2', 'Math')
insert into Examinations (student_id, subject_name) values ('1', 'Math'); 
SELECT*FROM Students; 
SELECT*FROM Subjects; 
SELECT*FROM Examinations; 
--TASK9; 
SELECT s.student_id, s.student_name, s1.subject_name, COUNT(e.student_id) AS attended_exams 
FROM Students s CROSS JOIN Subjects s1 
LEFT JOIN Examinations e ON s.student_id = e.student_id AND s1.subject_name = e.subject_name 
GROUP BY s.student_id, s.student_name, s1.subject_name ORDER BY s.student_id, s1.subject_name; -- YAXSHILAB CHUNVOLISHIM KERE
