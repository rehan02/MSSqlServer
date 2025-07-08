/*
SELECT @@servername as DBInstance,db_name() as DBName

CREATE TABLE CUSTOMERS (
	ID INT				NOT NULL,
	NAME VARCHAR(20)	NOT NULL,
	AGE INT				NOT NULL,
	ADDRESS CHAR (25),
	SALARY	DECIMAL (18,2),
	PRIMARY KEY (ID)  
);

exec sp_columns CUSTOMERS

SELECT * from sys.tables ;
SELECT TABLE_NAME,COLUMN_NAME,DATA_TYPE,CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS;



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

--T-SQL - Transactions:  COMMIT − To save the changes, ROLLBACK − To roll back the changes, SAVEPOINT − Creates points within groups of transactions in which to ROLLBACK, SET TRANSACTION − Places a name on a transaction.

-- COMMIT

/*
Begin Tran 
DELETE FROM CUSTOMERS 
   WHERE AGE = 25 
COMMIT 
*/

-- ROLLBACK
/*
Begin Tran 
DELETE FROM CUSTOMERS 
   WHERE AGE = 25; 
ROLLBACK
*/

/*
Begin Tran 
SAVE Transaction SP1 
Savepoint created. 
DELETE FROM CUSTOMERS WHERE ID = 1  
1 row deleted. 
SAVE Transaction SP2 
Savepoint created. 
DELETE FROM CUSTOMERS WHERE ID = 2 
1 row deleted.
SAVE Transaction SP3 
Savepoint created. 
DELETE FROM CUSTOMERS WHERE ID = 3 
1 row deleted.
*/

/*
ROLLBACK Transaction SP2 
Rollback complete. 
*/

-- SET TRANSACTION ISOLATION LEVEL <Isolationlevel_name>

/* T_SQL Indexes
CREATE UNIQUE INDEX uniqueindex 
on customers (NAME)

CREATE INDEX compositeindex 
on customers (NAME, ID)

DROP INDEX tablename.index_name

*/

/*


    SQL Server COUNT Function − The SQL Server COUNT aggregate function is used to count the number of rows in a database table.

    SQL Server MAX Function − The SQL Server MAX aggregate function allows to select the highest (maximum) value for a certain column.



    SQL Server MIN Function − The SQL Server MIN aggregate function allows to select the lowest (minimum) value for a certain column.

    SQL Server AVG Function − The SQL Server AVG aggregate function selects the average value for certain table column.

    SQL Server SUM Function − The SQL Server SUM aggregate function allows selecting the total for a numeric column.

    SQL Server SQRT Function − This is used to generate a square root of a given number.

    SQL Server RAND Function − This is used to generate a random number using SQL command.

    SQL Server CONCAT Function − This is used to concatenate multiple parameters to a single parameter.

    SQL Server Numeric Functions − Complete list of SQL functions required to manipulate numbers in SQL.

    SQL Server String Functions − Complete list of SQL functions required to manipulate strings in SQL.

INSERT INTO employee_tbl (id, name, work_date, daily_typing_pages) VALUES (1, 'John', '2007-01-24', 250);
INSERT INTO employee_tbl (id, name, work_date, daily_typing_pages) VALUES (2, 'Ram', '2007-05-27', 220);
INSERT INTO employee_tbl (id, name, work_date, daily_typing_pages) VALUES (3, 'Jack', '2007-05-06', 170);
INSERT INTO employee_tbl (id, name, work_date, daily_typing_pages) VALUES (3, 'Jack', '2007-04-06', 100);
INSERT INTO employee_tbl (id, name, work_date, daily_typing_pages) VALUES (4, 'Jill', '2007-04-06', 220);
INSERT INTO employee_tbl (id, name, work_date, daily_typing_pages) VALUES (5, 'Zara', '2007-06-06', 300);
INSERT INTO employee_tbl (id, name, work_date, daily_typing_pages) VALUES (5, 'Zara', '2007-02-06', 350);

CREATE TABLE employee_tbl (
    id INT,
    name VARCHAR(50),
    work_date DATE,
    daily_typing_pages INT
);

	
	SELECT * FROM employee_tbl;
+------+------+------------+--------------------+
| id   | name | work_date  | daily_typing_pages |
+------+------+------------+--------------------+
|    1 | John | 2007-01-24 |                250 |
|    2 | Ram  | 2007-05-27 |                220 |
|    3 | Jack | 2007-05-06 |                170 |
|    3 | Jack | 2007-04-06 |                100 |
|    4 | Jill | 2007-04-06 |                220 |
|    5 | Zara | 2007-06-06 |                300 |
|    5 | Zara | 2007-02-06 |                350 |
+------+------+------------+--------------------+
7 rows in set (0.00 sec)
	

	Examples :
	SELECT COUNT(*) FROM employee_tbl
   -> WHERE name="Zara";

SELECT MAX(SALARY) FROM CUSTOMERS;

SELECT ID, NAME, SALARY 
FROM CUSTOMERS 
GROUP BY NAME, ID 
HAVING MAX(SALARY) < 8000;

SELECT * FROM CUSTOMERS 
WHERE SALARY = (SELECT MAX(SALARY) FROM CUSTOMERS);

SELECT MAX(NAME) AS max_name FROM CUSTOMERS;
SELECT MAX(age) AS 'max_age' FROM CUSTOMERS;

SELECT MIN(SALARY) FROM CUSTOMERS;

SELECT ID, NAME, SALARY 
FROM CUSTOMERS 
GROUP BY NAME, ID 
HAVING MIN(SALARY) > 5000;

SELECT * FROM CUSTOMERS 
WHERE SALARY = (SELECT MIN(SALARY) FROM CUSTOMERS);

SELECT MIN(NAME) AS min_first_name FROM CUSTOMERS;

SELECT MIN(age) AS 'min_age' FROM CUSTOMERS;

   
   SELECT AVG(daily_typing_pages)
    -> FROM employee_tbl;
	
	SELECT name, AVG(daily_typing_pages)
   -> FROM employee_tbl GROUP BY name;
+------+-------------------------+
| name | AVG(daily_typing_pages) |
+------+-------------------------+
| Jack |                135.0000 |
| Jill |                220.0000 |
| John |                250.0000 |
| Ram  |                220.0000 |
| Zara |                325.0000 |
+------+-------------------------+

SELECT SUM(daily_typing_pages)
   -> FROM employee_tbl;

SELECT name, SUM(daily_typing_pages)
   -> FROM employee_tbl GROUP BY name;

select SQRT(16);
SELECT * FROM employee_tbl;
SELECT name, SQRT(daily_typing_pages)
   -> FROM employee_tbl;
   


SELECT RAND( ), RAND( ), RAND( );
SELECT * FROM employee_tbl;  -- repeat
   
SELECT CONCAT('Revathi');
SELECT CONCAT('Tutorials', 'point');
SELECT CONCAT('Structured', 'Query', 'Language') AS CONCAT_Function;
SELECT CONCAT('10001011', '10000000') AS CONCAT_function;
SELECT CONCAT('Good', 'Morning') AS CONCAT_Function;
SELECT CONCAT('Rollno', '110101') AS CONCAT_Function;
SELECT CONCAT('62001', '12345', '14203') AS CONCAT_Function;
SELECT CONCAT(' ');
SELECT CONCAT('ALL', 'IS', 'WELL', NULL) AS CONCAT_Function; -- result will be NULL

create table CUSTOMERS(
   ID INT NOT NULL, 
   NAME VARCHAR(15) NOT NULL, 
   AGE INT NOT NULL, 
   ADDRESS CHAR(25), 
   SALARY DECIMAL(10, 4), PRIMARY KEY(ID)
);

insert INTO CUSTOMERS(ID, NAME, AGE, ADDRESS, SALARY) VALUES(1, 'Ramesh', 32, 'Ahmedabad', 2000.00);
insert INTO CUSTOMERS(ID, NAME, AGE, ADDRESS, SALARY) VALUES(2, 'Khilan', 25, 'Delhi', 1500.00);
insert INTO CUSTOMERS(ID, NAME, AGE, ADDRESS, SALARY) VALUES(3, 'kaushik', 23, 'Kota', 2000.00);
insert INTO CUSTOMERS(ID, NAME, AGE, ADDRESS, SALARY) VALUES(4, 'Chaitali', 25, 'Mumbai', 6500.00);
insert INTO CUSTOMERS(ID, NAME, AGE, ADDRESS, SALARY) VALUES(5, 'Hardik', 27, 'Bhopal', 8500.00);
insert INTO CUSTOMERS(ID, NAME, AGE, ADDRESS, SALARY) VALUES(6, 'Komal', 22, 'MP', 4500.00);
insert INTO CUSTOMERS(ID, NAME, AGE, ADDRESS, SALARY) VALUES(7, 'Muffy', 24, 'Indore', 10000.00);

SELECT ID, NAME, CONCAT(ID, NAME) AS CONCAT_Function FROM CUSTOMERS;

+----+----------+-----------------+
| ID | NAME     | CONCAT_Function |
+----+----------+-----------------+
|  1 | Ramesh   | 1Ramesh         |
|  2 | Khilan   | 2Khilan         |
|  3 | kaushik  | 3kaushik        |
|  4 | Chaitali | 4Chaitali       |
|  5 | Hardik   | 5Hardik         |
|  6 | Komal    | 6Komal          |
|  7 | Muffy    | 7Muffy          |
+----+----------+-----------------+


SELECT ID, NAME, AGE, ADDRESS, SALARY, CONCAT(ID, NAME, AGE, ADDRESS, SALARY) AS CONCAT_Function FROM CUSTOMERS;


 */

