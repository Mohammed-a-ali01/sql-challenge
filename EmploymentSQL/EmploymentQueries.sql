-- Q1.) List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employee e
JOIN salaries s ON e.emp_no = s.emp_no;

-- Q2.) List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employee 
WHERE hire_date >='1986-01-1'AND hire_date <='1986-12-31'

-- Q3.) List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dm.dept_no, dm.emp_no, e.first_name, e.last_name, d.deptname
FROM department_manager dm
JOIN employee e ON dm.emp_no = e.emp_no
JOIN departments d ON dm.dept_no = d.dept_no;

-- Q4.) List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.deptname
FROM departments d
JOIN employee e ON d.dept_no = d.dept_no;


--Q5.) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex 
FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Q6.) List each employee in the Sales department, including their employee number, last name, and first name
SELECT d.dept_no, e.emp_no, e.first_name, e.last_name
FROM departments d
JOIN employee e ON d.dept_no = d.dept_no
WHERE d.deptname = 'Sales';


--q7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT e.emp_no, e.last_name, e.first_name, d.deptname
FROM employee as e
JOIN department_emp as de ON e.emp_no = de.emp_no
JOIN departments as d ON de.dept_no = d.dept_no
WHERE d.deptname = 'Sales'
OR d.deptname = 'Development';


--q8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(*) AS frequency
FROM employee
GROUP BY last_name
ORDER BY frequency DESC;

