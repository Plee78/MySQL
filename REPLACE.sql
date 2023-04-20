-- REPLACE replace parts of strings 
-- REPLACE first syntax the string 
-- Second the string needing to be replaced 
-- Third being the string replacing
-- REPLACE is case sensitive

SELECT REPLACE('Hello World', 'Hell', '$@&*');

SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');

-- Replace space from title with '-'

SELECT REPLACE(title, ' ', '-') FROM books;