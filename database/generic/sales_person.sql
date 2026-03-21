-- ======================================
-- LeetCode Problem: sales person
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/sales-person/
-- Synced by: LinkCode
-- Date: 3/20/2026, 10:59:44 PM
-- ======================================


# Write your MySQL query statement below
SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (SELECT o.sales_id
    FROM Orders o
    LEFT JOIN Company c
    ON o.com_id = c.com_id
WHERE c.name ="RED")



