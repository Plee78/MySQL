-- LIMIT controls the amount of values returned 
-- Query below limits only 5 returned values 

SELECT 
    book_id, title, released_year
FROM
    books
LIMIT 5;

-- Using LIMIT and ORDER BY to return the top __ results

SELECT 
    book_id, title, released_year
FROM
    books
ORDER BY released_year
LIMIT 5;

-- Using starting position and the following limited results 
-- Ex. 0, 5 indicates start at the returned value of row 0 and continue 5
-- 1, 5 indicates start at the returned value of row 1 and continue 5

SELECT 
    book_id, title, released_year
FROM
    books
ORDER BY released_year
LIMIT 1, 5;