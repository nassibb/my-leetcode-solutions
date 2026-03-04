-- ======================================
-- LeetCode Problem: department highest salary
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/department-highest-salary/
-- Synced by: LinkCode
-- Date: 3/3/2026, 9:40:44 PM
-- ======================================


# Write your MySQL query statement below
SELECT d.name AS Department,e.name AS Employee, salary
FROM Employee AS e CROSS JOIN Department AS d
ON e.Departmentid = d.id 
WHERE (e.salary, e.departmentId) IN (
SELECT MAX(salary), departmentId
FROM Employee
GROUP BY departmentId);