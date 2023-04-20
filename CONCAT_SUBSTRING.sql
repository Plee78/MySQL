-- SUBSTRING title resulting in 10 characters 

SELECT SUBSTR(title, 1, 10) FROM books;

-- SUBSTRING and CONCAT to include the statement above with '...' at the end
SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS short_title FROM books;

-- Reformatted

SELECT CONCAT(
	SUBSTR(title, 1, 10), '...'
    ) AS short_title 
FROM books;

-- SUBSTRING author's first name 
-- SUBSTRING author's last name
-- CONCAT author's first and last name with '.'

SELECT CONCAT(
	SUBSTR(author_fname, 1,1), '.', SUBSTR(author_lname, 1, 1), '.') 
    AS author_initials
 FROM books;