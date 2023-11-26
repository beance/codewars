-- SQL Basics: Maths with String Manipulations
-- https://www.codewars.com/kata/594901ba44645fd7bd00005f/train/sql
SELECT BIT_LENGTH(name) + LENGTH(race) AS calculation
FROM demographics;