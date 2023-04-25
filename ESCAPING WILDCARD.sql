-- Finding information that has a wildcard symbol 
-- \ is used to escape the character 

SELECT 
    *
FROM
    books
WHERE
    title LIKE '%\%%';