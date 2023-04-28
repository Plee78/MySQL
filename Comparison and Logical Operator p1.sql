-- Comparison and Logical Operators 

-- Not Equal != 
-- When finding values that are not equal to specified criteria

SELECT 
    released_year
FROM
    books
WHERE
    released_year != 2017;
    
-- NOT LIKE shows books that are a no match to the specified criteria

SELECT 
    title
FROM
    books
WHERE
    title NOT LIKE '% %';
    
SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    author_fname NOT LIKE 'da%';
    
SELECT 
    title
FROM
    books
WHERE
    title NOT LIKE '%e%';
    
-- Greater than filters values that are greater than specified criteria 

SELECT 
    *
FROM
    books
WHERE
    released_year > 2005;
    
SELECT 
    *
FROM
    books
WHERE
    pages > 500;
    
-- Less than or equal to filters values that are less than or equal to the 
-- specified criteria

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year < 2000;
    
SELECT 
    title, pages
FROM
    books
WHERE
    pages < 200;

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year >= 2010;
    
-- Logical AND compares two values that MUST meet all criteria. AND can be 
-- used many times to narrow down the results
-- SELECT books written by Dave Eggers, published after 2010

SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Eggers'
        AND released_year > 2010;
        
SELECT 
    title, pages
FROM
    books
WHERE
    CHAR_LENGTH(title) > 30 AND pages > 30;
    
-- Logical OR compares two values and only one criteria can be met. OR can be 
-- used many times 
-- SELECT books written by Dave Eggers or books published after 2010

SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Eggers'
        OR released_year > 2010;
        
SELECT 
    title, pages
FROM
    books
WHERE
    CHAR_LENGTH(title) > 30 OR pages > 30;