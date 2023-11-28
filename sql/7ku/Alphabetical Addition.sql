-- Alphabetical Addition
-- https://www.codewars.com/kata/5d50e3914861a500121e1958
SELECT CASE
           WHEN SUM(ASCII(letter) - 96) % 26 = 0
               THEN 'z'
           WHEN SUM(ASCII(letter) - 96) <= 26
               THEN CHR(CAST(SUM(ASCII(letter) - 96) AS INT) + 96)
           WHEN SUM(ASCII(letter) - 96) > 26
               THEN CHR(CAST(SUM(ASCII(letter) - 96) % 26 AS INT) + 96)
           ELSE 'z'
           END
           AS letter
FROM letters;


-- or
SELECT COALESCE(CHR(((SUM(ASCII(letter) - 96))::int - 1) % 26 + 97), 'z') as letter
FROM letters