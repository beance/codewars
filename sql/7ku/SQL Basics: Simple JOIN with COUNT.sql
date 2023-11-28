-- SQL Basics: Simple JOIN with COUNT
-- https://www.codewars.com/kata/580918e24a85b05ad000010c/train/sql
SELECT people.*, COUNT(toys.id) AS toy_count
FROM toys
         LEFT JOIN people ON people.id = people_id
GROUP BY people.id;