-- Best-Selling Books (SQL for Beginners #5)
-- https://www.codewars.com/kata/591127cbe8b9fb05bd00004b
SELECT name, author, copies_sold
FROM books
ORDER BY copies_sold desc
LIMIT 5;