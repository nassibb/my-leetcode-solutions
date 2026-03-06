-- ======================================
-- LeetCode Problem: delete duplicate emails
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/delete-duplicate-emails/
-- Synced by: LinkCode
-- Date: 3/5/2026, 8:36:21 PM
-- ======================================


# Write your MySQL query statement below

DELETE FROM Person
WHERE id NOT IN (
SELECT MinID
FROM (
SELECT email, MIN(id) AS MinID
FROM Person
GROUP By email
) AS tp)