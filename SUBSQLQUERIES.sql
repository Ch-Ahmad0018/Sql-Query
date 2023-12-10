USE MASTER;
CREATE TABLE Students (
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Marks INT
);
DROP TABLE Students;
INSERT INTO Students (FirstName, LastName, Marks)
VALUES
    ('John', 'Doe', 85),
    ('Jane', 'Smith', 92),
    ('Michael', 'Johnson', 78),
    ('Emily', 'Brown', 95),
    ('David', 'Williams', 60);
	SELECT AVG(MARKS) FROM STUDENTS;
	SELECT FIRSTNAME FROM STUDENTS
	WHERE MARKS>(SELECT AVG(MARKS) FROM STUDENTS);
	SELECT FirstName FROM STUDENTS
	WHERE MARKS%2=0;
	SELECT MARKS FROM STUDENTS WHERE MARKS%2=0;
	SELECT FirstName,MARKS FROM STUDENTS
	WHERE MARKS IN(SELECT MARKS FROM STUDENTS WHERE MARKS%2=0);
	 drop table students;
	 CREATE TABLE Students (
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Marks INT,
    City VARCHAR(50)
);

INSERT INTO Students (FirstName, LastName, Marks, City)
VALUES
    ('John', 'Doe', 85, 'New York'),
    ('Jane', 'Smith', 92, 'Los Angeles'),
    ('Michael', 'Johnson', 78, 'Chicago'),
    ('Emily', 'Brown', 95, 'Chicago'),
    ('David', 'Williams', 60, 'chicago');
	SELECT MAX(MARKS) FROM Students 
	WHERE CITY='CHICAGO';
	SELECT * FROM STUDENTS WHERE CITY='CHICAGO';
	SELECT MAX(MARKS) 
	FROM (SELECT * FROM STUDENTS WHERE CITY='CHICAGO') AS TEMP; 
	--CREATE VIEW VIEW1 AS
	SELECT CITY FROM Students;
	SELECT * FROM VIEW1;
	SELECT COUNT(FirstName) FROM STUDENTS WHERE CITY='CHICAGO';

	SELECT FirstName FROM STUDENTS WHERE NOT EXISTS(SELECT COUNT(FirstName) FROM STUDENTS WHERE CITY='CHICAGO');
