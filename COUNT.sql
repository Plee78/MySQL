-- AGGREGATE FUNCTIONS
-- COUNT counts the value from a specified database/datatable 
-- COUNT can only return one value/column

SELECT 
    COUNT(*)
FROM
    books;

-- How many author_fnames?
-- Counts all rows in column 'author_fname'

SELECT 
    COUNT(author_fname)
FROM
    books;

-- COUNT(DISTINCT) shows unique values

SELECT 
    COUNT(DISTINCT author_fname)
FROM
    books;

SELECT 
    COUNT(DISTINCT released_year)
FROM
    books;
    
SELECT 
    COUNT(DISTINCT author_lname)
FROM
    books;
    
-- How many titles have the word 'the'?

SELECT 
    COUNT(*)
FROM
    books
WHERE
    title LIKE '%the%';