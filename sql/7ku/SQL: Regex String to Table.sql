-- SQL: Regex String to Table
-- https://www.codewars.com/kata/59413d53f5c3947364000016/train/sql
SELECT REGEXP_SPLIT_TO_TABLE(TEXT, '[aAeEiIoOuU]') AS results
FROM random_string;
