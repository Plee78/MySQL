-- LEAD and LAG
-- Use to compare from row before or after 
-- LEAD returns an expression from the next row 
-- LAG returns an expression from the previous row

-- Showing the previous row 

SELECT 
	emp_no,
    department,
    salary,
    LAG(salary) OVER(ORDER BY salary DESC)
FROM employees;

-- Query below shows the difference in the salary

SELECT 
	emp_no,
    department,
    salary,
    salary - LAG(salary) OVER(ORDER BY salary DESC) AS salary_diff
FROM employees;

-- Showing the next row

SELECT 
	emp_no,
    department,
    salary,
    salary - LEAD(salary) OVER(ORDER BY salary DESC) AS salary_diff
FROM employees;

-- Partition by department

SELECT 
	emp_no,
    department,
    salary,
    salary - LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS salary_diff
FROM employees;