-- SQL Basics - Trimming the Field
-- https://www.codewars.com/kata/59401c25c15cbeb58d000028/train/sql
SELECT id, name, SPLIT_PART(characteristics, ',', 1) AS characteristic
FROM monsters ORDER BY id;