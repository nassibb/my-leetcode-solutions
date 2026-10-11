-- ======================================
-- LeetCode Problem: list the products ordered in a period
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/list-the-products-ordered-in-a-period/
-- Synced by: LinkCode
-- Date: 10/10/2026, 7:58:28 PM
-- ======================================


# Write your MySQL query statement below
SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p 
JOIN Orders o
ON o.product_id=p.product_id
WHERE o.order_date like '2020-02-%'
GROUP BY o.product_id
HAVING unit>=100; 