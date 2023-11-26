-- SQL: Padding Encryption
-- https://www.codewars.com/kata/5943b797d8c9432eb7000066/train/sql
SELECT RPAD(md5, 64, '1') AS md5, LPAD(sha1, 64, '0') AS sha1, sha256
FROM encryption;