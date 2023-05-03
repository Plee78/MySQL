-- HAVING Clause 
-- Used with GROUP BY
-- Used to filter the group from GROUP BY
-- WHERE cannot be used while many criterias are GROUP BY 

SELECT 
    title, AVG(rating), COUNT(rating) AS review_count
FROM
    full_reviews
GROUP BY title
HAVING COUNT(rating) > 1;