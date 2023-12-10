CREATE DATABASE PRACTICE;
USE PRACTICE;
CREATE TABLE EMPLOYEE(PRSI INT PRIMARY KEY,NAME VARCHAR(25) NOT NULL,DOB DATE NOT NULL,
ADDRESS VARCHAR(50) NOT NULL,GENDER VARCHAR(2) CHECK (GENDER IN('M','F','m','f')) not null,
salary int,departmentno int NOT NULL,
FOREIGN KEY (departmentno) REFERENCES DEPARTMENT(DEPARTMENTNO) ON DELETE CASCADE
);
CREATE TABLE DEPARTMENT(DEPARTMENTNAME VARCHAR(35) NOT NULL,DEPARTMENTNO INT PRIMARY KEY
);
SELECT * FROM EMPLOYEE;
SELECT * FROM DEPARTMENT;
INSERT INTO DEPARTMENT VALUES('PSYCOLOGY',1),('SOCIOLOGY',2),('BIOLOGY',3);
INSERT INTO EMPLOYEE VALUES(1,'AHMAD','2002-01-14','VILLAGE MAROOF','M',25000,2),
(2,'SEEMAB','1997-07-16','VILLAGE MAROOF','M',27000,2),
(3,'SARMAD','1997-07-21','VILLAGE MAROOF','F',30000,1),
(4,'DANIYAL','2010-07-14','VILLAGE MAROOF','M',35000,3);
UPDATE EMPLOYEE SET SALARY=salary+(salary*15)/100;
SELECT * FROM EMPLOYEE WHERE LEFT(NAME,1)='S';
SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 27000 AND 35000;
SELECT NAME,departmentno FROM EMPLOYEE WHERE departmentno BETWEEN 1 AND 3 ORDER BY NAME;
DELETE FROM DEPARTMENT WHERE DEPARTMENTNAME='PSYCOLOGY';
ALTER TABLE DEPARTMENT ADD MANAGERID INT;
ALTER TABLE DEPARTMENT DROP COLUMN MANAGERID;
DROP TABLE EMPLOYEE;
DROP TABLE DEPARTMENT;
DROP VIEW VIEW1;
CREATE VIEW VIEW1 AS 
SELECT NAME,ADDRESS,GENDER,SALARY FROM EMPLOYEE;
SELECT * FROM VIEW1;
SELECT *,
CASE 
WHEN SALARY<=25000 THEN 'CEO'
WHEN SALARY<=31000 THEN 'AC'
WHEN SALARY<=35000 THEN 'HERO'
END AS DELEGATION FROM EMPLOYEE;
SELECT *, IIF(SALARY<=25000,'Excellent',IIF(SALARY<=31000,'Very Good',IIF(SALARY<=31000,'GOOD',
'AVERAGE')))
AS DELEGATION FROM EMPLOYEE;
CREATE TABLE exam_scores (
 student_id INT PRIMARY KEY,
 student_name VARCHAR(50),
 score INT
);INSERT INTO exam_scores (student_id, student_name, score)
VALUES
 (1, 'John', 95),
 (2, 'Jane', 83),
 (3, 'Bob', 72),
 (4, 'Alice', 68),
 (5, 'Michael', 90); Select student_id, student_name, score,
case
when score >= 90 then 'Excellent'
when score >= 80 then 'Very Good'
when score >= 70 then 'Good'
when score < 70 then 'Average'
end as grade from exam_scoresCREATE TABLE Students (
 StudentID INT PRIMARY KEY,
 FirstName VARCHAR(50),
 LastName VARCHAR(50)
);
CREATE TABLE Courses (
 CourseID INT PRIMARY KEY,
 CourseName VARCHAR(50)
);CREATE TABLE StudentCourses (
 StudentID INT,
 CourseID INT,
 PRIMARY KEY (StudentID, CourseID),
 FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
 FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
INSERT INTO Students (StudentID, FirstName, LastName)
VALUES
 (1, 'John', 'Doe'),
 (2, 'Jane', 'Smith'),
 (3, 'Michael', 'Johnson'),
 (4, 'Emily', 'Williams');
create view specific_Student as
Select Courses.CourseName
from Courses
join StudentCourses
on (Courses.CourseID=StudentCourses.CourseID and
StudentCourses.StudentID=1);
select * from specific_Student
Select Students.FirstName,Students.LastName,Courses.CourseName
from Students
left join
StudentCourses
on(Students.StudentID=StudentCourses.StudentID)
left join
Courses
on(Courses.CourseID=StudentCourses.CourseID)
Select Students.FirstName,Students.LastName,Courses.CourseName
from Students
left join
StudentCourses
on(Students.StudentID=StudentCourses.StudentID)
right join
Courses
on(Courses.CourseID=StudentCourses.CourseID)
INSERT INTO Courses (CourseID, CourseName)
VALUES
 (101, 'Math'),
 (102, 'History'),
 (103, 'Science'),
 (104, 'Literature');
INSERT INTO StudentCourses (StudentID, CourseID)
VALUES
 (1, 101),
 (1, 103),
 (2, 102),
 (2, 103),
 (3, 101),
 (3, 104),
 (4, 102);