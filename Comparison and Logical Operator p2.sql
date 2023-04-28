-- BETWEEN is used time find values between the given criteria. BETWEEN is 
-- inclusive, meaning acts like >= or <=
-- Can find the values without BETWEEN as shown below 

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year <= 2015
        AND released_year >= 2004;
        
-- With BETWEEN

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year BETWEEN 2004 AND 2015;
    
-- NOT BETWEEN is BETWEEN but finding values that are NOT BETWEEN the given criteria

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year NOT BETWEEN 2004 AND 2015;
    
-- Comparing dates. SQL is able to recognize string as a date
-- Below shows people who were born before the given criteria

SELECT 
    *
FROM
    people
WHERE
    birthdate < '2005-01-01';
    
-- Comparing dates by extracting certain date

SELECT 
    *
FROM
    people
WHERE
    YEAR(birthdate) < 2005;
    
-- Comparing time with a string 

SELECT 
    *
FROM
    people
WHERE
    birthtime > '12:00:00';

-- Comparing time by extracting hour 

SELECT 
    *
FROM
    people
WHERE
    HOUR(birthtime) > 12;
    
-- CAST convert one data type to another. Can use CAST when comparing
-- Syntax: CAST(expr AS type [ARRAY])
-- Example below 

SELECT CAST('09:00:00' AS TIME);

-- Comparing time with CAST

SELECT 
    *
FROM
    people
WHERE
    birthtime BETWEEN CAST('12:31:16' AS TIME) AND CAST('16:34:12' AS TIME);
    
-- The IN Operator used to find multiple values in the same column with a WHERE 
-- clause. NOT IN Operator is used to return values that are NOT the 
-- specified value

SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname IN ('Carver' , 'Lahiri', 'Smith');
    
-- NOT IN

SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname NOT IN ('Carver' , 'Lahiri', 'Smith');
    
-- % Operator MODULO meaning the remainder operator
-- Selecting only even years below: if released_year % 2 is 0, it is an 
-- even year. If released_year % 2 is 1, it is an odd year

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year >= 2000
        AND released_year % 2 != 0;
        
-- CASE statements. When CASE statement is made, it takes the values and 
-- fits it into a certain criteria that is met with a fitting statement

SELECT 
    title,
    released_year,
    CASE
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS GENRE
FROM
    books;
    
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM
    books;
    
-- IS NULL returns values where values are null
-- IS NOT NULL returns values where values are not null