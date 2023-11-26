-- SQL: Bytes in String from Ints
-- https://www.codewars.com/kata/59491429952ac97ad9000106/train/sql
SELECT LENGTH(CAST(number1 AS VARCHAR)) AS octnum1,
       LENGTH(CAST(number2 AS VARCHAR)) AS octnum2,
       LENGTH(CAST(number3 AS VARCHAR)) AS octnum3,
       LENGTH(CAST(number4 AS VARCHAR)) AS octnum4,
       LENGTH(CAST(number5 AS VARCHAR)) AS octnum5
FROM numbers;