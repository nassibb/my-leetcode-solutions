-- ======================================
-- LeetCode Problem: department top three salaries
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/department-top-three-salaries/
-- Synced by: LinkCode
-- Date: 3/4/2026, 6:08:02 PM
-- ======================================


# Write your MySQL query statement below
SELECT d.name AS Department,e.name AS Employee, salary AS Salary
FROM Employee AS e CROSS JOIN Department AS d
ON e.Departmentid = d.id 
WHERE 3 > (
  SELECT count(DISTINCT sd.salary) FROM Employee as sd
WHERE sd.salary>e.salary and sd.departmentId = e.departmentId )

