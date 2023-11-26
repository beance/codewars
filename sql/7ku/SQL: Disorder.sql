-- SQL: Disorder
-- https://www.codewars.com/kata/59cb550486a6fd10b50000ad
SELECT number
FROM numbers
ORDER BY RANDOM(), ROW_NUMBER() OVER (ORDER BY number);