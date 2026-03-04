-- ======================================
-- LeetCode Problem: second highest salary
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/second-highest-salary/
-- Synced by: LinkCode
-- Date: 3/3/2026, 5:49:37 PM
-- ======================================


# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);



 