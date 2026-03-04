-- ======================================
-- LeetCode Problem: customers who never order
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/customers-who-never-order/
-- Synced by: LinkCode
-- Date: 3/3/2026, 9:00:47 PM
-- ======================================


# Write your MySQL query statement below
SELECT name AS Customers
FROM Customers AS c LEFT JOIN Orders AS o
ON c.id = o.customerId
WHERE o.customerId IS NULL
