--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT salaries.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees 
INNER JOIN salaries
ON salaries.emp_no = employees.emp_no
ORDER BY salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT * 
FROM employees
WHERE extract(year from hire_date)=1986;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT DISTINCT ON (dept_manager.dept_no) dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager 
INNER JOIN departments 
ON dept_manager.dept_no= departments.dept_no
INNER JOIN employees 
ON dept_manager.emp_no = employees.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT DISTINCT ON (employees.emp_no) employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no;