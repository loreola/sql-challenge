CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
    dept_name TEXT NOT NULL
);
SELECT * FROM departments 

CREATE TABLE titles(
    title_id VARCHAR(10) PRIMARY KEY,
    title TEXT 
);
SELECT * FROM titles

CREATE TABLE employees(
    emp_no INT PRIMARY KEY,
        emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
SELECT * FROM  employees

CREATE TABLE dept_manager(
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_manager

--DROP TABLE dept_emp
CREATE TABLE dept_emp(
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_emp

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM salaries