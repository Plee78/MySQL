-- CHAR_LENGTH tells us the number of characters in the string
-- LENGTH tells us the number of bytes

SELECT CHAR_LENGTH('Hey!');

-- Finding character length of book titles

SELECT CHAR_LENGTH(title) AS title_length, title FROM books;