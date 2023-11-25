-- Grasshopper - Check for factor
-- https://www.codewars.com/kata/55cbc3586671f6aa070000fb/train/sql
-- you will be given a table 'kata' with columns 'id', 'base', and 'factor'.
-- return the 'id' and your result in a column named 'res'.
SELECT id, MOD(base, factor) = 0 AS res FROM kata;