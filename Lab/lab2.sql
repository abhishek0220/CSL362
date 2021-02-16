-- Author: Abhishek Chaudhary
-- Enrollment Number: 2018UCS0087
--
-- CSL362 DBMS LAB 2
------------------------------------------
--------------START-----------------------

SELECT Name from sys.Databases

USE CollegeData

SELECT table_catalog [database], table_name name
FROM INFORMATION_SCHEMA.TABLES
GO

--Ques 1
SELECT CONCAT(D_NAME,'_',BUDGET)
AS department_name_budget
FROM department
GO

--Ques 2
SELECT S_ID AS STUDENT_ID,
S_NAME AS STUDENT_NAME
FROM student
GO

--Ques 3

SELECT * FROM student
-- Update rows in table 'student'
UPDATE student
SET
    [S_ID] = RIGHT('00000'+CAST(CAST(S_ID AS varchar)+1 AS VARCHAR),5)
GO

-- To revese the above task
UPDATE student
SET
    [S_ID] = RIGHT('00000'+CAST(CAST(S_ID AS varchar)-1 AS VARCHAR),5)
GO

--QUES 4

SELECT * FROM course

-- Update rows in table 'course'
UPDATE course
SET
    [CRED] = CRED + 1
GO

-- Reverse rows in table 'course'
UPDATE course
SET
    [CRED] = CRED - 1
GO

--QUES 5

-- Create a new table called 'dummy'
-- Drop the table if it already exists
IF OBJECT_ID('dummy', 'U') IS NOT NULL
DROP TABLE dummy
GO
-- Create the table in the specified schema
CREATE TABLE dummy
(
    dummyId INT NOT NULL PRIMARY KEY, -- primary key column
    col1 [NVARCHAR](50) NOT NULL,
    col2 [NVARCHAR](50) NOT NULL
    -- specify more columns here
);
GO

SELECT * FROM dummy

-- Insert rows into table 'dummy'
INSERT INTO dummy
VALUES
(1,'abhishek','3rd Year'),
(2,'random','3rd Year')
GO

-- Delete rows from table 'dummy'
DELETE FROM dummy
GO

--Ques 6

SELECT * FROM course

DELETE FROM course WHERE C_ID LIKE 'BIO-101'
GO

--QUES 7

DELETE FROM course WHERE D_NAME LIKE 'Biology' AND C_ID LIKE 'BIO-301'
GO

--Ques 8

DELETE FROM course WHERE D_NAME LIKE 'Biology'
AND C_ID LIKE 'BIO-301' AND CRED = 4
GO
--Ques 9

DELETE FROM course
WHERE D_NAME LIKE 'Biology' OR C_ID LIKE 'BIO-301'
GO

--Ques 10
DELETE FROM course WHERE (D_NAME LIKE 'Biology' AND C_ID LIKE 'BIO-301') OR CRED = 4
GO

--Restore
-- Create a new table called 'course'
-- Drop the table if it already exists
IF OBJECT_ID('course', 'U') IS NOT NULL
DROP TABLE course
GO
-- Create the table
CREATE TABLE course
(
    C_ID TEXT NOT NULL,
    TITLE TEXT,
    D_NAME TEXT,
    CRED INTEGER
);
GO
INSERT INTO course
VALUES
('BIO-101', 'Intro. to Biology', 'Biology', '4'),
('BIO-301', 'Genetics', 'Biology', '4'),
('BIO-399', 'Computational Biology', 'Biology', '3'),
('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', '4'),
('CS-190', 'Game Design', 'Comp. Sci.', '4'),
('CS-315', 'Robotics', 'Comp. Sci.', '3'),
('CS-319', 'Image Processing', 'Comp. Sci.', '3'),
('CS-347', 'Database System Concepts', 'Comp. Sci.', '3'),
('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', '3'),
('FIN-201', 'Investment Banking', 'Finance', '3'),
('HIS-351', 'World History', 'History', '3'),
('MU-199', 'Music Video Production', 'Music', '3'),
('PHY-101', 'Physical Principles', 'Physics', '4')
GO