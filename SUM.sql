-- SUM
-- Adds things together

SELECT 
    SUM(pages)
FROM
    books;

-- SUM with GROUP BY

SELECT 
    author_lname, SUM(pages)
FROM
    books
GROUP BY author_lname;

SELECT 
    author_lname, COUNT(*), SUM(released_year)
FROM
    books
GROUP BY author_lname;