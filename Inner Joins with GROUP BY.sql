-- Inner Joins with GROUP BY 

SELECT 
    first_name, last_name, SUM(amount) AS orders_total
FROM
    customers
        JOIN
    orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name
ORDER BY orders_total;