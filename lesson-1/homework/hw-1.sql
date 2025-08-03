use HOMEWORK1
TASK1
Дата(Data) - это набор необработанных, неанализированных и неорганизованных фактов.
База данных(Database) - это совокупность аккуратно организованных данных, созданная с целю управления, хранения и извлечения информации электронным путем.
Реляционная база данных(Relational database) - это тип базы данных, в которой данные хранятся в таблицах, а таблицы связаны друг с другом посредством ключей.
Таблица(table) - это набор данных, организованных в строки и столбцы, как электронная таблица. Каждая строка представляет один элемент или запись. А каждый столбец представляет поле данных.
TASK2
1. Безопасность
2. Высокая производительность
3. Инструменты управления данными
4. Резервное копирование и восстановление
5. Интеграция с другими службами.(н-р. Power BI, Azure SQL)
TASK3
1. Аутентификация Windows - использует учетную запись Windows для входа в SQL Server
2. Аутентификация SQL Server - требуется отдельное имя пользователя и пароль, созданные внутри SQL Server
3. Смешанный режим - включает оба режима: Windows и SQL Server аутентификацию. 
TASK4
create database SchoolDB
TASK5
create table Students (StudentID INT PRIMARY KEY, Name VARCHAR(50), Age INT)
TASK6
SQL Server Система управления реляционными базами данных (СУРБД) от Microsoft. Она хранит и управляет данными.
SSMS (SQL Server Management Studio) - это графический инструмент, используемый для управления и администрирования SQL Server.
SQL (Structured Query Language) - это язык программирования для работы с реляционными базами данных.
Вкратце, SQL - это язык, SQL Server - это продукт, а SSMS - это инструмент для работы с этим продуктом.
TASK7
1.DQL(Data Query Language/Язык Запросов Данных): DQL используется для извлечения данных из базы данных. Основная команда DQL - SELECT
Example: SELECT * FROM Students WHERE city = 'Tashkent' Этот запрос выберает все столбцы из таблицы "Students" для всех записей, где город "Tashkent"
2.DML(Data Manipulation Language/Язык манипулирования данными): DML используется для изменения данных в базе данных. Основные команды DML: INSERT, UPDATE, DELETE.
Examples: INSERT INTO Students (Student_id, first name, last name, city) VALUES (1, 'Sabina', 'Abdullaeva', 'Tashkent'). Это добовление новой записи в таблицу.
          UPDATE Students SET city = 'Samarkand' where student_id = 1. Это изменение существующих данных в таблице.
		  DELETE FROM Students where Student_id = 1. Это удаление данных из таблицы.
3.DDL(Data defenition language/Язык описания данных): DDL ипользуется для определения структуры базы данных и объектов в ней. Основные команды DDL: CREATE, ALTER, DROP.
Examples: CREATE TABLE Products (product_id int primary key, product_name varchar(100)). Это создание новой таблицы.
          ALTER: ALTER TABLE Products add column category varchar(100). Это изменение структуры существующей таблицы.
		  DROP: DROP TABLE Products. Это удаление таблицы.
4. DCL(Data Control Language/Язык управления доступам к данным): DCL используется для предоставления или отмены прав доступа к базе данных. Основные команды DCL: GRANT, REVOKE.
Examples: grant select, insert on Students to user1. Это предоставления прав доступа.
          revoke insert on Students from user1. Это отмена прав доступа.
5. TCL(Transaction Control Language/Язык управления транзакциями): TCL используется для управления транзакциями, то есть группами операций, которые должны выполенятся как единое целое. Осноные команды: BEGIN TRANSACTION, COMMIT, ROLLBACK.
Examples: BEGIN TRANSACTION; UPDATE Accounts SET balance = balance - 100 WHERE account_id = 1; UPDATE Accounts SET balance = balance + 100 WHERE account_id = 2; COMMIT; Здесь транзакция началась и изменения сделланые в транзакции зафиксировались.
          START TRANSACTION; UPDATE Products SET quantity = quantity - 1 WHERE product_id = 1; ROLLBACK; Здесь ROLLBACK озночает откат изменений, сделанных в транзакции.
TASK8
USE SchoolDB
create table Students (StudentID INT, Name VARCHAR(50), Age INT)
INSERT INTO Students values (1,'Sabiha', 16),(3,'Fotih', 10),(2,'Samiya', 12)
select * from Students
