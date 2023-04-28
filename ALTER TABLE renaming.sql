-- ALTER TABLE renaming 

RENAME TABLE companies TO suppliers;
-- OR
ALTER TABLE companies TO suppliers; 

-- Renaming columns

ALTER TABLE suppliers
RENAME COLUMN name TO biz_name;

ALTER TABLE companies
RENAME COLUMN name TO company_name;