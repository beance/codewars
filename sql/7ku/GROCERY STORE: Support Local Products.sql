-- GROCERY STORE: Support Local Products
-- https://www.codewars.com/kata/5a8ed96bfd8c066e7f00011a/train/sql
SELECT COUNT(name) AS products, country
FROM products
WHERE country IN ('Canada', 'United States of America')
GROUP BY country
ORDER BY products DESC;

