-- ======================================
-- LeetCode Problem: consecutive numbers
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/consecutive-numbers/
-- Synced by: LinkCode
-- Date: 3/10/2026, 1:27:48 PM
-- ======================================


# Write your MySQL query statement below
SELECT DISTINCT num AS ConsecutiveNums
FROM (
SELECT num, a.id - ROW_NUMBER() OVER (PARTITION BY num ORDER BY id) AS groupy
FROM Logs AS a
) AS groupable_values_1_0_num
GROUP BY groupy, num
HAVING COUNT(ConsecutiveNums) >= 3
