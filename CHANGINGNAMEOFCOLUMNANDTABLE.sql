CREATE TABLE Students4 (
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade CHAR(1)
);
DROP TABLE Students4;
INSERT INTO Students4(FirstName, LastName, Age, Grade)
VALUES
    ('John', 'Doe', 18, 'A'),
    ('Jane', 'Smith', 19, 'B'),
    ('Michael', 'Johnson', 20, 'B'),
    ('Emily', 'Brown', 18, 'A'),
    ('David', 'Williams', 19, 'C');
	SELECT * FROM Students4;
	--DELETE FROM Students3 WHERE AGE >18;
	--TRUNCATE TABLE STUDENTS3;
	EXEC sp_rename 'STUDENTS4.FIRSTNAME', 'HELLO', 'COLUMN';
	ALTER TABLE STUDENT4 
	DROP COLUMN AGE;
	EXEC sp_rename 'STUDENTS4', 'Staff';
	SELECT * FROM STAFF;
	DROP TABLE STAFF;