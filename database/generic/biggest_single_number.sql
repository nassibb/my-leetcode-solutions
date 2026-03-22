-- ======================================
-- LeetCode Problem: biggest single number
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/biggest-single-number/
-- Synced by: LinkCode
-- Date: 3/22/2026, 10:07:27 AM
-- ======================================


# Write your MySQL query statement below
SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN
(
SELECT *
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1
)
