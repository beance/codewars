-- GROCERY STORE: Real Price!
-- https://www.codewars.com/kata/5a8f00745084d718940000c5/train/sql

SELECT name,
       weight,
       price,
       CAST(
               ROUND(CAST(price / (weight / 1000) AS NUMERIC), 2) AS FLOAT)
           AS price_per_kg
FROM products
ORDER BY price_per_kg, name;