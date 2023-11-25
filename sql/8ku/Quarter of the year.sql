-- Quarter of the year
-- https://www.codewars.com/kata/5ce9c1000bab0b001134f5af/train/sql
-- # write your SQL statement here: you are given a table 'quarterof' with column 'month', return a table with column 'month' and your result in a column named 'res'.
SELECT month, (month + 2) / 3 AS res
FROM quarterof;