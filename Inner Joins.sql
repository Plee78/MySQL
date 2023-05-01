-- Inner Joins 
-- Selects all records from table A and table N where the join condition meets

-- INNER JOIN syntax

-- SELECT *
-- FROM 
-- 	table1
-- 		JOIN
-- 	table 2 ON table1.column1 = table2.column2;

-- Sequence depends on which table and column are listed first

SELECT 
    *
FROM
    customers
        JOIN
    orders ON customers.id = orders.customer_id;
    
SELECT 
    *
FROM
    orders
        JOIN
    customers ON customers.id = orders.id;