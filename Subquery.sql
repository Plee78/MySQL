-- Subqueries 
-- Find the title of the longest book 

SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC
LIMIT 1;

SELECT 
    title, pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
            
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year = (SELECT 
            MIN(released_year)
        FROM
            books);

-- If there are multiple of the same value, all MIN or MAX results will show
-- Using subqueries help if there are more than one of the same results