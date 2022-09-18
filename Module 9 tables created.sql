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

--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name
FROM employees
WHERE hire_date >= '01/01/1986' and hire_date <= '12/31/1986'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no,departments.dept_name, e.emp_no, e.last_name,e.first_name
FROM employees AS e
INNER JOIN dept_emp AS d
ON e.emp_no=d.emp_no
INNER JOIN departments
ON d.dept_no= departments.dept_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees AS e
INNER JOIN dept_manager AS dm
ON e.emp_no = dm.emp_no
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name,last_name, sex
FROM employees
WHERE first_name = 'Hercules' or last_name LIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON  d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development'

--List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT COUNT (last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT (last_name) DESC