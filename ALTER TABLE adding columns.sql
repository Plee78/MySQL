-- ALTER TABLE
-- Helps us change table

-- Adding new column to an existing table 

ALTER TABLE companies 
ADD COLUMN city VARCHAR(25);

ALTER TABLE companies
ADD COLUMN phone VARCHAR(15);

ALTER TABLE companies 
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;