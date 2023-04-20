-- REVERSE reverse string

SELECT REVERSE('Hello World');

SELECT REVERSE('Chicken Nuggets');

-- Reverse author's first name

SELECT REVERSE(author_fname) FROM books;

-- Using CONCAT and REVERSE to make palindrome 

SELECT CONCAT(
	author_fname, REVERSE(author_fname)
    )
FROM books; 