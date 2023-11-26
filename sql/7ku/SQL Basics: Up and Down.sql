-- SQL Basics: Up and Down
-- https://www.codewars.com/kata/595a3ba3843b0cbf8e000004/train/sql

SELECT CASE
           WHEN MOD(SUM(number1), 2) = 1 THEN MIN(number1)
           ELSE MAX(number1)
           END
           AS number1,
       CASE
           WHEN MOD(SUM(number2), 2) = 1 THEN MIN(number2)
           ELSE MAX(number2)
           END
           AS number2
FROM numbers;