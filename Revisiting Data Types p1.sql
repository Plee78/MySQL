-- Revisiting Data Types
-- CHAR vs. VARCHAR
-- CHAR allows to store text. Differ in storage and retreval. Optimized to store text 
-- that are fixed in size. CHAR is fixed in length. White space is used to fill
-- the empty space
-- CHAR downside: will use white space to fill empty fixed spaces. Wasteful storage

-- VARCHAR allows to store text. Optimized to store text in various sizes.
-- Different alphabet has different storage size 

-- CHAR vs VARCHAR. If fixed length, use CHAR. If variable length, use VARCHAR
-- Note: It may use less storage to use CHAR if number of characters will be a 
-- fixed length +- 1

-- INT, TINYINT, BIGINT
-- Optimizing storage. INT takes up 4 bytes. TINYINT takes 1 bytes. BIGINT takes 8 bytes
-- Each data type has a max value signed (then number of characters allowed). 
-- There are minimum signed values where the inserted values can be negative.
-- Further constraints may be needed to prevent in certain circumstances 
-- Example to prevent negative demonstrated below:

CREATE TABLE parent (
    children TINYINT UNSIGNED
);

-- Using unsinged increases the max either way 

-- DECIMAL 
-- Default will round up. DECIMAL allows us to store precise decimals. Can cost lots 
-- of memory to store. 
-- Syntax: DECIMAL(5,2) 5 being total number of digits. 2 being digits after 
-- the decimal. 
-- Example below:

CREATE TABLE products (
    price DECIMAL(5 , 2 )
); 
INSERT INTO products (price) VALUES(455.53); -- 1
INSERT INTO products (price) VALUES(4555.3); -- 2
INSERT INTO products (price) VALUES(45.553); -- 3

-- 1 is the correct format with total digits of 5 with 2 digits after the .
-- 2 is incorrect with total digits being 5 BUT 1 digit after the . This will not
-- be inserted into the table 
-- 3 is semi-correct with total digits being 5 BUT with 3 digits after the . This 
-- value will be truncated to fit the criteria, making the data less precise

-- FLOAT and DOUBLE
-- DECIMAL can be exact but take up more space 
-- FLOAT/DOUBLE store larger number but comes at a cost of precision. Precision issue 
-- after 7 digits for FLOAT and after 15 digits for DOUBLE /(value will be rounded up
-- after 7 and 15 digits respectively/)/

-- Date and times 
-- DATE values with a date but no time 'YYYY-MM-DD' Format
-- TIME values with a time but no date 'HH:MM:SS' Format
-- DATETIME values with a date AND time 'YYYY-MM-DD HH:MM:SS' Format

-- Working with dates

CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people (name, birthdate birthtime, birthdt) 
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');

INSERT INTO people (name, birthdate birthtime, birthdt) 
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');

INSERT INTO people (name, birthdate birthtime, birthdt) 
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');