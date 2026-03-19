-- ======================================
-- LeetCode Problem: managers with at least 5 direct reports
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Synced by: LinkCode
-- Date: 3/19/2026, 8:59:13 AM
-- ======================================


# Write your MySQL query statement below

SELECT name
FROM Employee
WHERE id IN 
(SELECT managerId AS mm
FROM Employee
GROUP BY managerId
HAVING COUNT(managerId) >= 5)

