-- Right Join
-- Select everything from table B along with any matching records in A
-- 

SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        RIGHT JOIN
    orders ON customers.id = orders.customer_id;