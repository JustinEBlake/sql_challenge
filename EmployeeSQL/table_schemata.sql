-- Create "titles" table
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR(30)
);

-- Create "employees" table
CREATE TABLE employees (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(5) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Alter employees Table
-- Alter the columns birth_date & hire_date type from VARCHAR to DATE
ALTER TABLE employees
ALTER COLUMN birth_date TYPE DATE USING to_date(birth_date, 'MM-DD-YYYY'),
ALTER COLUMN hire_date TYPE DATE USING to_date(hire_date, 'MM-DD-YYYY');

--Create "salaries" table
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salaries INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create "departments" table
CREATE TABLE departments(
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(255)
);

-- CREATE "dept_employees" table
CREATE TABLE dept_employees (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- CREATE "dept_manager" tables
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
