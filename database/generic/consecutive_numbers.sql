-- ======================================
-- LeetCode Problem: consecutive numbers
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/consecutive-numbers/
-- Synced by: LinkCode
-- Date: 3/10/2026, 1:14:07 PM
-- ======================================


# Write your MySQL query statement below
SELECT DISTINCT num AS ConsecutiveNums
FROM (
SELECT num, a.id - ROW_NUMBER() OVER (PARTITION BY num ORDER BY id) AS label
FROM Logs a
) bb
GROUP BY label, num
HAVING COUNT(ConsecutiveNums) >= 3
