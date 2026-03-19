-- ======================================
-- LeetCode Problem: classes with at least 5 students
-- Language: SQL (generic)
-- Link: https://leetcode.com/problems/classes-with-at-least-5-students/
-- Synced by: LinkCode
-- Date: 3/18/2026, 11:19:54 PM
-- ======================================


# Write your MySQL query statement below
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5