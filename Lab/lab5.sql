SELECT Name from sys.Databases

USE CollegeData

SELECT table_catalog [database], table_name name
FROM INFORMATION_SCHEMA.TABLES
GO

--ques 1
SELECT MAX(SAL) as SAL FROM instructor 
WHERE SAL < ALL(SELECT MAX(SAL) FROM instructor)

--ques 2
SELECT AVG(SAL) as SAL FROM instructor

--ques 3
SELECT COUNT(*) FROM instructor WHERE SAL < (SELECT AVG(SAL) FROM instructor)

--ques 4
SELECT COUNT(*) FROM student WHERE D_NAME LIKE 'Comp. Sci.'

--ques 5
SELECT COUNT(DISTINCT D_NAME) FROM student

--ques 6




--RESTORE COMMANDS
-- Create a new table called 'department'
-- Drop the table if it already exists
IF OBJECT_ID('department', 'U') IS NOT NULL
DROP TABLE department
GO
-- Create the table
CREATE TABLE department
(
    D_NAME NVARCHAR(50) NOT NULL,
    BUILDING NVARCHAR(50) NOT NULL,
    BUDGET INTEGER
);
GO
INSERT INTO department
VALUES
('Biology', 'Watson', '90000'),
('Comp. Sci.', 'Taylor', '100000'),
('Elec. Eng.', 'Taylor', '85000'),
('Finance', 'Painter', '120000'),
('History', 'Painter', '50000'),
('Music', 'Packard', '80000'),
('Physics', 'Watson', '70000')
GO
