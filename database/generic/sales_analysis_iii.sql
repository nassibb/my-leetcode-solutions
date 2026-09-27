-- ======================================
-- LeetCode Problem: sales analysis iii
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/sales-analysis-iii/
-- Synced by: LinkCode
-- Date: 9/26/2026, 5:57:10 PM
-- ======================================


# Write your MySQL query statement below
SELECT p.product_id, p.product_name
FROM Product AS p JOIN Sales AS s
ON p.product_id = s.product_id
GROUP BY p.product_id,p.product_name
HAVING MIN(s.sale_date) >= '2019-01-01' AND MAX(s.sale_date) <= '2019-03-31'