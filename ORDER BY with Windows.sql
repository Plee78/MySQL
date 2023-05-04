-- ORDER BY with Windows 
-- ORDER BY inside of OVER() clause to re-orderrows within each row

-- Query below shows a window function but sorting by the first window.
-- Rolling_dept_salary is a rolling calculation of the sum of salary per department

SELECT 
	emp_no,
    department,
    salary,
    SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_salary_total,
    SUM(salary) OVER(PARTITION BY department) AS dept_salary_total
FROM employees; 

SELECT 
	emp_no,
    department,
    salary,
    MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_min
FROM employees; 