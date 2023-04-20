-- Other string functions

-- INSERT insert new string into existing string 

SELECT INSERT('Hello Bobby', 6, 0, ' There');

-- LEFT and RIGHT get leftmost or rightmost string

SELECT LEFT('omghahalol!', 3);

SELECT RIGHT('omghahalol!', 4);

-- Getting initials from author's first and last name

SELECT LEFT(author_lname, 1) FROM BOOKS;

SELECT LEFT(author_fname, 1) FROM BOOKS;

-- REPEAT repeats certain strings a number of times

SELECT REPEAT('ha', 4); 
-- TRIM used to remove spaces that are leading or trailing 

SELECT TRIM('       San Antonio  ');
