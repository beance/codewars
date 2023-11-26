-- Easy SQL: ASCII Converter
-- https://www.codewars.com/kata/594804a218e96caa8d00051b/train/sql
SELECT id, ascii(name) as name, birthday, ascii(race) AS race
FROM demographics;