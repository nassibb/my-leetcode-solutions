-- ======================================
-- LeetCode Problem: swap sex of employees
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/swap-sex-of-employees/
-- Synced by: LinkCode
-- Date: 9/25/2026, 1:48:08 PM
-- ======================================


# Write your MySQL query statement below
UPDATE salary 
SET sex =
(CASE 
WHEN sex = 'f' THEN 'm'
ELSE 'f'
END)

