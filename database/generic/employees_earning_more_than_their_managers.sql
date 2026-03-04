-- ======================================
-- LeetCode Problem: employees earning more than their managers
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/
-- Synced by: LinkCode
-- Date: 3/3/2026, 8:48:03 PM
-- ======================================


# Write your MySQL query statement below
SELECT Employee.name AS Employee
FROM Employee
INNER JOIN Employee AS Manager
ON Employee.managerId =Manager.id
WHERE Employee.salary > Manager.salary


