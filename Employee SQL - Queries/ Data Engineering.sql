DROP TABLE departments;

CREATE TABLE departments(
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

SELECT * FROM departments

DROP TABLE employees

CREATE TABLE employees(
emp_no INTEGER NOT NULL,
birth_date VARCHAR NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
gender VARCHAR NOT NULL,
hire_date VARCHAR NOT NULL,
PRIMARY KEY(emp_no)
);

SELECT * FROM employees

DROP TABLE dept_emp;

CREATE TABLE dept_emp(
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
from_date DATE NOT NULL,
to_date DATE NOT NULL
);

SELECT * FROM dept_emp

DROP TABLE dept_managers;

CREATE TABLE dept_managers(
dept_no VARCHAR NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
from_date DATE NOT NULL,
to_date DATE NOT NULL
);

SELECT * FROM dept_managers


DROP TABLE salaries

CREATE TABLE salaries(
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary VARCHAR NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL
);

SELECT * FROM salaries


DROP TABLE titles

CREATE TABLE titles(
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
title VARCHAR NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL
);

SELECT * FROM titles