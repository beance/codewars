-- SQL with Pokemon: Damage Multipliers
-- https://www.codewars.com/kata/5ab828bcedbcfc65ea000099/train/sql
SELECT pokemon_name, multiplier * str AS modifiedStrength, element
FROM pokemon
         INNER JOIN multipliers ON multipliers.id = pokemon.element_id
WHERE multiplier * str >= 40
ORDER BY modifiedStrength DESC;