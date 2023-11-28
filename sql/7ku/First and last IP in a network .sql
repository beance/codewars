-- First and last IP in a network
-- https://www.codewars.com/kata/5db5ff03d10bfa001da9cf2e/train/sql
SELECT id,
       NETWORK(ip_address)   AS first_address,
       BROADCAST(ip_address) AS last_address
FROM connections;