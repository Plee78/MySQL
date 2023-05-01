-- Cross Joins
-- Working with two tables 
-- Write a query that shows all the orders placed by Bou George

-- Finding the id of Boy George from customers and looking it up in orders.
-- Not ideal 

SELECT 
    id
FROM
    customers
WHERE
    last_name = 'George';
    
SELECT 
    *
FROM
    orders
WHERE
    customer_id = 1;
    
-- Alternative method with nesting 

SELECT 
    *
FROM
    orders
WHERE
    customer_id = (SELECT 
            id
        FROM
            customers
        WHERE
            last_name = 'George');
            
-- Cross Join 
-- Combining all information from one table to another
-- Not as used often due to it being not useful

SELECT 
    *
FROM
    customers,
    orders; 