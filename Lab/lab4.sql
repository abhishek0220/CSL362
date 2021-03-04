SELECT Name from sys.Databases

--CREATE DATABASE lab3
USE CollegeData

SELECT table_catalog [database], table_name name
FROM INFORMATION_SCHEMA.TABLES
GO

--ques 1
SELECT INST_NAME FROM instructor WHERE SAL > 60000

--ques 2
SELECT * FROM instructor 
WHERE SAL >= ALL(
    SELECT SAL FROM instructor
    )

--ques 3
SELECT * FROM instructor
WHERE SAL < ANY(
    SELECT SAL FROM instructor
    )

--ques 4
SELECT S_ID FROM student WHERE D_NAME LIKE 'Comp%'

--ques 5
SELECT C_ID, SEC_ID FROM takes WHERE GRADE IN (5,7,10) 

--ques 6
SELECT C_ID, SEC_ID FROM takes WHERE GRADE NOT IN (10, 9, 4) 

--ques 7
SELECT INST_NAME, INST_ID FROM instructor WHERE SAL BETWEEN 50000 AND 90000

--ques 8
SELECT D_NAME, BUILDING FROM department WHERE BUDGET >= ALL( SELECT BUDGET FROM department)

--ques 9
SELECT SAL FROM instructor WHERE CAST(INST_ID AS varchar) = ANY(SELECT CAST(INST_ID AS varchar) FROM teaches WHERE YEAR = 2009)

--ques 10
SELECT TITLE FROM course WHERE C_ID LIKE 'BIO%'

--ques 11
SELECT D_NAME FROM department WHERE BUILDING LIKE 'P%'