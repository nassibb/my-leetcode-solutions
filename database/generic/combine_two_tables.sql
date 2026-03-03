-- ======================================
-- LeetCode Problem: combine two tables
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/combine-two-tables/
-- Synced by: LinkCode
-- Date: 3/2/2026, 9:34:33 PM
-- ======================================


# Write your MySQL query statement below
SELECT firstName, lastName, city, state
FROM Person
LEFT JOIN Address 
USING (personId);
