employees
-
emp_no INT PK
birth_date DATE
first_name VARCHAR
last_name VARCHAR
gender VARCHAR
hire_date DATE


departments
-
dept_no VARCHAR PK
dept_name VARCHAR

titles
-
emp_no INT FK >- employees.emp_no
title VARCHAR

dept_emp
-
emp_no INT FK >- employees.emp_no
dept_no VARCHAR FK >- departments.dept_no

dept_manager
-
dept_no VARCHAR FK >- departments.dept_no
emp_no INT FK >- employees.emp_no

salaries
-
emp_no INT FK >- employees.emp_no
salary INT