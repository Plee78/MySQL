-- RANK()
-- Return the rank of the current row of its partition 
-- Ranking first, second, third... into another column 
-- Any row with the same values, they are going to be ranked the same and 
-- skip a rank. Cannot use GROUP BY

SELECT 
	emp_no,
    department, 
    salary,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM employees;

-- Query that will partition departments AND rank the in the department

SELECT 
	emp_no,
    department, 
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS overall_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM employees;