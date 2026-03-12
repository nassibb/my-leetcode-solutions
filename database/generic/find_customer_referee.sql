-- ======================================
-- LeetCode Problem: find customer referee
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/find-customer-referee/
-- Synced by: LinkCode
-- Date: 3/12/2026, 1:34:33 PM
-- ======================================


# Write your MySQL query statement below
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL


