-- Exercise

-- Write a query that results with the book title that includes 'stories'

SELECT 
    title
FROM
    books
WHERE
    title LIKE '%stories%';
    
-- Find the longest book without using MAX 

SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC
LIMIT 1; 

-- Print a summary containing the title and year for the 3 most recent books 

SELECT 
    CONCAT(title, ' - ', released_year) AS summary
FROM
    books
ORDER BY released_year DESC
LIMIT 3;

-- Find all books with an author_lname that contains a space (' ')

SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';
    
-- Find the 3 books with the lowest stock 

SELECT 
    title, released_year, stock_quantity
FROM
    books
ORDER BY stock_quantity
LIMIT 3;

-- Print title and author_lname, sorted first by author_lname and then by title

SELECT 
    title, author_lname
FROM
    books
ORDER BY author_lname , title;

-- Make a UPPER CONCAT with 'my favorite author is' author_fname, author_lname, !

SELECT 
    UPPER(CONCAT('my favorite author is ',
                    author_fname,
                    ' ',
                    author_lname,
                    '!')) AS yell
FROM
    books
ORDER BY author_lname;