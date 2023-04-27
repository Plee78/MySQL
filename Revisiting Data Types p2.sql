-- CURDATE, CURTIME, NOW (aka CURRENT_DATE(), CURRENT_TIME, CURRENT_TIMESTAMP)
-- Used to use to exact date and/or time without having to manually input current 
-- day/time

-- Gives current time

SELECT CURTIME();

-- Gives current date 

SELECT CURDATE();

-- Gives current date and time 

SELECT NOW();

-- Inserting values into a table for a newborn 

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

-- Date functions 
-- Functions that format/extraxt portion of a date/time 
-- DAY() same as DAYOFMONTH() 

SELECT 
    birthdate, DAY(birthdate)
FROM
    people; 

-- DAYOFWEEK() Shows what day it is (SU, M, TU, W, TH, F, SA) 1 being Sunday and 7 
-- being Saturday 

SELECT 
    birthdate, DAY(birthdate), DAYOFWEEK(birthdate)
FROM
    people;
    
-- DAYOFYEAR()

SELECT 
    birthdate, DAY(birthdate), DAYOFWEEK(birthdate), DAYOFYEAR(birthdate)
FROM
    people;
    
-- MONTHNAME() gives the name of the month

SELECT 
    birthdate, MONTHNAME(birthdate)
FROM
    people; 
    
-- WEEK() shows the week of the date

-- Use of correct function is important to extract information from the data

-- Time functions 

-- HOUR() gives the hour of the data

SELECT 
    name, birthtime, HOUR(birthtime)
FROM
    people; 
    
-- MINUTE() gives the minute of the data
-- SECONDS() gives the second of the data

-- Formatting dates 
-- DATE_FORMAT(date, format) Changing format of the Date
-- %a Gives abbreviated weekday name
-- %B Gives abbreivated month name
-- %W Weekday name
-- Each format can be added with a space in between or with a ','

SELECT 
    birthdate, DATE_FORMAT(birthdate, '%a %b %D')
FROM
    people;
    
-- DATE MATH
-- Calculating DATE
-- DATEDIFF(expr1, expr2) returns expr2 - expr1 to give us the difference of days
-- Works with DATETIME()

SELECT 
    birthday, DATEDIFF(CURDATE(), birthdate)
FROM
    PEOPLE;
    
-- DATE_ADD(date, INTERVAL expr unit), DATE_SUB(date, INTERVAL, expr_unit)
-- Difference of DATEDIFF() and DATE_SUB is the use of intervals of day, date,
-- year, etc

SELECT DATE_ADD(CURDATE(), INTERVAL 1 YEAR);

SELECT DATE_ADD(CURDATE(), INTERVAL 1 MONTH);

SELECT DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

-- TIMEDIFF(expr1, expr2) returns expr1 - expr2 as a time value

SELECT TIMEDIFF(CURTIME(), '07:00:00');

-- Can use math operators with date/time

SELECT NOW() - INTERVAL 18 YEAR;

SELECT 
    name, birthdate, birthdate + INTERVAL 21 YEAR
FROM
    people; 