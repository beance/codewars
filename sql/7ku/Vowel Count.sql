-- Vowel Count
-- https://www.codewars.com/kata/54ff3102c1bad923760001f3/train/sql

SELECT str, LENGTH(str) - LENGTH(TRANSLATE(str, 'aeiou', '')) AS res FROM getcount;