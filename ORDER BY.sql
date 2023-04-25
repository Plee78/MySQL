-- Sorting our results 

SELECT 
    author_lname
FROM
    books
ORDER BY author_lname;

-- Any NULL values will show at the top when sorted by ASC 
-- ORDER BY ascends by default 
-- Can change sort by using desc
SELECT 
    author_lname
FROM
    books
ORDER BY author_lname DESC;

SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC;

-- Can still sort results with data that is not present 

SELECT 
    title, pages
FROM
    books
ORDER BY released_year DESC;

-- Using numbers to order by
-- Using the number indicates the numerical order of columns selected
-- Below is the numerical values
-- book_id is 1
-- author_fname is 2
-- author_lname is 3
-- pages is 4

SELECT 
    book_id, author_fname, author_lname, pages
FROM
    books
ORDER BY 4;

-- Sorting by multiple columns 
-- Sorting starts from the left most column 
-- Can use ASC and DESC to sort each column separately 

SELECT 
    author_fname, author_lname
FROM
    books
ORDER BY author_lname , author_fname;

-- Sorting results such as CONCAT. Result below is sorted by alias 'author'

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author
FROM
    books
ORDER BY author;