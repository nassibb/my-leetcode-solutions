-- ======================================
-- LeetCode Problem: triangle judgement
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/triangle-judgement/
-- Synced by: LinkCode
-- Date: 3/22/2026, 9:44:33 AM
-- ======================================


# Write your MySQL query statement below
SELECT *,CASE 
WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
ELSE 'No'
END AS triangle
FROM Triangle



