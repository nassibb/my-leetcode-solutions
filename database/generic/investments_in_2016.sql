-- ======================================
-- LeetCode Problem: investments in 2016
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/investments-in-2016/
-- Synced by: LinkCode
-- Date: 8/25/2026, 8:37:30 AM
-- ======================================


# Write your MySQL query statement below
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);