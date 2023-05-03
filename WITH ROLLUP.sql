-- WITH ROLLUP
-- Used with GROUP BY
-- Last row shows a summary average for the entire table 

-- WITH ROLLUP on AVG()

SELECT 
    title, AVG(rating)
FROM
    full_reviews
GROUP BY title WITH ROLLUP;

-- WITH ROLLUP on COUNT()

SELECT 
    title, COUNT(rating)
FROM
    full_reviews
GROUP BY title WITH ROLLUP;