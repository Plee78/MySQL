-- PARTION BY
-- Inside of the OVER(). Use PARTITION BY to form rows into groups of row

-- Query below shows a window that shows the average salary for
-- all partitioned departments 

SELECT 
	emp_no, 
	department, 
	salary, 
	AVG(salary) OVER(PARTITION BY department) AS dept_avg 
FROM employees;

-- Query below shows a window that shows the average salary for
-- all partitioned departments AND avg of all departments

SELECT 
	emp_no, 
	department, 
	salary, 
	AVG(salary) OVER(PARTITION BY department) AS dept_avg,
    AVG(salary) OVER() AS company_avg
FROM employees;

-- How many employees are in each department

SELECT
emp_no,
department,
salary,
COUNT(*) OVER(PARTITION BY department) AS dept_count
FROM employees;

-- SUM the payroll for each department 

SELECT
emp_no,
department,
salary,
SUM(salary) OVER(PARTITION BY department) AS dept_payroll,
SUM(salary) OVER() AS company_payroll
FROM employees;