-- Constraints and ALTER TABLE 
-- More constraints when making a table 

-- UNIQUE constraint 
-- Sets values entered to be unique and not like other values in the column

CREATE TABLE contacts (
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

-- These values will not be inserted into the table due to values for 
-- phone is not unique

INSERT INTO contacts (name, phone) VALUES ('billybob', '8781213455');
INSERT INTO contacts (name, phone) VALUES ('timmytimtim', '8781213455');

