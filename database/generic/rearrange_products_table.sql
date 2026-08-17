-- ======================================
-- LeetCode Problem: rearrange products table
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/rearrange-products-table/
-- Synced by: LinkCode
-- Date: 8/17/2026, 11:45:49 AM
-- ======================================


# Write your MySQL query statement below

select product_id, 'store1' as store,
store1 as price
FROM products 
WHERE store1 is NOT NULL
UNION
select product_id, 'store2' as store,
store2 as price
FROM products 
WHERE store2 is NOT NULL
UNION
select product_id, 'store3' as store,
store3 as price
FROM products 
WHERE store3 is NOT NULL
