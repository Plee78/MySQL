-- MIN and MAX
-- MIN finds the minimum value
-- MAX finds the maximum value 

-- MIN and MAX without GROUP BY
-- Find the minimum releaed_year

SELECT 
    MIN(released_year)
FROM
    books;
    
-- Find the most number of pages 

SELECT 
    MAX(pages)
FROM
    books;
    
-- With text

SELECT 
    MIN(author_lname)
FROM
    books;
    
SELECT 
    MAX(author_lname)
FROM
    books;