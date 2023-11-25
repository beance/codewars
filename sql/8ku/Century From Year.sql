-- Century From Year
-- https://www.codewars.com/kata/5a3fe3dde1ce0e8ed6000097
SELECT CEIL((yr - 1) / 100) + 1 AS Century
FROM years;