-- Fake Binary
-- https://www.codewars.com/kata/57eae65a4321032ce000002d/train/sql
SELECT x, TRANSLATE(x, '123456789', '000011111') AS res
FROM fakebin;