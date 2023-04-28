-- CHECK constraints
-- Custom constraints to a given column
-- Below query only allows values to be inputted when age is greater than zero.
-- Otherwise the values will not be inserted

CREATE TABLE partiers (
    name VARCHAR(50),
    age INT CHECK (AGE > 18)
);

CREATE TABLE palindromes (
    word VARCHAR(100) CHECK(REVERSE(word) = word)
);