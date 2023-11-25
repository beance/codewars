-- Opposites Attract
-- https://www.codewars.com/kata/555086d53eac039a2a000083/train/sql
-- # write your SQL statement here: you are given a table 'love' with columns 'flower1' and 'flower2', return a table with all the columns and your result in a column named 'res'.
SELECT flower1,
       flower2,
       CASE
           WHEN (flower1 + flower2) % 2 != 0
               THEN TRUE
           ELSE FALSE
           END
           AS res
FROM love;