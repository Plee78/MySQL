-- Named constraint 
-- Able to give name to constraint insstead of an error message provided by MySQL
-- If constraint is violate, it would result in message:
-- age_over_18 violated

CREATE TABLE partiers2 (
    name VARCHAR(50),
    age INT,
    CONSTRAINT age_over_18 CHECK (age > 18)
);

CREATE TABLE user2 (
    username VARCHAR(20) NOT NULL,
    age INT,
    CONSTRAINT age_not_negative CHECK (age > 0)
);