-- Count the number of cubes with paint on
-- https://www.codewars.com/kata/5763bb0af716cad8fb000580/train/sql
--# write your SQL statement here:
-- you are given a table 'squares' with column 'n' (numer of cubes).
-- return a table with:
--   this column and your result in a column named 'res'

SELECT n,
CASE
    WHEN n = 0 THEN 1
    ELSE CAST(POW(n, 2) * 6 + 2 AS INT)
END
AS res FROM squares;