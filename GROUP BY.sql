-- GROUP BY 
-- Summarized or aggegrates identical data into single rows

SELECT 
    author_lname
FROM
    books
GROUP BY author_lname;

-- Count how many books each author has written

SELECT 
    author_lname, COUNT(*) AS written_books
FROM
    books
GROUP BY author_lname
ORDER BY written_books DESC;

-- GROUP BY released year and then count the year

SELECT 
    released_year
FROM
    books
GROUP BY released_year
ORDER BY released_year;

SELECT 
    released_year, COUNT(released_year) 
FROM
    books
GROUP BY released_year
ORDER BY released_year DESC;

