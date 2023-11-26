-- Easy SQL: Moving Values
-- https://www.codewars.com/kata/594a389387a7c6a77a000005/train/sql
SELECT LENGTH(name)                      AS id,
       LENGTH(CAST(legs AS VARCHAR(30))) AS name,
       LENGTH(CAST(arms AS VARCHAR(30))) AS legs,
       LENGTH(characteristics)           AS arms,
       LENGTH(CAST(id AS VARCHAR(30)))   AS characteristics
FROM monsters;