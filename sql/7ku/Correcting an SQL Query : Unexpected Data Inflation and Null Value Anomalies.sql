-- Correcting an SQL Query : Unexpected Data Inflation and Null Value Anomalies
-- https://www.codewars.com/kata/6565d16cec724304be564778/train/sql

SELECT topics.id,
       COALESCE(total_rating, 0) AS total_rating,
       COALESCE(total_visits, 0) AS total_visits
FROM topics
         LEFT JOIN (SELECT content_id, SUM(rating) AS total_rating
                    FROM votes
                    GROUP BY content_id) AS vote_counts ON vote_counts.content_id = topics.id
         LEFT JOIN (SELECT content_id, COUNT(id) AS total_visits
                    FROM visits
                    GROUP BY content_id) AS visit_counts ON visit_counts.content_id = topics.id
ORDER BY topics.id DESC;