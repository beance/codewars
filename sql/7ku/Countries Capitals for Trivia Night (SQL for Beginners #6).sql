-- Countries Capitals for Trivia Night (SQL for Beginners #6)
-- https://www.codewars.com/kata/5e5f09dc0a17be0023920f6f/train/sql
SELECT capital
FROM countries
WHERE country LIKE 'E%'
  AND continent LIKE 'Afri%'
ORDER BY capital ASC
LIMIT 3;