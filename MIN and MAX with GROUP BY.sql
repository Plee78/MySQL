-- MIN and MAX with GROUP BY
-- Find the year each author published their first book

SELECT 
    author_fname, author_lname, MIN(released_year)
FROM
    books
GROUP BY author_fname , author_lname;

-- Find the year each author published their latest book

SELECT 
    author_fname, author_lname, MAX(released_year)
FROM
    books
GROUP BY author_fname , author_lname;

-- Combining all queries 

SELECT 
    author_fname,
    author_lname,
    COUNT(*) AS books_written,
    MAX(released_year) AS latest_release,
    MIN(released_year) AS earliest_release,
    MAX(pages) AS longest_page
FROM
    books
GROUP BY author_lname, author_fname;