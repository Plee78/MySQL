-- SQL Modes Basics
-- Mode effects the syntax 

-- Viewing Modes

-- Global mode
SELECT @@GLOBAL .sql_mode; 

-- Session mode
SELECT @@SESSION .sql_mode;

-- SETTING Modes

-- SETTING Global
SET GLOBAL sql_mode = 'modes';

-- SETTING Session
SET SESSION sql_mode = 'modes';


-- STRICT_TRANS_TABLE
-- How MySQL handles invalid or missing values 
-- If inserting into a table, the values will still be inserted if 
-- STRICT_TRANS_TABLE is turned off 

-- More Modes 

-- ONLY_FULL_GROUP_BY
-- Only allowed select aggregate results or columns that have been named in the 
-- GROUP BY clause 
-- Query below will not work as rating is not inputted into GROUP BY

SELECT 
    title, rating
FROM
    series
        JOIN
    reviews ON reviews.series_id = series.id
GROUP BY title; 

-- NO_ZERO_IN_DATE and NO_ZERO_DATE
-- NO_ZERO_IN_DATE means no zero in the date. '2010-01-00' will not be valid as 
-- day is inputted as '00'
-- Result will show as NULL