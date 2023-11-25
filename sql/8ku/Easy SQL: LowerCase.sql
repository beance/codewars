-- Easy SQL: LowerCase
-- https://www.codewars.com/kata/594800ba6fb152624300006d/train/sql
SELECT id, name, birthday, LOWER(race) as race
FROM demographics;