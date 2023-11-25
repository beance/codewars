-- Beginner Series #1 School Paperwork
-- https://www.codewars.com/kata/55f9b48403f6b87a7c0000bd/train/sql
SELECT n,
       m,
       CASE
           WHEN n < 0 OR m < 0 THEN 0
           ELSE GREATEST(0, n * m)
           END AS res
FROM paperwork;
