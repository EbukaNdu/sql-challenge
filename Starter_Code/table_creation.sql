CREATE TABLE Departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

SELECT * from Departments

CREATE TABLE Dept_Emp (
    emp_no INT,
    dept_no VARCHAR(4),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

SELECT * from Dept_Emp

CREATE TABLE Dept_Manager (
    dept_no VARCHAR(4),
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM Dept_Manager

CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE
);

SELECT * FROM Employees

CREATE TABLE Salaries (
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    PRIMARY KEY (emp_no)
);

SELECT * From Salaries

CREATE TABLE Titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

SELECT * From Titles
