-- ======================================
-- LeetCode Problem: queries quality and percentage
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/queries-quality-and-percentage/
-- Synced by: LinkCode
-- Date: 10/2/2026, 2:07:14 PM
-- ======================================


# Write your MySQL query statement below
SELECT query_name, ROUND(AVG(rating/position), 2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name
