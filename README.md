# MSSqlServer


https://sample-files.com/misc/sql/


--view DBMS Server/instance, version database name

SELECT @@servername,@@VERSION,db_name()
-- check the db names and specs
SELECT name, database_id, create_date FROM sys.databases;

-- to select a database
use <DBName>

-- check tables in the selected DB
SELECT name FROM sys.tables

--EXEC sp_tables @table_type = "'TABLE'";

SELECT name, database_id, create_date
FROM sys.databases;

GO
