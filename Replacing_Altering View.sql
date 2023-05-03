-- Replacing/Altering Views 
-- How to change the view itself 

CREATE OR REPLACE VIEW ordered_series AS
    SELECT 
        *
    FROM
        series
    ORDER BY released_year DESC;
    
-- Altering view 

ALTER VIEW ordered_series AS 
SELECT * FROM series ORDER BY released_year; 

-- Dropping view. Does not alter data from original table 

DROP VIEW ordered_series