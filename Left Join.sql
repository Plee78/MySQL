-- Left Join
-- Select everything from table A along with any matching records in table B
-- Take all rows from the left side 
-- If there is a match on the right, that will be displayed
-- Left join reveals inportant information to show specific parts of the tables 

SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        LEFT JOIN
    orders ON orders.customer_id = customers.id;