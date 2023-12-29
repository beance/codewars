-- Disemvowel Trolls
-- https://www.codewars.com/kata/52fba66badcd10859f00097e

SELECT str, TRANSLATE(str, 'aAeEiIoOuU', '') AS res FROM disemvowel;