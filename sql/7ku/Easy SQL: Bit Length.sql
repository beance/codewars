-- Easy SQL: Bit Length
-- https://www.codewars.com/kata/594900e16fd782a607000059/train/sql
SELECT id, bit_length(name) as name, birthday, bit_length(race) AS race
FROM demographics;