-- Left join with GROUP BY

SELECT 
    first_name, last_name, IFNULL(SUM(amount), 0) AS money_spend
FROM
    customers
        LEFT JOIN
    orders ON customers.id = orders.customer_id
GROUP BY first_name , last_name;