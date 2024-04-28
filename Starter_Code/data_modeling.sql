
CREATE TABLE Departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    hire_date DATE
);




CREATE TABLE Dept_Emp (
    emp_no INT,
    dept_no VARCHAR(4),
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    PRIMARY KEY (emp_no, dept_no, from_date)
);


