# sql_challenge

## Overview

- This task consists of completing a research project about people whom Pewlett Hackard employed during the 1980s and 1990s. For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data.

## Instructions

### Data Modeling

1. Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. 
- sql_challenge/images/[employee_ERD.png](https://github.com/JustinEBlake/sql_challenge/blob/main/images/employee_ERD.png)

### Data Engineering

1. Use the provided information to create a table schema for each of the six CSV files.

1. Import each CSV file into its corresponding SQL table.

- sql_challenge/EmployeeSQL/[table_schemata.sql](https://github.com/JustinEBlake/sql_challenge/blob/main/EmployeeSQL/table_schemata.sql)

### Data Analysis

List the following:

1. The employee number, last name, first name, sex, and salary of each employee.

1. The first name, last name, and hire date for the employees who were hired in 1986.

1. The manager of each department along with their department number, department name, employee number, last name, and first name.

1. The department number for each employee along with that employee’s employee number, last name, first name, and department name.

1. The first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

1. Each employee in the Sales department, including their employee number, last name, and first name.

1. Each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

1. The frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

- sql_challenge/EmployeeSQL/[queries.sql](https://github.com/JustinEBlake/sql_challenge/blob/main/EmployeeSQL/queries.sql)

## Source Code
- Source Code from previous lessons from class on PostgreSQL.