-- Triangular Treasure
-- https://www.codewars.com/kata/525e5a1cb735154b320002c8/train/sql
SELECT n,
       CASE
           WHEN n < 0 THEN 0
           ELSE (n * n + n) / 2
           END
           AS res
FROM triangular;
