-- UPPER() and LOWER()
-- UPPER makes all characters uppercase. AKA UCASE()
-- LOWER make all characters lowercase, AKA LCASE()

SELECT UPPER('Hello World');

SELECT LOWER('Hello World');

-- UPPER the book title from books table 

SELECT UPPER(title) FROM books;

-- CONCAT and UPPER book title with 'I LOVE ' title, '!!!'

SELECT CONCAT('I LOVE ', UPPER(title), '!!!') FROM books;