-- ======================================
-- LeetCode Problem: product sales analysis i
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/product-sales-analysis-i/
-- Synced by: LinkCode
-- Date: 9/25/2026, 2:59:46 PM
-- ======================================


# Write your MySQL query statement below
SELECT product_name, year, price
FROM Sales AS s LEFT JOIN Product AS p
ON s.product_id = p.product_id