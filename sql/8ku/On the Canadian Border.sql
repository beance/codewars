-- On the Canadian Border
-- https://www.codewars.com/kata/590ba881fe13cfdcc20001b4/train/sql

SELECT *
FROM travelers
WHERE country NOT IN ('USA', 'Mexico', 'Canada');