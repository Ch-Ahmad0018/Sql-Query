CREATE DATABASE DATEANDTIME;
USE DATEANDTIME;
CREATE TABLE CITY3(ID INT,CITY_NAME VARCHAR(20),OrderDate DATE);
INSERT INTO CITY3 VALUES(7,'PUNE','2023-08-26'),(8,'MUMBAI','2023-08-26');
SELECT * FROM CITY3;
--DATE FUNCTIONS
SELECT GETDATE();
SELECT DATEDIFF(DAY,'2023-08-26','2022-08-26');
SELECT DATEADD(YEAR,6,'2022-08-26');
SELECT DATENAME(WEEKDAY, '1972-05-06') AS MonthName;
SELECT DATEPART(YEAR, '2023-08-20') AS YearValue;
--MATHEMATICAL FUNCTIONS
SELECT POWER(3, 4) AS Result;
SELECT ROUND(3.45678, 2) AS RoundedValue;
SELECT SIGN(-5) AS SignOfNegative;
SELECT SQRT(25) AS SquareRootOf25;
SELECT FLOOR(7.8) AS FloorOfPositive;
SELECT ABS(8) AS AbsoluteValueOfNegative;
--STRNG OPERATIONS
SELECT ASCII('a') AS ASCIIValueOfA;
SELECT REPLICATE('ABC', 3) AS ReplicatedString;
SELECT CHARINDEX('world', 'Hello world') AS SubstringPosition;
SELECT LEN('Hello world') AS SubstringPosition;
SELECT UPPER('Hello, World!') AS LowercaseString;
SELECT CHAR(65) AS CharacterA;
SELECT REVERSE('Hello') AS ReversedString;
SELECT RIGHT('Hello, world! ', 3) AS RightSubstring;
SELECT LEFT('Hello, world! ', 3) AS RightSubstring;
SELECT STUFF('Hello,world!',7,5,'AHMAD') AS RightSubstring;
SELECT SUBSTRING('Hello,world!',7,5) AS RightSubstring;
CREATE TABLE Students
(
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    FirstName VARCHAR(50));
	insert into Students values('a'),('b'),('c'),('d');
	select * from Students;
	drop table Students;