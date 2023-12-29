--  Calculating Next Fiscal Year-End Dates for UK Companies
-- https://www.codewars.com/kata/658ae4c7dc801726974dce76/train/sql

SELECT filing_date,
       fiscal_year_end,
       CASE
           WHEN EXTRACT(MONTH FROM filing_date) <  CAST(SUBSTRING(fiscal_year_end FROM 1 FOR 2) AS INTEGER) OR
                (EXTRACT(MONTH FROM filing_date) =  CAST(SUBSTRING(fiscal_year_end FROM 1 FOR 2) AS INTEGER) AND
                 EXTRACT(DAY FROM filing_date) < CAST(SUBSTRING(fiscal_year_end FROM 3) AS INTEGER))
               THEN TO_DATE(EXTRACT(YEAR FROM filing_date) || SUBSTRING(fiscal_year_end FROM 1 FOR 2) ||
                            SUBSTRING(fiscal_year_end FROM 3), 'YYYYMMDD')
           ELSE TO_DATE((EXTRACT(YEAR FROM filing_date) + 1) || SUBSTRING(fiscal_year_end FROM 1 FOR 2) ||
                        SUBSTRING(fiscal_year_end FROM 3), 'YYYYMMDD')
           END AS next_fiscal_year_end
FROM uk_company_filings
ORDER BY filing_date ASC, id DESC;

