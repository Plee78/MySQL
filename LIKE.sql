-- LIKE helps with basic searching
-- LIKE can be used for fuzzy searching 
-- Wildcards can be used with string for a fuzzy match 
-- Wildcards are presented with % or __
-- % provides fuzzy matching 
-- __ provides empty indicators 

SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    author_fname LIKE '%da%';
    
SELECT 
    *
FROM
    books
WHERE
    title LIKE '%:%';
    
SELECT 
    *
FROM
    books
WHERE
    author_fname LIKE '____';