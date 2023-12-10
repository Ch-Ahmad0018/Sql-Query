CREATE DATABASE MOLFIX;
USE MOLFIX;
--7TH SEPT
CREATE TABLE MOLFIXJUMBO(SERIALNO INT IDENTITY(1,1) PRIMARY KEY,No1 int,No2 int,No3 int,
No4 int,No5 int,No6 int);
CREATE TABLE MOLFIXTWIN(SERIALNO INT IDENTITY(1,1) PRIMARY KEY,No1 int,No2 int,No3 int,
No4 int,No5 int,No6 int);
CREATE TABLE MOLFIXPANT(SERIALNO INT IDENTITY(1,1) PRIMARY KEY,No3 int,
No4 int,No5 int,No6 int);
CREATE TABLE MOLFIXMEGA(SERIALNO INT IDENTITY(1,1) PRIMARY KEY,No1 int,No2 int,No3 int,
No4 int,No5 int,No6 int);
CREATE TABLE GoodcareBlueSmall(SERIALNO INT IDENTITY(1,1) PRIMARY KEY,No2 int,No3 int,
No4 int,No5 int,No6 int);
CREATE TABLE GoodcareBlueMega(SERIALNO INT IDENTITY(1,1) PRIMARY KEY,No2 int,No3 int,
No4 int,No5 int,No6 int);
CREATE TABLE GoodcareNatural(SERIALNO INT IDENTITY(1,1) PRIMARY KEY,No2 int,No3 int,
No4 int,No5 int,No6 int);
SELECT * FROM MOLFIXJUMBO;
SELECT * FROM MOLFIXPANT;
INSERT INTO MOLFIXJUMBO VALUES(0,8,0,3,0,0,GETDATE(),'ALREADY');
DELETE FROM MOLFIXJUMBO WHERE SERIALNO=1;
ALTER TABLE MOLFIXPANT
ADD EXACTDATE DATE;
ALTER TABLE MOLFIXPANT
ADD HAPPENING VARCHAR(30);
INSERT INTO MOLFIXPANT VALUES(2,8,0,0,GETDATE(),'Already');

