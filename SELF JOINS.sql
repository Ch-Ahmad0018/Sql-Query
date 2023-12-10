CREATE DATABASE NADEEM;
USE NADEEM;
CREATE TABLE Students (
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade CHAR(1)
);

INSERT INTO Students (FirstName, LastName, Age, Grade)
VALUES
    ('John', 'Doe', 18, 'A'),
    ('Jane', 'Smith', 19, 'B'),
    ('Michael', 'Johnson', 20, 'B'),
    ('Emily', 'Brown', 18, 'A'),
    ('David', 'Williams', 19, 'C');
	SELECT * FROM STUDENTS AS A
	JOIN STUDENTS AS B ON
	 A.FirstName=B.Grade;
	 CREATE TABLE STUDENTS2(ID INT,NAME VARCHAR(25),MANAGER_ID INT);
	 INSERT INTO STUDENTS2 VALUES(101,'ADAM',103),(102,'BOB',104),(103,'CASEY',NULL),
	 (104,'DONALD',103);
	 SELECT a.NAME as managername,b.NAME FROM STUDENTS2 as a
	 JOIN STUDENTS2 as b ON
	 a.id=b.MANAGER_ID;
	 --UNIONS
	 SELECT ID FROM STUDENTS2
	 UNION 
	 SELECT MANAGER_ID FROM STUDENTS2;
	
