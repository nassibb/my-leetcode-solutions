# Write your MySQL query statement below

DELETE FROM Person
WHERE id NOT IN (
SELECT MinID
FROM (
SELECT email, MIN(id) AS MinID
FROM Person
GROUP By email
) AS tp)