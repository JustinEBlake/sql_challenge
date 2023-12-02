-- 1)List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name , e.sex, s.salaries
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;

-- 2) List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

-- 3) List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM dept_manager dm
JOIN departments d ON (d.dept_no = dm.dept_no)
JOIN employees e ON (e.emp_no = dm.emp_no);

-- 4) List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name

-- a) Create VIEW in order to use table later in question 6
CREATE VIEW emp_dept_info AS
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_employees de ON (e.emp_no = de.emp_no)
JOIN departments d ON (de.dept_no = d.dept_no);

-- b)QUERY table
SELECT * FROM emp_dept_info;

-- 5) List first name, last name, and sex of each employee whose first name is Hercules and 
-- whose last name begins with the letter B
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE '%B%';

-- 6) List each employee in the Sales department, including their employee number, last name, 
-- and first name
SELECT emp_no, last_name, first_name
FROM emp_dept_info
WHERE dept_no = 'd007';

-- 7) List each employee in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
SELECT emp_no, last_name, first_name, dept_name
FROM emp_dept_info
WHERE dept_no = 'd007' OR dept_no = 'd005';

-- 8) List the frequency counts, in descending order, of all the employee last names (that is, how 
-- many employees share each last name).
SELECT last_name, COUNT(last_name) AS "total_count"
FROM employees
GROUP BY last_name
ORDER BY (total_count) DESC;



