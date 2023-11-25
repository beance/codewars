-- Remove exclamation marks
-- https://www.codewars.com/kata/57a0885cbb9944e24c00008e/train/sql

SELECT s, REPLACE(s, '!', '') as res
FROM removeexclamationmarks;