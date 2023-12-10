CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(100),
    salary DECIMAL(10, 2)
);
INSERT INTO employees (employee_id, first_name, last_name, job_title, salary)
VALUES
    (1, 'John', 'Doe', 'Software Engineer', 75000.00),
    (2, 'Jane', 'Smith', 'Marketing Manager', 65000.00),
    (3, 'Michael', 'Johnson', 'Sales Representative', 55000.00);
	CREATE PROCEDURE PROCEDURE9 @EMPNAME VARCHAR(50),@EMPID INT
	AS 
	BEGIN 
	SELECT * FROM employees WHERE first_name=@EMPNAME AND employee_id=@EMPID
	END;
	EXEC PROCEDURE9 @EMPNAME='JOHN',@EMPID=1
