CREATE DATABASE JOINS;
USE JOINS;
CREATE TABLE STUDENT5(student_id int,Name VARCHAR(30));
INSERT INTO STUDENT5 VALUES(101,'Adam'),(102,'BOB'),(103,'CASEY');
SELECT * FROM STUDENT5 WHERE LEFT(Name,2)='AD';
SELECT * FROM STUDENT5 WHERE ID 
CREATE TABLE COURSE(student_id int,Course VARCHAR(30));
INSERT INTO COURSE VALUES(102,'ENGLISH'),(105,'MATHEMATICS'),(103,'PHYSICS');
ALTER TABLE STUDENT5
EXEC sp_rename'COURSE.STUDENT_ID','C','COLUMN';
EXEC sp_rename 'course','c';
ADD AGE INT NOT NULL;
--INNER JOINS
SELECT * FROM STUDENT5 as s
FULL JOIN COURSE as c
ON s.student_id=c.student_id;
--LEFT JOINS
SELECT * FROM STUDENT5 as s
LEFT JOIN COURSE as c
ON s.student_id=c.student_id;
--RIGHT JOINS
SELECT * FROM STUDENT5 as s
RIGHT JOIN COURSE as c
ON s.student_id=c.student_id;
--FULL JOIN
SELECT * FROM STUDENT5 as s
LEFT JOIN COURSE as c
ON s.student_id=c.student_id
UNION
SELECT * FROM STUDENT5 as s
RIGHT JOIN COURSE as c
ON s.student_id=c.student_id;
--LEFT EXCLUSIVE JOIN
SELECT * FROM STUDENT5 as s
LEFT JOIN COURSE as c
ON s.student_id=c.student_id
WHERE c.student_id IS NULL;
--SELF JOIN 
SELECT * FROM STUDENT5 as a
JOIN STUDENT5 as b
ON a.student_id=b.student_id;
CREATE TABLE EMPLOYEE(student_id int,Name VARCHAR(30),MANAGER_ID INT);
INSERT INTO EMPLOYEE VALUES(101,'Adam',103),(102,'BOB',101),(103,'CASEY',101);
SELECT a.name  as Manager_name,b.Name  FROM EMPLOYEE as a
join EMPLOYEE as b
ON a.student_id=b.MANAGER_ID;

ALTER TABLE EMPLOYEE2
ADD Email varchar(255);

CREATE TABLE EMPLOYEE2(student_id int,Name VARCHAR(30),MANAGER_ID INT);
SELECT DATENAME(DAY,'2023-08-27');
SELECT STUFF('AHMAD',3,2,'HE')
SELECT SUBSTRING('AHMAD',3,2);
CREATE TABLE AHMAD(ID INT IDENTITY(1,1) PRIMARY KEY,NAME VARCHAR(10));
SELECT GETDATE();
SELECT DATEDIFF(DAY,'2023-08-27','2022-08-27')
SELECT DATEADD(DAY,5,'2023-08-27')
SELECT DATENAME(WEEKDAY,'2023-08-27')
SELECT ASCII('a');
select CHAR(65);
select CHARINDEX('WORLD','WORLD')
SELECT STUFF('HELLO',3,1,'HELLO')
SELECT STUFF('CHAUDHRY',3,6,' AHMAD')
SELECT STUFF('KHOTA',1,0,'PIDA ')
SELECT SUBSTRING('AHMAD',3,2)
