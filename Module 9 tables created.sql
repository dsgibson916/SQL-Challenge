SELECT * FROM departments

DROP TABLE departments

CREATE TABLE departments (
dept_no VARCHAR,
dept_name VARCHAR
);


SELECT * FROM dept_manager

DROP TABLE dept_manager

CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no VARCHAR
);

SELECT * FROM dept_emp

DROP TABLE dept_emp

CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR

);

SELECT * FROM employees

DROP TABLE employees

CREATE TABLE employees (
emp_no INT,
emp_title_id VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
Sex VARCHAR,
hire_date DATE
);

SELECT * FROM salaries

DROP TABLE salaries

CREATE TABLE salaries (
emp_no INT,
salary DEC
);

SELECT * FROM titles

DROP TABLE titles

CREATE TABLE titles (
title_id VARCHAR,
title VARCHAR
);

