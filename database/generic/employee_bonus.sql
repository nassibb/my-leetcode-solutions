-- ======================================
-- LeetCode Problem: employee bonus
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/employee-bonus/
-- Synced by: LinkCode
-- Date: 3/12/2026, 1:30:09 PM
-- ======================================


# Write your MySQL query statement below
SELECT name, bonus
FROM Employee AS e LeFT JOIN Bonus AS b 
ON e.empId = b.empId
WHERE bonus < 1000 OR bonus IS null
