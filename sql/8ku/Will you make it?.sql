-- Will you make it?
-- https://www.codewars.com/kata/5861d28f124b35723e00005e/train/sql
SELECT
    distance_to_pump, mpg, fuel_left,
    CASE
        WHEN mpg * fuel_left >= distance_to_pump THEN True
        ELSE False
    END as res
FROM zerofuel  