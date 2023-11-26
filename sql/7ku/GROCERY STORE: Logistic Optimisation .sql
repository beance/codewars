-- GROCERY STORE: Logistic Optimisation
-- https://www.codewars.com/kata/5a8ec692b17101bfc70001ba/train/sql
SELECT COUNT(producer) AS count_products_types, producer
FROM products
GROUP BY producer
ORDER BY count_products_types DESC, producer ASC;