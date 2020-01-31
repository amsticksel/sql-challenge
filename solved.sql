--1
SELECT employees.emp_no,
  salaries.salary,
  employees.first_name,
  employees.last_name,
  employees.gender
FROM salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no;

--2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1985-12-12' and '1987-01-01'

--3
SELECT
    dept_manager.dept_no,
    departments.dept_name,
    employees.emp_no,
    employees.first_name,
    employees.last_name,
    dept_manager.from_date,
    dept_manager.to_date
FROM dept_manager
    JOIN departments ON dept_manager.dept_no = departments.dept_no
    INNER JOIN employees ON
employees.emp_no = dept_manager.emp_no;

--4
SELECT
    employees.emp_no,
    employees.first_name,
    employees.last_name,
    departments.dept_name
FROM dept_emp
    JOIN departments ON dept_emp.dept_no = departments.dept_no
    INNER JOIN employees ON
employees.emp_no = dept_emp.emp_no;


--5
SELECT
    employees.first_name,
    employees.last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'


--6
SELECT
    employees.emp_no,
    employees.first_name,
    employees.last_name,
    departments.dept_name
FROM dept_emp
    JOIN departments ON dept_emp.dept_no = departments.dept_no
    INNER JOIN employees ON
employees.emp_no = dept_emp.emp_no
WHERE dept_name = 'Sales'


--7
SELECT
    employees.emp_no,
    employees.first_name,
    employees.last_name,
    departments.dept_name
FROM dept_emp
    JOIN departments ON dept_emp.dept_no = departments.dept_no
    INNER JOIN employees ON
employees.emp_no = dept_emp.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

--8
SELECT last_name, COUNT(last_name) AS "name count"
FROM employees
GROUP BY last_name
ORDER BY "name count" DESC;



