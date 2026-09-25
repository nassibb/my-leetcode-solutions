-- ======================================
-- LeetCode Problem: actors and directors who cooperated at least three times
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/
-- Synced by: LinkCode
-- Date: 9/25/2026, 1:47:58 PM
-- ======================================


# Write your MySQL query statement below
SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3
