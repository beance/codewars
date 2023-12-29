-- Leap Years
-- https://www.codewars.com/kata/526c7363236867513f0005ca/train/sql


SELECT year,
    CASE
        WHEN year % 100 = 0 AND year % 400 != 0 THEN FALSE
        WHEN year % 400 = 0 THEN TRUE
        WHEN year % 4 = 0 THEN TRUE
        ELSE FALSE
    END AS is_leap
FROM years
ORDER BY year ASC;