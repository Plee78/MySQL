-- NTILE() 
-- Use to divide values into quartiles, percentages, eta 

-- Query below is quartiled 

SELECT
	emp_no,
    department,
    salary,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;

-- Query below is quartiled partitioned by department 

SELECT
	emp_no,
    department,
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;