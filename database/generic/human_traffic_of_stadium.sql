-- ======================================
-- LeetCode Problem: human traffic of stadium
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/human-traffic-of-stadium/
-- Synced by: LinkCode
-- Date: 9/5/2026, 6:57:38 PM
-- ======================================


# Write your MySQL query statement below
SELECT id, visit_date, people
FROM (
    SELECT *,
           id - ROW_NUMBER() OVER (ORDER BY id) AS grp
    FROM Stadium
    WHERE people >= 100) t
WHERE grp IN (
    SELECT grp
    FROM (
        SELECT id - ROW_NUMBER() OVER (ORDER BY id) AS grp
        FROM Stadium
        WHERE people >= 100) x
    GROUP BY grp
    HAVING COUNT(*) >= 3 )
ORDER BY visit_date;