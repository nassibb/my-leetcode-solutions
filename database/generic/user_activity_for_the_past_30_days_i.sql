-- ======================================
-- LeetCode Problem: user activity for the past 30 days i
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
-- Synced by: LinkCode
-- Date: 9/26/2026, 6:21:08 PM
-- ======================================


# Write your MySQL query statement below
SELECT activity_date AS day ,COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE (activity_date <= '2019-07-27' AND activity_date > '2019-06-27')
GROUP BY activity_date;


