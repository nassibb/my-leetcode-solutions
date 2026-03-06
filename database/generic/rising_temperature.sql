-- ======================================
-- LeetCode Problem: rising temperature
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/rising-temperature/
-- Synced by: LinkCode
-- Date: 3/5/2026, 10:41:48 PM
-- ======================================


# Write your MySQL query statement below
SELECT id FROM
(SELECT id,recordDate, temperature ,
  LAG(temperature) OVER (ORDER BY recordDate) AS previous,
  LAG(recordDate) OVER (ORDER BY recordDate) AS previousD
FROM Weather) AS w
WHERE w.temperature > w.previous AND DATEDIFF(w.recordDate, w.previousD) = 1


