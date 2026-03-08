-- ======================================
-- LeetCode Problem: game play analysis i
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/game-play-analysis-i/
-- Synced by: LinkCode
-- Date: 3/7/2026, 10:26:46 PM
-- ======================================


# Write your MySQL query statement below
SELECT player_id, MIN(event_date) AS first_login
FROM Activity 
GROUP BY player_id 
