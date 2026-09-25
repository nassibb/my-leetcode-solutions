-- ======================================
-- LeetCode Problem: project employees i
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/project-employees-i/
-- Synced by: LinkCode
-- Date: 9/25/2026, 3:20:22 PM
-- ======================================


# Write your MySQL query statement below
SELECT project_id, ROUND(AVG(experience_years), 2) AS average_years
FROM Project AS p JOIN Employee AS e
ON p.employee_id = e.employee_id
GROUP BY p.project_id
