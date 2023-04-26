-- AVG 
-- Calculate average in a table 

SELECT 
    AVG(released_year)
FROM
    books;
    
SELECT 
    AVG(pages)
FROM
    books;
    
-- AVG with GROUP BY
-- Calculate the average stock quantity for books released in the same year

SELECT 
    released_year, AVG(stock_quantity)
FROM
    books
GROUP BY released_year;