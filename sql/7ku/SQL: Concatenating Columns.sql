-- SQL: Concatenating Columns
-- https://www.codewars.com/kata/59440034e94fae05b2000073/train/sql
SELECT concat_ws(' ', INITCAP(firstname), INITCAP(lastname)) AS shortlist
FROM elves
WHERE firstname LIKE '%tegil%'
   OR lastname LIKE '%astar%'