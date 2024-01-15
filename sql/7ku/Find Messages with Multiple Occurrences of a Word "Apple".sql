-- Find Messages with Multiple Occurrences of a Word "Apple"
-- https://www.codewars.com/kata/6532433d49d3ef6435de1928


SELECT *, POSITION('apple' IN regexp_replace(LOWER(message), 'apple', '*****')) AS second_occurrence_position
FROM messages
WHERE message ILIKE '%apple%apple%'
ORDER BY id DESC;