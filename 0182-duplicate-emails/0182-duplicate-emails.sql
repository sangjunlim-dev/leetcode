-- filter out duplicates
SELECT email
FROM Person
GROUP BY 1
HAVING COUNT(email) > 1;