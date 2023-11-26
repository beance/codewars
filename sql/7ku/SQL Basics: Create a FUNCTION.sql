-- SQL Basics: Create a FUNCTION
-- https://www.codewars.com/kata/580fe518cefeff16d00000c0/train/sql
CREATE FUNCTION INCREMENT(num INTEGER)
    RETURNS INTEGER AS
$$
SELECT num + 1;
$$ LANGUAGE SQL;