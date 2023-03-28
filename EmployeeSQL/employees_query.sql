--List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no = s.employee_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.employee_no, e.first_name, e.last_name, dm.dept_no, d.dept_name 
FROM departments AS d
INNER JOIN dept_managers AS dm
ON d.dept_no = dm.dept_no
INNER JOIN employees AS e
ON dm.employee_no = e.emp_no;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
INNER JOIN dept_employees AS de
ON d.dept_no = de.dept_no
INNER JOIN employees as e
ON de.employee_no = e.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.

--Look up the dept no of Sales 
SELECT dept_no, dept_name FROM departments
--The dept no of Sales is d007

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_employees AS de
ON e.emp_no = de.employee_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_no = 'd007';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--Look up the dept no of Sales and Development
SELECT dept_no, dept_name FROM departments
--The dept no of Sales is d007 and Development is d005

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_employees AS de
ON e.emp_no = de.employee_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_no = 'd005' or d.dept_no = 'd007';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "Frequency counts"
FROM employees
GROUP BY last_name
ORDER BY "Frequency counts" DESC;