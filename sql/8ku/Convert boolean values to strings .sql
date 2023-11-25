-- Convert boolean values to strings 'Yes' or 'No'.
-- https://www.codewars.com/kata/53369039d7ab3ac506000467/train/sql
-- # write your SQL statement here: you are given a table 'booltoword' with column 'bool', return a table with column 'bool' and your result in a column named 'res'.
SELECT bool,
       CASE
           WHEN bool THEN 'Yes'
           ELSE 'No'
           END AS res
FROM booltoword;