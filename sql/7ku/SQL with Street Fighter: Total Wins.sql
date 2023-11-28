-- SQL with Street Fighter: Total Wins
-- https://www.codewars.com/kata/5ac698cdd325ad18a3000170/train/sql

SELECT name, SUM(won) AS won, SUM(lost) AS lost
FROM fighters
         INNER JOIN (SELECT *
                     FROM winning_moves
                     WHERE move NOT IN ('Hadoken', 'Shouoken', 'Kikoken')) winning_moves ON winning_moves.id = move_id
GROUP BY name
ORDER BY SUM(won) DESC
LIMIT 6;