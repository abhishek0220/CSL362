-- Author: Abhishek Chaudhary
-- Enrollment Number: 2018UCS0087
--
-- Written for CSL362 DBMS Assignment 1 
------------------------------------------
--------------START-----------------------

-- Create a new table called 'student'
-- Drop the table if it already exists
IF OBJECT_ID('student', 'U') IS NOT NULL
DROP TABLE student
GO
-- Create the table
CREATE TABLE student
(
    S_ID TEXT NOT NULL,
    S_NAME TEXT,
    D_NAME TEXT,
    TOT_CRED INTEGER
);
GO

-- Create a new table called 'instructor'
-- Drop the table if it already exists
IF OBJECT_ID('instructor', 'U') IS NOT NULL
DROP TABLE instructor
GO
-- Create the table
CREATE TABLE instructor
(
    INST_ID TEXT NOT NULL,
    INST_NAME TEXT,
    D_NAME TEXT,
    SAL INTEGER
);
GO

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

-- Create a new table called 'takes'
-- Drop the table if it already exists
IF OBJECT_ID('takes', 'U') IS NOT NULL
DROP TABLE takes
GO
-- Create the table
CREATE TABLE takes
(
    S_ID TEXT NOT NULL,
    C_ID TEXT,
    SEC_ID TEXT,
    SEM TEXT,
    YEAR INTEGER,
    GRADE TEXT
);
GO

-- Create a new table called 'department'
-- Drop the table if it already exists
IF OBJECT_ID('department', 'U') IS NOT NULL
DROP TABLE department
GO
-- Create the table
CREATE TABLE department
(
    D_NAME TEXT,
    BUILDING TEXT,
    BUDGET INTEGER
);
GO

-- Create a new table called 'section'
-- Drop the table if it already exists
IF OBJECT_ID('section', 'U') IS NOT NULL
DROP TABLE section
GO
-- Create the table
CREATE TABLE section
(
    C_ID TEXT,
    SEC_ID TEXT,
    SEM TEXT,
    YEAR INTEGER
);
GO

-- Create a new table called 'teaches'
-- Drop the table if it already exists
IF OBJECT_ID('teaches', 'U') IS NOT NULL
DROP TABLE teaches
GO
-- Create the table
CREATE TABLE teaches
(
    INST_ID TEXT,
    C_ID TEXT,
    SEC_ID TEXT,
    SEM TEXT,
    YEAR INTEGER
);
GO

-- Get a list of tables in the current database
SELECT table_catalog [database], table_name name
FROM INFORMATION_SCHEMA.TABLES
GO

-- Insert rows into table 'student'
INSERT INTO student
VALUES
('00128', 'Zhang', 'Comp. Sci.', '102'),
('12345', 'Shankar', 'Comp. Sci.', '32'),
('19991', 'Brandt', 'History', '80'),
('23121', 'Chavez', 'Finance', '110'),
('44553', 'Peltier', 'Physics', '56'),
('45678', 'Levy', 'Physics', '46'),
('54321', 'Williams', 'Comp. Sci.', '54'),
('55739', 'Sanchez', 'Music', '38'),
('70557', 'Snow', 'Physics', '0'),
('76543', 'Brown', 'Comp. Sci.', '58'),
('76653', 'Aoi', 'Elec. Eng.', '60'),
('98765', 'Bourikas', 'Elec. Eng.', '98'),
('98988', 'Tanaka', 'Biology', '120')
GO

SELECT * FROM student
GO

-- Insert rows into table 'instructor'
INSERT INTO instructor
VALUES
('22222', 'Einstein', 'Physics', '95000'),
('12121', 'Wu', 'Finance', '90000'),
('32343', 'El Said', 'History', '60000'),
('45565', 'Katz', 'Comp. Sci.', '75000'),
('98345','Kim','Elec. Eng.', '80000'),
('76766', 'Crick', 'Biology', '72000'),
('10101', 'Srinivasan', 'Comp. Sci.', '65000'),
('58583', 'Califieri', 'History', '62000'),
('83821', 'Brandt', 'Comp. Sci.', '92000'),
('15151', 'Mozart', 'Music', '40000'),
('33456', 'Gold', 'Physics', '87000'),
('76543', 'Singh', 'Finance', '80000')
GO

SELECT * FROM instructor
GO

-- Insert rows into table 'course'
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

SELECT * FROM course
GO

-- Insert rows into table 'teaches'
INSERT INTO teaches
VALUES
('10101', 'CS-101', '1', 'Fall', '2009'),
('10101', 'CS-315', '1', 'Spring', '2010'),
('10101', 'CS-347', '1', 'Fall', '2009'),
('12121', 'FIN-201', '1', 'Spring', '2010'),
('15151', 'MU-199', '1', 'Spring', '2010'),
('22222', 'PHY-101', '1', 'Fall', '2009'),
('32343', 'HIS-351', '1', 'Spring', '2010'),
('45565', 'CS-101', '1', 'Spring', '2010'),
('45565', 'CS-319', '1', 'Spring', '2010'),
('76766', 'BIO-101', '1', 'Summer', '2009'),
('76766', 'BIO-301', '1', 'Summer', '2010'),
('83821', 'CS-190', '1', 'Spring', '2009'),
('83821', 'CS-190', '2', 'Spring', '2009'),
('83821', 'CS-319', '2', 'Spring', '2010'),
('98345', 'EE-181', '1', 'Spring', '2009')
GO

SELECT * FROM teaches
GO

-- Insert rows into table 'department'
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

SELECT * FROM department
GO

-- Insert rows into table 'takes'
INSERT INTO takes
VALUES
('00128', 'CS-101', '1', 'Fall', '2009', 'A'),
('00128', 'CS-347', '1', 'Fall', '2009', 'A-'),
('12345', 'CS-101', '1', 'Fall', '2009', 'C'),
('12345', 'CS-190', '2', 'Spring', '2009', 'A'),
('12345', 'CS-315', '1', 'Spring', '2010', 'A'),
('12345', 'CS-347', '1', 'Fall', '2009', 'A'),
('19991', 'HIS-351', '1', 'Spring', '2010', 'B'),
('23121', 'FIN-201', '1', 'Spring', '2010', 'C+'),
('44553', 'PHY-101', '1', 'Fall', '2009', 'B-'),
('45678', 'CS-101', '1', 'Fall', '2009', 'F'),
('45678', 'CS-101', '1', 'Spring', '2010', 'B+'),
('45678', 'CS-319', '1', 'Spring', '2010', 'B'),
('54321', 'CS-101', '1', 'Fall', '2009', 'A-'),
('54321', 'CS-190', '2', 'Spring', '2009', 'B+'),
('55739', 'MU-199', '1', 'Spring', '2010', 'A-'),
('76543', 'CS-101', '1', 'Fall', '2009', 'A'),
('76543', 'CS-319', '2', 'Spring', '2010', 'A'),
('76653', 'EE-181', '1', 'Spring', '2009', 'C'),
('98765', 'CS-101', '1', 'Fall', '2009', 'C-'),
('98765', 'CS-315', '1', 'Spring', '2010', 'B'),
('98988', 'BIO-101', '1', 'Summer', '2009', 'A'),
('98988', 'BIO-301', '1', 'Summer', '2010', null)
GO

SELECT * FROM takes
GO

-- Insert rows into table 'section'
INSERT INTO section
VALUES
('BIO-101', '1', 'Summer', '2009'),
('BIO-301', '1', 'Summer', '2010'),
('CS-101', '1', 'Fall', '2009'),
('CS-101', '1', 'Spring', '2010'),
('CS-190', '1', 'Spring', '2009'),
('CS-190', '2', 'Spring', '2009'),
('CS-315', '1', 'Spring', '2010'),
('CS-319', '1', 'Spring', '2010'),
('CS-319', '2', 'Spring', '2010'),
('CS-347', '1', 'Fall', '2009'),
('EE-181', '1', 'Spring', '2009'),
('FIN-201', '1', 'Spring', '2010'),
('HIS-351', '1', 'Spring', '2010'),
('MU-199', '1', 'Spring', '2010'),
('PHY-101', '1', 'Fall', '2009')
GO

SELECT * FROM section
GO

-- Add a new column 'building' to table 'section'
ALTER TABLE section
    ADD Checkt TEXT  NULL
GO

SELECT * FROM section
GO

-- Update rows in table 'section'
UPDATE section
SET building = 'Painter' WHERE C_ID LIKE 'BIO-101'
UPDATE section
SET building = 'Painter' WHERE C_ID LIKE 'BIO-301'
UPDATE section
SET building = 'Packard' WHERE C_ID LIKE 'CS-101'
UPDATE section
SET building = 'Taylor' WHERE C_ID LIKE 'CS-190'
UPDATE section
SET building = 'Watson' WHERE C_ID LIKE 'CS-315'
UPDATE section
SET building = 'Watson' WHERE C_ID LIKE 'CS-319'
UPDATE section
SET building = 'Taylor' WHERE C_ID LIKE 'CS-347'
UPDATE section
SET building = 'Taylor' WHERE C_ID LIKE 'EE-181'
UPDATE section
SET building = 'Packard' WHERE C_ID LIKE 'FIN-201'
UPDATE section
SET building = 'Painter' WHERE C_ID LIKE 'HIS-351'
UPDATE section
SET building = 'Packard' WHERE C_ID LIKE 'MU-199'
UPDATE section
SET building = 'Watson' WHERE C_ID LIKE 'PHY-101'
GO

SELECT C_ID, building FROM section
GO
