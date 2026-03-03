-- ======================================
-- LeetCode Problem: duplicate emails
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/duplicate-emails/
-- Synced by: LinkCode
-- Date: 3/2/2026, 10:01:35 PM
-- ======================================


# Write your MySQL query statement below
SELECT Person.email as Email
FROM Person
GROUP BY email
HAVING COUNT(*) != 1