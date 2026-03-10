-- ======================================
-- LeetCode Problem: rank scores
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/rank-scores/
-- Synced by: LinkCode
-- Date: 3/9/2026, 9:40:32 PM
-- ======================================


# Write your MySQL query statement below


SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM Scores 
