-- ======================================
-- LeetCode Problem: not boring movies
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/not-boring-movies/
-- Synced by: LinkCode
-- Date: 7/1/2026, 4:30:25 PM
-- ======================================


# Write your MySQL query statement below
SELECT *
FROM Cinema
WHERE id % 2 != 0 
HAVING description NOT LIKE '%boring'
ORDER BY rating DESC
