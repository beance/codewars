-- Remove String Spaces
-- https://www.codewars.com/kata/57eae20f5500ad98e50002c5/train/sql
SELECT x, replace(x, ' ', '') as res
FROM nospace;