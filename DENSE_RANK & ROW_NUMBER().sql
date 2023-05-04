-- DENSE_RANK, & ROW_NUMBER
-- DENSE_RANK allows ties without skipping a rank with ties 
-- ROW_NUMBER Label each row in a partition. Counting the rows 

-- Query below shows the row number regardless of duplicate values

SELECT 
	emp_no,
    department, 
    salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM employees;

-- Query below does not skip ranks when there is a tie

SELECT 
	emp_no,
    department, 
    salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_rank,
	DENSE_RANK() OVER(ORDER BY salary DESC) AS overall_dense_salary_rank,
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS overall_numb
FROM employees
ORDER BY overall_rank;