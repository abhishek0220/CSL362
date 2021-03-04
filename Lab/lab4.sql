SELECT Name from sys.Databases

--CREATE DATABASE lab3
USE CollegeData

SELECT table_catalog [database], table_name name
FROM INFORMATION_SCHEMA.TABLES
GO

--ques 1
SELECT * FROM instructor WHERE SAL > 60000

--ques 2
SELECT TOP 1 * FROM instructor ORDER BY SAL DESC

--ques 3
SELECT * FROM instructor ORDER BY SAL DESC
OFFSET 1 ROWS

--ques 4
SELECT * FROM student WHERE D_NAME LIKE 'Comp%'

--ques 5
SELECT * FROM takes WHERE GRADE IN (5,7,10) 

--ques 6
SELECT * FROM takes WHERE GRADE NOT IN (10, 9, 4) 

--ques 7
SELECT INST_NAME, INST_ID FROM instructor WHERE SAL BETWEEN 50000 AND 90000

--ques 8
SELECT * FROM department WHERE BUDGET >= ALL( SELECT BUDGET FROM department)

--ques 9
SELECT * FROM instructor WHERE CAST(INST_ID AS varchar) = ANY(SELECT CAST(INST_ID AS varchar) FROM teaches WHERE YEAR = 2009)

--ques 10
SELECT * FROM course WHERE C_ID LIKE 'BIO%'

--ques 11
SELECT * FROM department WHERE D_NAME LIKE 'P%'