-- ALTER TABLE constraints 
-- Adding and dropping constraints 

ALTER TABLE houses
ADD CONSTRAINT positive_pprice CHECK(purchase_price >= 0);

--  Dropping constraint 

ALTER TABLE houses
DROP CONSTRAINT positive_pprice;