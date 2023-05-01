-- On Delete Cascade
-- What happens if we delete information from a table but it's still referenced 
-- to another table. Deletion may return an error
-- In Facebook, if profile is deleted, everything is deleted
-- In Reddit, if profile is deleted, comments can be left behind but profile is gone

-- ON DELETE CASCADE: if customer is deleted, the customer_id associated with 
-- orders table will also delete

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);
 
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8 , 2 ),
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers (id)
        ON DELETE CASCADE
);