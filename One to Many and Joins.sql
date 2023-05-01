-- One to Many & Joins
-- Joins are used to connect multiple different tables from different datasets

-- Reloationships and Joins
-- Relationships:
-- Real world data is messy and interrelated. There will be many variations 
-- of the same data. Could interconenct many data points to a single key 

-- Relationships Basics :
-- Entites and how they are related.alter
-- One to one relationship
-- One to many relationship 
-- Many to many relationship 

-- One to many relationship are the most used 
-- EX: one book has many reviews (One to many relationships) 

-- One to many relationship: 
-- 1:MANY the most common relastionship. 
-- EX. Customers & Orders. One customer to many orders
-- We want to store:
-- 	A customer's first and last name 
-- 	A customer's email
-- 	The date of the purchase
-- 	The price of the order
-- If one table is used, there may be duplicates for returning customers and 
-- new customers will show NULL values when they have not ordered anything 
-- Best case is to keep the tables separate 
-- Primary Key is a reference key to interconnect all the tables 
-- PRIMARY KEY is a column that is always unique 