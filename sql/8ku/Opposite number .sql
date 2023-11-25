-- Opposite number
-- https://www.codewars.com/kata/56dec885c54a926dcd001095/train/sql
-- You will be given a table: "opposite", with a column: "number". Return a table with a column: "res".
SELECT -1 * number AS res
FROM opposite;