-- ======================================
-- LeetCode Problem: average selling price
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/average-selling-price/
-- Synced by: LinkCode
-- Date: 10/6/2026, 9:32:53 PM
-- ======================================


# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT p.product_id, IFNULL(ROUND(SUM(units*price)/SUM(units),2),0) AS average_price
FROM Prices p LEFT JOIN UnitsSold u
ON p.product_id = u.product_id AND
u.purchase_date BETWEEN start_date AND end_date
group by product_id

