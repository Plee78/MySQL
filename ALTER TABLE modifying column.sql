-- ALTER TABLE modifying columns
-- Use MODIFY to change an existigns column's type

ALTER TABLE suppliers
MODIFY biz_name VARCHAR(100); 

ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';

-- Changing columns 
-- Use CHANGE to rename a column AND change its data type

ALTER TABLE suppliers
CHANGE business biz_name VARCHAR(50);