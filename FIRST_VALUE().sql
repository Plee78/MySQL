-- FIRST_VALUE()
-- Returns the value from the first row of the window frame 

-- Query below returns the highest paid person in the department 
-- ordered by salary in a new column 

SELECT
	emp_no
    department,
    salary,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC)
FROM employees; 

-- Query below returns the highest paid person in the department 
-- ordered by salary in a new column partitioned by department

SELECT
	emp_no
    department,
    salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) AS highest_dept,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) AS highest_overall
FROM employees; 