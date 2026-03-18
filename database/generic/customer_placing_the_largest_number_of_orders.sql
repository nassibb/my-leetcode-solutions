-- ======================================
-- LeetCode Problem: customer placing the largest number of orders
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/
-- Synced by: LinkCode
-- Date: 3/17/2026, 10:32:30 PM
-- ======================================


# Write your MySQL query statement below
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC 
LIMIT 1