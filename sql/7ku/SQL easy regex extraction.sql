-- SQL easy regex extraction
-- https://www.codewars.com/kata/5c0ae69d5f72394e130025f6/train/sql
SELECT name,
       greeting,
       SUBSTRING(greeting FROM '#([0-9]+)')
           AS user_id
FROM greetings;