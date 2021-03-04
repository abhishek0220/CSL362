-- Author: Abhishek Chaudhary
-- Enrollment Number: 2018UCS0087
--
-- CSL362 DBMS LAB 3
------------------------------------------
--------------START-----------------------

SELECT Name from sys.Databases

--CREATE DATABASE lab3
USE CollegeData

ALTER DATABASE SCOPED CONFIGURATION 
  SET VERBOSE_TRUNCATION_WARNINGS = OFF;

SELECT table_catalog [database], table_name name
FROM INFORMATION_SCHEMA.TABLES
GO

DROP TABLE dummy




--Ques 1
ALTER TABLE student ADD PRIMARY KEY (S_ID)

ALTER TABLE student
ALTER COLUMN
    TOT_CRED INTEGER NOT NULL
-------------------------------------------------

--Ques 2
ALTER TABLE course ADD PRIMARY KEY (C_ID)

--Ques 3
ALTER TABLE instructor ADD PRIMARY KEY (INST_ID)

--Ques 4
ALTER TABLE takes ADD PRIMARY KEY (S_ID, C_ID, SEC_ID, SEM)

--Ques 5
ALTER TABLE department ADD PRIMARY KEY (D_NAME)

--Ques 6
ALTER TABLE section ADD PRIMARY KEY (C_ID, SEC_ID, SEM)

--Ques 7
ALTER TABLE teaches ADD PRIMARY KEY (INST_ID, C_ID, SEC_ID)

--Ques 8.takes
ALTER TABLE takes
ADD FOREIGN KEY (C_ID, SEC_ID, SEM) REFERENCES section(C_ID, SEC_ID, SEM),
    FOREIGN KEY (S_ID) REFERENCES student(S_ID)

--Ques 8.student
ALTER TABLE student
ADD FOREIGN KEY (D_NAME) REFERENCES department(D_NAME)

--Ques 8.section
ALTER TABLE section
ADD FOREIGN KEY (C_ID) REFERENCES course(C_ID)

--Ques 8.course
ALTER TABLE course
ADD FOREIGN KEY (D_NAME) REFERENCES department(D_NAME)

--Ques 8.teaches
ALTER TABLE teaches
ADD FOREIGN KEY (INST_ID) REFERENCES instructor(INST_ID),
    FOREIGN KEY (C_ID, SEC_ID, SEM) REFERENCES section(C_ID, SEC_ID, SEM)

--Ques 8.instructor
ALTER TABLE instructor
ADD FOREIGN KEY (D_NAME) REFERENCES department(D_NAME)



DELETE FROM section WHERE C_ID LIKE CAST('CS-101' AS VARCHAR) AND SEC_ID = 1 AND SEM LIKE 'SPRING'

SELECT * FROM department
sql
ALTER TABLE section
DROP  CONSTRAINT PK__section__E1D969EC2BD154D5

select CONSTRAINT_NAME
from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
where TABLE_NAME = 'section'

---------------------------------------------------
SELECT Col.Column_Name, Tab.TABLE_NAME, CONSTRAINT_TYPE from 
    INFORMATION_SCHEMA.TABLE_CONSTRAINTS Tab, 
    INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE Col
WHERE 
    Col.Constraint_Name = Tab.Constraint_Name