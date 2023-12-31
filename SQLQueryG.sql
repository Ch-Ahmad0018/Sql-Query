CREATE DATABASE XYZ;
USE XYZ;
CREATE TABLE EMPLOYEE(ID INT PRIMARY KEY,NAME VARCHAR(30),SALARY INT);
INSERT INTO EMPLOYEE VALUES(101,'Adam',25000),(102,'Sohaib',4000),(103,'Zahid',50000);
SELECT * FROM EMPLOYEE WHERE NAME='ADAM';
INSERT INTO EMPLOYEE VALUES(104,'Ndam',25000),(105,'Yohaib',4000),(106,'Cahid',50000);
SELECT * FROM EMPLOYEE ORDER BY ID DESC;
SELECT COUNT(SALARY) FROM EMPLOYEE;
SELECT MAX(SALARY) FROM EMPLOYEE;
SELECT MIN(SALARY) FROM EMPLOYEE;
SELECT AVG(SALARY) FROM EMPLOYEE;
SELECT SUM(SALARY) FROM EMPLOYEE;
CREATE TABLE EMPLOYEE2(ID INT PRIMARY KEY,NAME VARCHAR(30),SALARY INT,City VARCHAR(50));
INSERT INTO EMPLOYEE2 VALUES(101,'Adam',25000,'Gujrat'),(102,'Sohaib',4000,'Gujrat'),
(103,'Zahid',50000,'Gujrat');
SELECT * FROM EMPLOYEE2;
SELECT City,COUNT(NAME) FROM EMPLOYEE2 Group by City;
INSERT INTO EMPLOYEE2 VALUES(104,'Ndam',25000,'Sialkot'),(105,'Yohaib',4000,'Sialkot'),
(106,'Cahid',50000,'PUNE');
CREATE TABLE EMPLOYEE3(ID INT PRIMARY KEY,NAME VARCHAR(30),SALARY INT,City VARCHAR(50),MARKS INT);
INSERT INTO EMPLOYEE3 VALUES(101,'Adam',25000,'Gujrat',80),(102,'Sohaib',4000,'Gujrat',90),
(103,'Zahid',50000,'Gujrat',85);
INSERT INTO EMPLOYEE3 VALUES(104,'Ndam',25000,'Sialkot',80),(105,'Yohaib',4000,'Sialkot',75),
(106,'Cahid',50000,'PUNE',90);
SELECT * FROM EMPLOYEE3;
SELECT City,COUNT(ID) FROM EMPLOYEE2 Group by City 
ORDER BY COUNT(ID) ;
SELECT MARKS,COUNT(ID) FROM EMPLOYEE3 GROUP BY MARKS ORDER BY MARKS DESC;
CREATE TABLE DEPARTMENT(departmentNAME VARCHAR(40) UNIQUE NOT NULL,
DEPARTMENTNUMBER INT PRIMARY KEY,STARTDATE DATE);
CREATE TABLE EMPLOY(EMP_NAME VARCHAR(15) NOT NULL,SSNnUMBER CHAR(9) PRIMARY KEY,BIRTHDAY DATE,
ADDRESS VARCHAR(50),GENDER CHAR CHECK(GENDER IN('M','F','m','f')),
SALARY DECIMAL(10,2) DEFAULT '800',DEPARTNUMBER INT,FOREIGN KEY (DEPARTNUMBER) REFERENCES
DEPARTMENT(DEPARTMENTNUMBER));
SELECT * FROM EMPLOY;
create table dept_locations(departmentNumber int PRIMARY KEY,DEPARTMENT_LOCATIONS VARCHAR(15) 
UNIQUE NOT NULL,FOREIGN KEY(departmentNumber) REFERENCES DEPARTMENT(DEPARTMENTNUMBER));
SELECT * FROM dept_locations;
SELECT city FROM EMPLOYEE3 GROUP BY City HAVING MAX(MARKS)>80;
UPDATE EMPLOY SET  



