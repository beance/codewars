-- Simple multiplication
-- https://www.codewars.com/kata/583710ccaa6717322c000105
SELECT number,
       CASE
           WHEN number % 2 = 0 THEN number * 8
           ELSE number * 9
           END AS res
FROM multiplication;