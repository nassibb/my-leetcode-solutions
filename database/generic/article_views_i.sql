-- ======================================
-- LeetCode Problem: article views i
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/article-views-i/
-- Synced by: LinkCode
-- Date: 9/28/2026, 3:24:42 PM
-- ======================================


# Write your MySQL query statement below
SELECT author_id AS id
FROM Views
GROUP BY author_id, viewer_id 
HAVING (author_id = viewer_id) AND COUNT(*)  >= 1
ORDER BY id ASC
