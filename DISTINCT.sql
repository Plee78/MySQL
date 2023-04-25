-- DISTINCT is to find only one of the values in the query 

SELECT DISTINCT
    author_lname
FROM
    books;

SELECT DISTINCT
    released_year
FROM
    books;

-- Using DISTINCT with CONCAT

SELECT DISTINCT
    (CONCAT(author_fname, ' ', author_lname)) AS full_name
FROM
    books;
    
-- Using DISTINCT only to get DISTINCT first and last name 

SELECT DISTINCT
    author_fname, author_lname
FROM
    books;