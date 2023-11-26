-- SQL Basics: Simple JOIN
-- https://www.codewars.com/kata/5802e32dd8c944e562000020/train/sql
SELECT products.*, companies.name AS company_name
FROM products
         JOIN companies ON products.company_id = companies.id;