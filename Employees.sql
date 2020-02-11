SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

SELECT * 
FROM employees 
WHERE hire_date LIKE '1986%';

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, 
employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM departments JOIN
(dept_manager JOIN employees
ON employees.emp_no=dept_manager.emp_no)
ON departments.dept_no=dept_manager.dept_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments JOIN
(dept_manager JOIN employees
ON employees.emp_no=dept_manager.emp_no)
ON departments.dept_no=dept_manager.dept_no;

SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

ALTER TABLE dept_emp ALTER COLUMN emp_no TYPE VARCHAR(30);

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments JOIN
(dept_emp JOIN employees
ON employees.emp_no=dept_emp.emp_no)
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments JOIN
(dept_emp JOIN employees
ON employees.emp_no=dept_emp.emp_no)
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development'
;

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name ORDER BY last_name DESC;







