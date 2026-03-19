-- ======================================
-- LeetCode Problem: big countries
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/big-countries/
-- Synced by: LinkCode
-- Date: 3/18/2026, 11:16:50 PM
-- ======================================


# Write your MySQL query statement below
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000