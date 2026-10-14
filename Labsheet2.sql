CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT
);

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Duration VARCHAR(30),
    Fees DECIMAL(10,2)
);

INSERT INTO Student VALUES
(1, 'Aarushi', 20, 'BCA', 'Delhi');

INSERT INTO Student VALUES (2, 'Rahul', 21, 'BBA', 'Meerut');
INSERT INTO Student VALUES (3, 'Priya', 19, 'BCA', 'Delhi');
INSERT INTO Student VALUES (4, 'Aman', 22, 'BTech', 'Noida');
INSERT INTO Student VALUES (5, 'Neha', 20, 'BCA', 'Meerut');
INSERT INTO Student VALUES (6, 'Rohit', 23, 'BBA', 'Delhi');

INSERT INTO Student VALUES
(7, 'Anjali', 20, 'BCA', 'Ghaziabad'),
(8, 'Karan', 21, 'BBA', 'Noida'),
(9, 'Simran', 19, 'BTech', 'Delhi');

INSERT INTO Employee VALUES
(101, 'Amit', 'IT', 40000, 'amit@gmail.com'),
(102, 'Neha', 'HR', 35000, 'neha@gmail.com'),
(103, 'Ravi', 'IT', 50000, 'ravi@gmail.com');

INSERT INTO Department VALUES
(1, 'IT', 'Delhi'),
(2, 'HR', 'Noida'),
(3, 'Finance', 'Meerut');

INSERT INTO Product VALUES
(1, 'Laptop', 50000, 10),
(2, 'Mouse', 500, 20),
(3, 'Keyboard', 1000, 0);

INSERT INTO Customer VALUES
(1, 'Aarushi', 'aarushi@gmail.com', '9876543210'),
(2, 'Rahul', 'rahul@gmail.com', '9876543211');

INSERT INTO Course VALUES
(1, 'BCA', '3 Years', 60000),
(2, 'BBA', '3 Years', 55000),
(3, 'BTech', '4 Years', 100000);

INSERT INTO Student (Student_ID, Name, Age, Course, City)
VALUES (10, 'Pooja', 20, 'BCA', 'Delhi');

INSERT INTO Student (Student_ID, Name, Course)
VALUES (11, 'Kavita', 'BCA');

UPDATE Student
SET City = 'Mumbai'
WHERE Student_ID = 1;

UPDATE Employee
SET Salary = 45000
WHERE Emp_ID = 101;

UPDATE Employee
SET Salary = Salary * 1.10;

UPDATE Product
SET Price = Price * 1.05;

UPDATE Student
SET Course = 'BBA'
WHERE Student_ID = 1;

UPDATE Employee
SET Department = 'Finance'
WHERE Emp_ID = 102;

UPDATE Student
SET City = 'Delhi'
WHERE City = 'Meerut';

UPDATE Course
SET Fees = 65000
WHERE Course_ID = 1;

UPDATE Student
SET Age = 21, City = 'Noida'
WHERE Student_ID = 2;

SELECT * FROM Student;

DELETE FROM Student
WHERE Student_ID = 10;

SELECT * FROM Student;

DELETE FROM Student
WHERE City = 'Ghaziabad';

SELECT * FROM Student;

DELETE FROM Employee
WHERE Salary < 30000;

SELECT * FROM Employee;

DELETE FROM Product
WHERE Quantity = 0;

SELECT * FROM Product;

DELETE FROM Student
WHERE City = 'Delhi' AND Course = 'BCA';

SELECT * FROM Student;

INSERT INTO Student VALUES
(12, 'Kavita', 22, 'BCA', 'Jaipur');

SELECT * FROM Student;

UPDATE Student
SET City = 'Pune'
WHERE Student_ID = 12;

SELECT * FROM Student;

DELETE FROM Student
WHERE Student_ID = 12;

SELECT * FROM Student;