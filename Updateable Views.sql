-- Updateable views 
-- Views are not true table so not all operations will be able to be used
-- Cannot delete from join view 

SELECT 
    *
FROM
    series
ORDER BY released_year;

-- Creating a simple view so altering view table is possible 

CREATE VIEW ordered_series AS 
SELECT 
    *
FROM
    series
ORDER BY released_year;

-- Insert into ordered_series view 

INSERT INTO ordered_series(title, released_year, genre)
VALUES ('The Great', 2020, 'Comedy');

-- Updating into views can update into orginal table 