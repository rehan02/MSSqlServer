# MSSqlServer


https://sample-files.com/misc/sql/


--view DBMS version, instance name  and database name

SELECT @@VERSION,@@servicename,db_name()

-- to select a database
use <DBName>

-- check tables in the selected DB
SELECT name FROM sys.tables

--EXEC sp_tables @table_type = "'TABLE'";

SELECT name, database_id, create_date
FROM sys.databases;
GO
