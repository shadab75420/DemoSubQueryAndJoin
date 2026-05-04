CREATE DATABASE EmployeeManagementDB;
USE EmployeeManagementDB;

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'IT', 'Delhi'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Delhi'),
(4, 'Sales', 'Bangalore');

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DeptID INT,
    Salary INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

INSERT INTO Employees VALUES
(1, 'John', 'Doe', 1, 50000),
(2, 'Jane', 'Smith', 2, 60000),
(3, 'Alice', 'Brown', 1, 70000),
(4, 'Bob', 'Johnson', 3, 55000),
(5, 'Charlie', 'Davis', 3, 80000),
(6, 'David', 'Wilson', 4, 45000),
(7, 'Eva', 'Taylor', 2, 65000),
(8, 'Frank', 'Anderson', 1, 70000);

SELECT * FROM Departments;
SELECT * FROM Employees;

SELECT * FROM Employees
where Salary >(SELECT AVG(Salary) as AverageSalary from Employees);

SELECT * FROM Employees 
WHERE DeptID IN (SELECT DeptID from Departments where Location = 'Delhi');

SELECT * FROM Employees
where Salary = (SELECT MAX(Salary) as MaximumSalary from Employees);

SELECT *
FROM Employees e
WHERE Salary > ( SELECT AVG(Salary) FROM Employees WHERE DeptID = e.DeptID);

SELECT *
FROM Employees e
WHERE Salary = (SELECT MAX(Salary)FROM Employees WHERE DeptID = e.DeptID);

SELECT DeptID
FROM Employees
GROUP BY DeptID
HAVING AVG(Salary) > (SELECT AVG(Salary) FROM Employees);

SELECT e.*
FROM Employees e
JOIN ( SELECT DeptID, AVG(Salary) AS AvgSal FROM Employees
GROUP BY DeptID) d ON e.DeptID = d.DeptID WHERE e.Salary > d.AvgSal;

SELECT MAX(Salary) AS SecondHighest
FROM Employees
WHERE Salary < (SELECT MAX(Salary) FROM Employees);

SELECT *
FROM Employees WHERE Salary > ANY 
(SELECT Salary FROM Employees WHERE DeptID = 2);