-- Remove First and Last Character
-- https://www.codewars.com/kata/56bc28ad5bdaeb48760009b0/train/sql
SELECT s,
       substr(s, 2, length(s) - 2) AS res
FROM removechar;