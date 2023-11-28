-- SQL with Sailor Moon: Thinking about JOINs
-- https://www.codewars.com/kata/5ab7a736edbcfc8e62000007/train/sql
SELECT senshi_name   AS sailor_senshi,
       real_name_jpn AS real_name,
       cats.name     AS cat,
       school
FROM sailorsenshi
         LEFT JOIN cats ON cats.id = cat_id
         LEFT JOIN schools ON schools.id = school_id;