-- ======================================
-- LeetCode Problem: nth highest salary
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/nth-highest-salary/
-- Synced by: LinkCode
-- Date: 4/23/2026, 9:14:43 AM
-- ======================================


CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;
    RETURN (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT 1 OFFSET N
    );
END