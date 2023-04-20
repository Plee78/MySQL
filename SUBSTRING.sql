-- SUBSTRING. Take a larger piece of string and find string within substring
-- First syntax is the string 
-- Second is where to start on the string 
-- Third is counting over the amount provided

SELECT SUBSTRING('Hello World', 1, 4);

-- SUBSTRING below counts from the 7th string and returns the rest of the value

SELECT SUBSTRING('Hello World', 7);

-- SUBSTRING below counts backwards from the right then returns the value

SELECT SUBSTRING('Hello World', -3);

-- Taking first 15 in title column

SELECT SUBSTRING(title, 1, 15) FROM books;

-- First character for author's last name 

SELECT SUBSTR(author_lname, 1, 1), author_lname FROM books;