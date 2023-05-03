-- Introducing views 
-- Stored queries that when executed, it will run a stored query . Holds virtual 
-- table. Views are stored queries that will result in an virtual table without
-- running queries over and over 

SELECT 
    title, released_year, genre, rating, first_name, last_name
FROM
    reviews
        JOIN
    series ON series.id = reviews.series_id
        JOIN
    reviewers ON reviewers.id = reviews.reviewer_id; 
    
-- Creating views 

CREATE VIEW full_reviews AS
    SELECT 
        title, released_year, genre, rating, first_name, last_name
    FROM
        reviews
            JOIN
        series ON series.id = reviews.series_id
            JOIN
        reviewers ON reviewers.id = reviews.reviewer_id; 
        
-- Using views with different functions        

SELECT 
    *
FROM
    full_reviews
WHERE
    genre = 'Animation';
    
SELECT 
    genre, AVG(rating)
FROM
    full_reviews
GROUP BY genre;