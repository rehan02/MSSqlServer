/*
SELECT @@servername as DBInstance,db_name() as DBName
-- use zzrehan
SELECT name FROM sys.tables
--EXEC sp_tables @table_type = "'TABLE'";

SELECT name, database_id, create_date
FROM sys.databases;
GO

CREATE TABLE CUSTOMERS (
	ID INT				NOT NULL,
	NAME VARCHAR(20)	NOT NULL,
	AGE INT				NOT NULL,
	ADDRESS CHAR (25),
	SALARY	DECIMAL (18,2),
	PRIMARY KEY (ID)  
);

exec sp_columns CUSTOMERS

--DROP TABLE CUSTOMERS;
*/

/*
INSERT INTO CUSTOMERS(ID,NAME,AGE, ADDRESS,SALARY)
VALUES(1,'Robert',32,'Jackson',2000.00);

INSERT INTO CUSTOMERS(ID,NAME,AGE,ADDRESS,SALARY)
VALUES(2,'Kayl',25,'Chicago',1500.00);

INSERT INTO CUSTOMERS(ID,NAME,AGE,ADDRESS,SALARY)
VALUES(3,'Kevin',23,'Kota',2000.00);

INSERT INTO CUSTOMERS(ID,NAME,AGE,ADDRESS,SALARY)
VALUES(4,'Chelsea',25,'Madison',6500.00);

INSERT INTO CUSTOMERS(ID,NAME,AGE,ADDRESS,SALARY)
VALUES(5,'Hayden',27,'Boston',8500);

INSERT INTO CUSTOMERS(ID,NAME,AGE,ADDRESS,SALARY)
VALUES(6,'Kaden',22,'Memphis',4500.00);




INSERT INTO CUSTOMERS (ID, NAME, AGE, ADDRESS, SALARY) VALUES
(7, 'Emily Johnson', 32, 'New York City', 3000.00),
(8, 'Michael Brown', 35, 'Los Angeles', 3500.00),
(9, 'Sophia Garcia', 28, 'Chicago', 2800.00),
(10, 'William Davis', 40, 'Houston', 4200.00),
(11, 'Olivia Hernandez', 27, 'Phoenix', 2500.00),
(12, 'Jacob Gonzalez', 33, 'Philadelphia', 3800.00),
(13, 'Isabella Morales', 29, 'San Antonio', 2900.00),
(14, 'Ethan Ramirez', 38, 'San Diego', 4100.00),
(15, 'Ava Flores', 31, 'Dallas', 3200.00),
(16, 'Noah Diaz', 26, 'San Jose', 2400.00),
(17, 'Mia Gutierrez', 34, 'Austin', 3600.00),
(18, 'Alexander Reyes', 30, 'Jacksonville', 3000.00),
(19, 'Emma Castillo', 37, 'Fort Worth', 4000.00),
(20, 'Daniel Ortiz', 28, 'Columbus', 2700.00),
(21, 'Abigail Jimenez', 32, 'Charlotte', 3300.00),
(22, 'Sebastian Mendoza', 25, 'Detroit', 2300.00),
(23, 'Isabella Ramos', 35, 'El Paso', 3700.00),
(24, 'Liam Vargas', 29, 'Memphis', 2900.00),
(25, 'Avery Rojas', 39, 'Denver', 4200.00),
(26, 'Lucas Dominguez', 27, 'Washington', 2500.00),
(27, 'Sophia Moreno', 33, 'Boston', 3500.00),
(28, 'William Soto', 30, 'El Paso', 3000.00),
(29, 'Olivia Fuentes', 36, 'Seattle', 3900.00),
(30, 'Jacob Santana', 28, 'Denver', 2700.00),
(31, 'Isabella Suarez', 32, 'Portland', 3300.00),
(32, 'Ethan Montoya', 25, 'Las Vegas', 2300.00),
(33, 'Ava Robles', 35, 'Milwaukee', 3700.00),
(34, 'Noah Pena', 29, 'Albuquerque', 2900.00),
(35, 'Mia Salazar', 39, 'Tucson', 4200.00),
(36, 'Alexander Rios', 27, 'Fresno', 2500.00),
(37, 'Emma Morales', 33, 'Sacramento', 3500.00),
(38, 'Daniel Diaz', 30, 'Long Beach', 3000.00),
(39, 'Abigail Flores', 36, 'Kansas City', 3900.00),
(40, 'Sebastian Ramirez', 28, 'Mesa', 2700.00),
(41, 'Isabella Gutierrez', 32, 'Virginia Beach', 3300.00),
(42, 'Liam Reyes', 25, 'Atlanta', 2300.00),
(43, 'Avery Castillo', 35, 'Colorado Springs', 3700.00),
(44, 'Lucas Jimenez', 29, 'Raleigh', 2900.00),
(45, 'Sophia Ortiz', 39, 'Miami', 4200.00),
(46, 'William Mendoza', 27, 'Oakland', 2500.00),
(47, 'Olivia Vargas', 33, 'Minneapolis', 3500.00),
(48, 'Jacob Rojas', 30, 'Cleveland', 3000.00),
(49, 'Isabella Soto', 36, 'Omaha', 3900.00),
(50, 'Ethan Fuentes', 28, 'Miami', 2700.00)

*/

--SELECT ID, NAME, SALARY FROM CUSTOMERS; 

/*
UPDATE CUSTOMERS 
SET ADDRESS = 'Dallas' 
WHERE ID = 3;
*/
DELETE FROM CUSTOMERS 
WHERE ID = 6;

-- DELETE FROM CUSTOMERS;   -- it will delete all the records from table customers

SELECT ID, NAME, SALARY  
FROM CUSTOMERS 
WHERE SALARY > 2000;

SELECT ID, NAME, SALARY  
FROM CUSTOMERS 
WHERE NAME = 'Hardik';


/*
WHERE SALARY LIKE '200%' --Finds any values that start with 200
WHERE SALARY LIKE '%200%'   --Finds any values that have 200 in any position 	
WHERE SALARY LIKE '_00%' -- Finds any values that have 00 in the second and third positions
WHERE SALARY LIKE '2_%_%' -- Finds any values that start with 2 and are at least 3 characters in length
WHERE SALARY LIKE '%2' --Finds any values that end with 2=
WHERE SALARY LIKE '_2%3' -- Finds any values that have a 2 in the second position and end with a 3
WHERE SALARY LIKE '2___3' -- Finds any values in a five-digit number that start with 2 and end with 3
*/

SELECT * FROM CUSTOMERS 
WHERE SALARY LIKE '200%'; 

SELECT * FROM CUSTOMERS 
   ORDER BY NAME, SALARY

SELECT * FROM CUSTOMERS 
   ORDER BY NAME DESC

SELECT NAME, SUM(SALARY) as [sum of salary] FROM CUSTOMERS 
   GROUP BY NAME;

SELECT DISTINCT SALARY FROM CUSTOMERS 
   ORDER BY SALARY 


/*

-- Create the table
CREATE TABLE orders (
    oid INT PRIMARY KEY,
    order_date DATETIME,
    customer_id INT,
    amount DECIMAL(10,2)
);

-- Insert the records
INSERT INTO orders (oid, order_date, customer_id, amount) VALUES
    (100, '2009-10-08 00:00:00.000', 3, 1500.00),
    (101, '2009-11-20 00:00:00.000', 2, 1560.00),
    (102, '2009-10-08 00:00:00.000', 3, 3000.00),
    (103, '2008-05-20 00:00:00.000', 4, 2060.00);
*/
SELECT ID, NAME, AGE, AMOUNT 
   FROM CUSTOMERS, ORDERS 
   WHERE  CUSTOMERS.ID = ORDERS.CUSTOMER_ID 
OR 
SELECT A.ID, A.NAME, A.AGE, B.AMOUNT 
   FROM CUSTOMERS A inner join  ORDERS B on A.ID = B.Customer_ID 

/*
    INNER JOIN − Returns rows when there is a match in both tables.

    LEFT JOIN − Returns all rows from the left table, even if there are no matches in the right table.

    RIGHT JOIN − Returns all rows from the right table, even if there are no matches in the left table.

    FULL JOIN − Returns rows when there is a match in one of the tables.

    SELF JOIN − This is used to join a table to itself as if the table were two tables, temporarily renaming at least one table in the MS SQL Server statement.

    CARTESIAN JOIN − Returns the Cartesian product of the sets of records from the two or more joined tables.
*/

SELECT *  
   FROM CUSTOMERS
   WHERE ID IN (SELECT ID FROM CUSTOMERS WHERE SALARY > 4500)

INSERT INTO table_name [ (column1 [, column2 ]) ] 
   SELECT [ *|column1 [, column2 ] 
   FROM table1 [, table2 ] 
   [ WHERE VALUE OPERATOR ]


UPDATE table 
SET column_name = new_value 
[ WHERE OPERATOR [ VALUE ] 
   (SELECT COLUMN_NAME 
   FROM TABLE_NAME) 
   [ WHERE) ] 

 
 UPDATE CUSTOMERS 
   SET SALARY = SALARY * 0.25 
   WHERE AGE IN (SELECT AGE FROM CUSTOMERS_BKP WHERE AGE >= 27 )
   
DELETE FROM CUSTOMERS 
   WHERE AGE IN (SELECT AGE FROM CUSTOMERS_BKP WHERE AGE >=27 )

-- T-SQL - Stored Procedures

CREATE PROCEDURE SelectCustomerstabledata 
AS 
SELECT * FROM Testdb.Customers 
GO 
