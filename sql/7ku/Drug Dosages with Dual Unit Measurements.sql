-- Drug Dosages with Dual Unit Measurements
-- https://www.codewars.com/kata/653f7207da59f62d2ee55035/train/sql

SELECT dr.record_id,
       dg.drug_name,
       dr.drug_amount,
       CONCAT(u1.unit_name, COALESCE('/' || u2.unit_name, '')) AS dose_units
FROM dose_records dr
         JOIN drugs dg ON dr.drug_id = dg.drug_id
         JOIN units u1 ON dr.drug_unit_id = u1.unit_id
         LEFT JOIN units u2 ON dr.check_unit_id = u2.unit_id
ORDER BY dg.drug_name ASC, dr.record_id ASC;