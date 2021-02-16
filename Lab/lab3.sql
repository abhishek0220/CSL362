-- Author: Abhishek Chaudhary
-- Enrollment Number: 2018UCS0087
--
-- CSL362 DBMS LAB 3
------------------------------------------
--------------START-----------------------

SELECT Name from sys.Databases

USE CollegeData

SELECT table_catalog [database], table_name name
FROM INFORMATION_SCHEMA.TABLES
GO

SELECT * FROM course